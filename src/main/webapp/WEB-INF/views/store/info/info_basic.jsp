<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <title>워킹오더 매장관리자 페이지</title>

  <!-- Favicons -->
  <link href="resources/assets/images/admin/logo/logo_only.svg" rel="icon">
  <link href="resources/assets/images/admin/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="resources/assets/js/admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="resources/assets/js/admin/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="resources/assets/css/admin/style.css" rel="stylesheet">
  <link href="resources/assets/css/admin/style-responsive.css" rel="stylesheet">
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <style>
    /*기본정보변경 전체 css 추가*/
.wrapper {
    cursor: default;
    font-size: 14px;
    line-height: 21px;
    padding: 14px;
}
.box{
    width: 100%;
    float: left;
    margin-right: 25px;
}
.box li {
  color: black;
  font-size: 20px;
  font-weight: bolder;
  margin-top: 25px;
}

.box div {
  color: rgba(0, 0, 0, 0.664);
  font-size: 18px;
  margin-top: 5px;
}

.title {
    display: block;
    
    padding: 14px 0 15px 0;
    font-size: 25px;
    font-weight: bolder;
    margin-bottom: 10px;
    border-bottom: 1px solid;
}

ul {
    color: #666;
    list-style:square;
    padding: 0;
    margin-left: 20px;
    font-size: 12px;
}

.service_info:hover {
  cursor: pointer;
  color: #f56c4d;
}

.change_info {
  margin-left: 30px; 
  font-size: 15px; 
  border: 1px solid rgba(0, 0, 0, 0.562) ;
  padding: 5px;
  color : rgba(0, 0, 0, 0.562);
  border-radius: 5px;
}

.change_info:hover {
  background-color: #0a5c96;
  color: aliceblue;
}


.orange { color: #f56c4d; }

.blue{ color: #0a5c96; }

.green{ color: #89c527; }

.purple { color: #988CC3; }

.gold { color: #D8C86E; }

/*모달*/
.modalA{ 

  position:absolute; 
  width:100%; 
  height:100%; 
  background: rgba(0, 0, 0, 0.705); 
  top:0; 
  left:0; 
  display:none;
}


.modalA_content{
  width:400px; height:200px;
  background:rgba(255, 255, 255, 0.925); 
  border: 1px  solid rgba(0, 0, 0, 0.678);
  border-radius:5px;
  position:relative; top:50%; left:50%;
  margin-top:-200px; 
  margin-left:-200px;
  text-align:center;
  box-sizing:border-box; 
  padding:24px 0;
  line-height:23px; 

}

.modalB {
  position:absolute; 
  width:100%; 
  height:100%; 
  background: rgba(0, 0, 0, 0.705); 
  top:0; 
  left:0; 
  display:none;
}

.modalB_content{
  width:400px; height:300px;
  background:rgba(255, 255, 255, 0.925); 
  border: 1px  solid rgba(0, 0, 0, 0.678);
  border-radius:5px;
  position:relative; top:50%; left:50%;
  margin-top:-200px; 
  margin-left:-200px;
  text-align:center;
  box-sizing:border-box; 
  padding:5px 0;
  line-height:20px; 

}

.modalC {
  position:absolute; 
  width:100%; 
  height:100%; 
  background: rgba(0, 0, 0, 0.705); 
  top:0; 
  left:0; 
  display:none;
}

.modalC_content{
  width:400px; height:500px;
  background:rgba(255, 255, 255, 0.925); 
  border: 1px  solid rgba(0, 0, 0, 0.678);
  border-radius:5px;
  position:relative; top:50%; left:50%;
  margin-top:-200px; 
  margin-left:-200px;
  text-align:center;
  box-sizing:border-box; 
  padding:5px 0;
  line-height:20px; 

}

.UpdateBtn{
  margin-top: 20px;
  font-weight: bolder;
  font-size: 20px; 
  border: 1px solid rgba(0, 0, 0, 0.562) ;
  padding: 7px;
  color : rgba(0, 0, 0, 0.562);
  border-radius: 5px;
}

.UpdateBtn:hover {
  background-color: #f56c4d;
  border-color: #f56c4d;
  color: aliceblue;
}

.closeBtn {
  margin-top: 20px;
  font-weight: bolder;
  font-size: 20px; 
  border: 1px solid rgba(0, 0, 0, 0.562) ;
  padding: 7px;
  color : rgba(0, 0, 0, 0.562);
  border-radius: 5px;
}

.closeBtn:hover {
  background-color: #f56c4d;
  border-color: #f56c4d;
  color: aliceblue;
}

/*toggle버튼 css*/

#Toggle1{
  font-size:14px;
  color: #666;
}
#Toggle2{
  font-size:14px;
  color: #666;
}

.switch-button { 
  position: relative; 
  display: inline-block; 
  width: 55px; height: 30px; } 
  
  .switch-button input { opacity: 0; width: 0; height: 0; } 
  
  .onoff-switch { 
    position: absolute; cursor: pointer; 
    top: 0; left: 0; right: 0; bottom: 0; border-radius:20px; 
    background-color: #ccc; box-shadow: inset 1px 5px 1px #999; 
    -webkit-transition: .4s; transition: .4s; } 
    
    .onoff-switch:before { position: absolute; content: ""; 
    height: 22px; width: 22px; left: 4px; bottom: 4px; background-color: #fff; 
    -webkit-transition: .5s; transition: .4s; border-radius:20px; } 
    
    .switch-button input:checked + .onoff-switch { 
      background-color: #F2D522; box-shadow: inset 1px 5px 1px #E3AE56; } 
      
      .switch-button input:checked + .onoff-switch:before { 
        -webkit-transform: translateX(26px); -ms-transform: translateX(26px); transform: translateX(26px); 
      }
      
         /*toggle2버튼 css*/
  .switch-button2 { 
  position: relative; 
  display: inline-block; 
  width: 55px; height: 30px; } 
  
  .switch-button2 input { opacity: 0; width: 0; height: 0; } 
  
  .onoff-switch2 { 
    position: absolute; cursor: pointer; 
    top: 0; left: 0; right: 0; bottom: 0; border-radius:20px; 
    background-color: rgb(216, 68, 68); box-shadow: inset 1px 5px 1px rgb(168, 55, 55); 
    -webkit-transition: .4s; transition: .4s; } 
    
    .onoff-switch2:before { position: absolute; content: ""; 
    height: 22px; width: 22px; left: 4px; bottom: 4px; background-color: #fff; 
    -webkit-transition: .5s; transition: .4s; border-radius:20px; } 
    
    .switch-button2 input:checked + .onoff-switch2 { 
      background-color: #2283f2; box-shadow: inset 1px 5px 1px #1758a3; } 
      
      .switch-button2 input:checked + .onoff-switch2:before { 
        -webkit-transform: translateX(26px); -ms-transform: translateX(26px); transform: translateX(26px); 
      }     
      
  /*라디오버튼 css*/
.radio {
  margin: 0.5rem;
}
.radio input[type=radio] {
  position: absolute;
  opacity: 0;
}
.radio input[type=radio] + .radio-label:before {
  content: "";
  background: #f4f4f4;
  border-radius: 100%;
  border: 1px solid #b4b4b4;
  display: inline-block;
  width: 1.4em;
  height: 1.4em;
  position: relative;
  top: -0.2em;
  margin-right: 1em;
  vertical-align: top;
  cursor: pointer;
  text-align: center;
  transition: all 250ms ease;
}
.radio input[type=radio]:checked + .radio-label:before {
  background-color: #ee8c31;
  box-shadow: inset 0 0 0 4px #f4f4f4;
}
.radio input[type=radio]:focus + .radio-label:before {
  outline: none;
  border-color: #ee8c31;
}
.radio input[type=radio]:disabled + .radio-label:before {
  box-shadow: inset 0 0 0 4px #f4f4f4;
  border-color: #b4b4b4;
  background: #b4b4b4;
}
.radio input[type=radio] + .radio-label:empty:before {
  margin-right: 0;
}


  </style>
    
  <script>
   $(document).ready(function(){
	  if(document.getElementById('btn_toggle2').checked) {
		    document.getElementById('store_status').style.color="rgb(65, 63, 196)";
		    document.getElementById('store_status').textContent = '가게 영업중';
		   
		    
		  }else {
		    document.getElementById('store_status').style.color="rgb(238, 56, 56)";
		    document.getElementById('store_status').textContent = '영업 준비중';
		  }
	  
	  if(document.getElementById('fac_toggle').checked) {
		  document.getElementById('Toggle2').style.display ="block";
	  }else {
		  document.getElementById('Toggle2').style.display ="none";
	  }
	  
	  if(document.getElementById('toggle_special').checked) {
		  document.getElementById('Toggle3').style.display ="block";
	  }else {
		  document.getElementById('Toggle3').style.display ="none";
	  }
	  
  })
   
  
//modal js
function modal_a() {
  $(".modalA").fadeIn();
   
}

function close_modalA() {
  $(".modalA").fadeOut();
}
function modal_b() {
  $(".modalB").fadeIn();
   
}

function close_modalB() {
  $(".modalB").fadeOut();
}
function modal_c() {
  $(".modalC").fadeIn();
   
}

function close_modalC() {
  $(".modalC").fadeOut();
}


//영업중, 영업준비중 표시 si_status
function toggle_status() {
	var si_status = "n";
  if(document.getElementById('btn_toggle2').checked) {
	  document.getElementById('store_status').style.color="rgb(65, 63, 196)";
	  document.getElementById('store_status').textContent = '가게 영업중';  
    si_status="y";
    
  }else {
	  document.getElementById('store_status').style.color="rgb(238, 56, 56)";
	    document.getElementById('store_status').textContent = '영업 준비중';
    si_status="n";
  }
  
  var param = {"si_status" : si_status};
	console.log(param);
	 $.ajax({
		type:"POST",
		url: "/updateSiStatus.store",
      data: JSON.stringify(param),
      dataType: "json",
      contentType: "application/json",
      success:function(data){
      	Swal.fire({
	    	            icon: "success",
	    	            title: "수정완료",
	    	            showConfirmButton: false,
	    	            timer: 1500
	    	        });
      },error: function(data) {
      	console.log("가게영업상태 수정오류");
      }
	}); 
	
  
  
  
  
  
}

function toggle_park() {


  if(document.getElementById('park_toggle').checked) {
      
      document.getElementById('park_disable').textContent = '설정함';
    } else {
           
      document.getElementById('park_disable').textContent = '설정안함';
    }

}

function toggle_facility() {
  if(document.getElementById('fac_toggle').checked) {
      
      document.getElementById('facility_disable').textContent = '설정함';
      document.getElementById('Toggle2').style.display ="block";
    } else {
      document.getElementById('facility_disable').textContent = '설정안함';
      document.getElementById('Toggle2').style.display ="none";
    }
}

function toggle_speciall() {
	console.log("ffff");
	 if(document.getElementById('toggle_special').checked) {
		 document.getElementById('Toggle3').style.display = 'block';
	      document.getElementById('special_disable').textContent = '설정함';
	    } else {
	    	document.getElementById('Toggle3').style.display = 'none';     
	      document.getElementById('special_disable').textContent = '설정안함';
	    } 
	
}
	function update_tel(){
		var param = {"si_tel" : $("#si_tel").val()};
		console.log(param);
		 $.ajax({
			type:"POST",
			url: "/updateTel.store",
	        data: JSON.stringify(param),
	        dataType: "json",
	        contentType: "application/json",
	        success:function(data){
	        	Swal.fire({
		    	            icon: "success",
		    	            title: "전화번호 수정 완료",
		    	            showConfirmButton: false,
		    	            timer: 1500
		    	        });
	        	document.getElementById('si_tel_show').textContent = $("#si_tel").val();
	        
	        	$(".modalB").fadeOut(); 
	        },error: function(data) {
	        	console.log("추가오류");
	        }
		}); 
		
	}
	
	
	
	//가게편의정보변경 modal
	function update_comf() {
		//주차
		var si_parking_able = "y";
		if(document.getElementById('park_toggle').checked) {
			si_parking_able="y";
		}else{
			si_parking_able="n";
		}
		
		//기타시설(체크박스임)
		const query = 'input[name="Checkfac"]:checked';
		const selectedEls = document.querySelectorAll(query);
		
		let si_etc = '';
		selectedEls.forEach((el) => {
			si_etc += el.value + ",";
		})
		
		//특이사항
		var si_referinfo = "";
		if(document.getElementById('toggle_special').checked) {
			si_referinfo =  $("#si_referinfo_input").val();
		}

		
		//바로 보여주기위한!
		var show_park = "[불가능]";
		if(si_parking_able=='y') {
			show_park ="[가능]";
		}else {
			show_park ="[불가능]"
		}
		
		
		//보내기
		var param = {
				"si_parking_able" : si_parking_able,
				"si_etc" : si_etc,
				"si_referinfo" : si_referinfo
		}
		$.ajax({
			type:"POST",
			url: "/updatePyeon2.store",
	        data: JSON.stringify(param),
	        dataType: "json",
	        contentType: "application/json",
	        success:function(data){
	        	Swal.fire({
		    	            icon: "success",
		    	            title: "가게 편의정보 수정 완료",
		    	            showConfirmButton: false,
		    	            timer: 1500
		    	        });
	        	document.getElementById('park_able').textContent = show_park;
	        	document.getElementById('etc').textContent = si_etc;
	        	document.getElementById('referinfo').textContent = si_referinfo;
	        	$(".modalC").fadeOut();   
	        },error: function(data) {
	        	console.log("추가오류");
	        }
		});
		
		
	}


  </script>


</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    <%@ include file="../inc/store_header.jsp" %>
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a><img src=${fn:toLowerCase(storeSession.si_image) } class="img-circle" width="80"></a></p>
          <h5 class="centered">${storeSession.si_name}</h5>
          <p class="sidebar-title" >주문 확인</p>
          <li class="sub-menu">
            <a href="index.store">
              <i class="fa fa-h-square"></i>
              <span>HOME</span>
              </a>
          </li>
          <li class="sub-menu">
            <a id="store-manage" href="javascript:;">
              <i class="fa fa-group" style="font-size: 12px;"></i>
              <span>지난 주문</span>
              </a>
            <ul class="sub">
              <li><a id="store-mng" href="Ooneday.store">당일주문</a></li>
              <li><a id="store-menu" href="Operiod.store">기간주문</a></li>
            </ul>
          </li>
          
          <p class="sidebar-title" >Self Service</p>
          <li class="sub-menu">
            <a id="user-manage" href="reviews.store">
              <i class="fa fa-user" style="font-size: 15px;"></i>
              <span>&nbsp;리뷰관리</span>
              </a>
          </li>
          <li class="sub-menu">
            <a id="store-manage" href="javascript:;">
              <i class="fa fa-group" style="font-size: 12px;"></i>
              <span>메뉴 관리</span>
              </a>
            <ul class="sub">
              <li><a id="store-mng" href="CRUD.store">메뉴관리 (추가 / 수정)</a></li>
              <li><a id="store-menu" href="pumjeol.store">품절 관리</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a id="order-manage" class="active dcjq-parent" href="javascript:;">
              <i class="fa fa-shopping-cart"></i>
              <span>매장 정보 관리</span>
              </a>
            <ul class="sub">
              <li><a class="active"  id="total-order" href="basic.store">기본정보 변경</a></li>
              <li><a id="store-order" href="manage.store">운영 정보 변경</a></li>
             </ul>
          </li>
          
          <p class="sidebar-title" >정산</p>
          <li class="sub-menu">
            <a id="settlement" href="javascript:;">
              <i class=" fa fa-krw"></i>
              <span>정산</span>
              </a>
            <ul class="sub">
              <li><a id="pg-comm" href="SOneday.store">오늘 매출</a></li>
              <li><a id="pg-stlmt" href="SPeriod.store">기간 매출 정산</a></li>
             
            </ul>
          </li>
          
          
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->



    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
     
      <section class="wrapper" style="height: 1500px;">
       <div class="col-lg-12">
      <div class="card-header" style="padding-top: 20px; font-size: 20px; background-color: rgb(255, 255, 255); border-radius: 10px;">
        기본 정보 변경
      </div>
    </div>


          <div class="col-lg-12" style="min-width: 500px; ">
            <div class="form-panel" style="margin-top:0;  border-radius: 0 0 10px 10px;">
              <form class="form-horizontal style-form" method="get">
                <div class="row content-panel" style="border: none; box-shadow: none;padding: 0;margin:0 5px">
                  
                  <!-- /panel-heading -->
                  <div class="panel-body col-lg-12" style="padding: 0 11px 11px 11px;">
					  <div>
                      <span class="title" style="margin-top: 30px; background-color: rgba(33, 31, 145, 0.158); color:rgb(65, 63, 196); padding:30px; border-radius: 5px; border-bottom:0;">
                        <div class="row">
                          <div class="col-lg-3" id="store_status" style="margin-top: 5px;">
                        가게 영업중
                      </div>
                      <div class="col-lg-6">
                      <label  class="switch-button2" >  
                       
                        <input type="checkbox" id="btn_toggle2" onclick="toggle_status()" 
                        	<c:choose>
                      	<c:when test="${storeSession.si_status eq true}">
                      	checked
                      	</c:when>
                      	<c:otherwise>
                      	</c:otherwise>
                      </c:choose>
                        /> 
                        <span class="onoff-switch2"></span> 
                        
                      </label>
                    </div>
                    
                    
                    </div>
                    </span> 

                    <div class="box blue">
                      <span class="title">가게정보 <a class="service_info" style="font-size: 13px; margin-left: 30px;" onclick="modal_a()" >변경요청은 고객센터로 문의해주세요</a></span>
                      <ul> 
                          <li>로고</li>
                          <img src=${fn:toLowerCase(storeSession.si_image) } style="width: 100px; height: 100px;">
                          <li>가게 이름</li>
                            <div>${storeSession.si_name }</div>
                          <li>가게 코드(사업자등록번호)</li>
                            <div>${storeSession.si_code }</div>
                          <li>가게 위치</li>
                            <div>${storeSession.si_addr_road }, ${storeSession.si_addr_detail }</div>
                         
                      </ul>
                  </div>
                  <!--모달1-->
                  <div class="modalA">
                    <div class="modalA_content">
                      <h2 style="font-size: 20px; color: black;">고객센터 전화번호 안내</h2>
                      <div style="font-size: 30px; font-weight: bolder; color: black;"> 1577-1577 </div>
                      
                      <div>
                      <button type="button" class="closeBtn" onclick="close_modalA()" >닫기</button>
                    </div>
                    </div>
                  </div>
                  <!--모달1 end-->


                  <div class="box orange">
                      <span class="title" style="margin-top: 30px;">가게 전화번호 <a class="change_info" onclick="modal_b()" >변경하기</a></span> 
                      <ul> 
                          <li id="si_tel_show">${storeSession.si_tel }</li> 
                          
                      </ul>
                  </div>
                  <!--모달2-->
                  <div class="modalB">
                    <div class="modalB_content">
                      <h2 style="font-size: 20px; color: black; border-bottom: 1px solid rgba(0, 0, 0, 0.575); padding-bottom: 20px;">가게 전화번호</h2>
                      <div style="font-size: 15px; font-weight: bolder; margin-top: 60px; color: black; text-align: left; margin-left: 44px;">대표번호</div>
                      <input class="form-control" id="si_tel" type="text" value=" ${storeSession.si_tel }"  style="width: 50%; margin-left: 40px; margin-top: 5px;">
                     
                      <div>
                       <div class="row" style="margin-top: 30px;">
                         <div class="col-lg-6"></div>
                         <div class="col-lg-3" style="text-align: right;">
                          <button type="button" class="UpdateBtn" onclick="update_tel()" >수정</button>
                         </div>
                        <div class="col-lg-3" style="text-align: left;">
                          <button type="button" class="closeBtn" onclick="close_modalB()" >닫기</button>
                        </div>
                       </div> 
                      
                    </div>
                    </div>
                  </div>
                  <!--모달2 end-->

                  <div class="box green">
                      <span class="title" style="margin-top: 30px;">가게 편의정보 <a class="change_info" onclick="modal_c()">변경하기</a></span> 
                      <ul> 
                          <li>주차</li>
                          <div id="park_able">
                          <c:choose>
                          	<c:when test="${storeSession.si_parking_able eq false}">
                          	[불가능]
                          	</c:when>
                          	<c:otherwise>
                          	[가능]
                          	</c:otherwise>
                          </c:choose>
                          </div>
                           <li>기타시설</li>
                            <div id="etc">${storeSession.si_etc }</div> 
                          <li>특이사항</li>
                            <div id="referinfo">${storeSession.si_referinfo }</div> 
                      </ul>
                  </div>
                  
                  <!--모달3-->
                  <div class="modalC" >
                    <div class="modalC_content" style="height: auto;">
                      <h2 style="font-size: 20px; color: black; border-bottom: 1px solid rgba(0, 0, 0, 0.575); padding-bottom: 20px;">가게 편의정보</h2>
                      
                      <div class="row" style="margin-top: 60px; margin-left: 30px; ">
                        <div class="col-lg-3">
                      <div style="font-size: 15px; font-weight: bolder;  color: black; text-align: left; ">주차</div>
                    </div>
                    <div class="col-lg-6" style="text-align: right;">
                      <span id="park_disable" style="font-size: 13px; color: rgb(26, 25, 25);">
                      <c:choose>
                      <c:when test="${storeSession.si_parking_able eq true}">
                      설정함</span>
                       <label  class="switch-button">  
                        <input type="checkbox" id="park_toggle" name="park_toggle" onclick="toggle_park()" checked/> 
                      </c:when>
                      <c:otherwise>
                      설정안함</span>
                       <label  class="switch-button">  
                        <input type="checkbox" id="park_toggle" name="park_toggle" onclick="toggle_park()" /> 
                      </c:otherwise>
                      </c:choose>
                     
                     
                        <span class="onoff-switch"></span> 
                      </label>
                    </div>
                      </div>

                                                               
 <!--                        <div class="container" id ="Toggle1" style="text-align: left; display: none;">
                          <div class="radio" style="padding: 0;">
                            <input id="radio-1" name="radio" type="radio" checked>
                            <label for="radio-1" class="radio-label">무료</label>
                          </div>
                        
                          <div class="radio">
                            <input id="radio-2" name="radio" type="radio">
                            <label for="radio-2" class="radio-label">유료</label>
                          </div>

                        </div> -->

                        <div class="row" style="margin-top: 60px; margin-left: 30px; ">
                          <div class="col-lg-3">
                        <div style="font-size: 15px; font-weight: bolder;  color: black; text-align: left; ">기타시설</div>
                      </div>
                      <div class="col-lg-6" style="text-align: right;">
                        <span id="facility_disable" style="font-size: 13px; color: rgb(26, 25, 25);">
                        
                        <c:choose>
                      <c:when test="${storeSession.si_etc eq ''}">
                      설정안함</span>
                       <label  class="switch-button">  
                         <input type="checkbox" id="fac_toggle" onclick="toggle_facility()"  /> 
                      </c:when>
                      <c:otherwise>
                      설정함</span>
                       <label  class="switch-button">  
                         <input type="checkbox" id="fac_toggle" onclick="toggle_facility()"  checked/> 
                      </c:otherwise>
                      </c:choose>
                         <span class="onoff-switch"></span> 
                        </label>
                      </div>
                        </div>

                        <!--기타시설 체크박스 -->
                      <div class="facility" id="Toggle2" style="display: none;">
                      <div class="row" style="margin-left: 44px; text-align: left;" >
                      <label class="checkbox-inline">
                        <input type="checkbox" name="Checkfac" id="room" value="룸" 
                        	<c:if test="${fn:contains(storeSession.si_etc,'룸')}">
                        	checked
                        	</c:if>
                        > 룸
                      </label>
                      <label class="checkbox-inline">
                        <input type="checkbox" name="Checkfac" id="seat" value="좌석"
                        <c:if test="${fn:contains(storeSession.si_etc,'좌석')}">
                        	checked
                        	</c:if>
                        > 좌석
                      </label>
                      <label class="checkbox-inline">
                        <input type="checkbox" name="Checkfac" id="danche" value="단체석"
                        <c:if test="${fn:contains(storeSession.si_etc,'단체석')}">
                        	checked
                        	</c:if>
                        > 단체석
                      </label>
                    </div>
                    <div class="row" style="margin-left: 44px; text-align: left;">
                      <label class="checkbox-inline">
                        <input type="checkbox" name="Checkfac" id="wifi" value="무선인터넷"
                        <c:if test="${fn:contains(storeSession.si_etc,'무선인터넷')}">
                        	checked
                        	</c:if>
                        > 무선인터넷
                      </label>
                    
                      <label class="checkbox-inline" >
                        <input type="checkbox" name="Checkfac" id="childChair" value="유아용 의자" 
                        <c:if test="${fn:contains(storeSession.si_etc,'유아용 의자')}">
                        	checked
                        	</c:if>
                        > 유아용 의자
                      </label>

                    </div>
                    <div class="row" style="margin-left: 44px; text-align: left;">
                      <label class="checkbox-inline">
                        <input type="checkbox" name="Checkfac" id="jangfacility" value="장애인 편의시설"
                        
                        <c:if test="${fn:contains(storeSession.si_etc,'장애인 편의시설')}">
                        	checked
                        	</c:if>> 장애인 편의시설
                      </label>
                      <label class="checkbox-inline" >
                        <input type="checkbox" name="Checkfac" id="pat" value="반려동물 동반" 
                        <c:if test="${fn:contains(storeSession.si_etc,'반려동물 동반')}">
                        	checked
                        	</c:if>
                        > 반려동물 동반
                      </label>
                    </div>
                    </div>
                    <!--기타시설 체크박스 end-->
                    
                    <div class="row" style="margin-top: 60px; margin-left: 30px; ">
                          <div class="col-lg-3">
                        <div style="font-size: 15px; font-weight: bolder;  color: black; text-align: left; ">특이사항</div>
                      </div>
                      
                      <div class="col-lg-6" style="text-align: right;">
                        <span id="special_disable" style="font-size: 13px; color: rgb(26, 25, 25);">
                        <c:choose>
                        <c:when test="${storeSession.si_referinfo eq ''}">
                        설정안함</span>
                        <label  class="switch-button">  
                        <input type="checkbox" id="toggle_special" onclick="toggle_speciall()" />
                        
                        </c:when>
                        <c:otherwise>
                        설정함</span>
                        <label  class="switch-button">  
                        <input type="checkbox" id="toggle_special" onclick="toggle_speciall()" checked/>
                        
                        
                        </c:otherwise>
                        </c:choose>
                        
                        
                        <span class="onoff-switch"></span> 
                        </label>
                      </div>
                        </div>
                        <div id="Toggle3" style="display:none; text-align:left;">
                        	
                      <input class="form-control" type="text" id="si_referinfo_input" value="${storeSession.si_referinfo}" style="width: 50%; margin-left: 40px; margin-top: 5px;">
                     	 
                        </div>
                        
                       <div class="row" style="margin-top: 30px;">
                         <div class="col-lg-6"></div>
                         <div class="col-lg-3" style="text-align: right;">
                          <button type="button" class="UpdateBtn" onclick="update_comf()" >수정</button>
                         </div>
                        <div class="col-lg-3" style="text-align: left;">
                          <button type="button" class="closeBtn" onclick="close_modalC()" >닫기</button>
                        </div>
                       </div> 
                      
                    
                    </div>
                  </div>
                  <!--모달3 end-->
                  
                
                  </div>

                </div>


              </form>
            </div>

          </div>
      </section>

      
        
    
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->



    <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights <strong>WalkingOrder</strong>. All Rights Reserved
        </p>
        <a href="../index.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  

  <script src="resources/assets/js/admin/bootstrap/js/bootstrap.min.js"></script>
  <script src="resources/assets/js/admin/jquery-ui-1.9.2.custom.min.js"></script>
  <script src="resources/assets/js/admin/jquery.ui.touch-punch.min.js"></script>
  <script class="include" type="text/javascript" src="resources/assets/js/admin/jquery.dcjqaccordion.2.7.js"></script>
  <script src="resources/assets/js/admin/jquery.scrollTo.min.js"></script>
  <script src="resources/assets/js/admin/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="resources/assets/js/admin/common-scripts.js"></script>
  <!--script for this page-->
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>


</body>

</html>
  