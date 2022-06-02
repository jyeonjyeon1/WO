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
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
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
  width:700px; height:500px;
  background:rgba(255, 255, 255, 0.925); 
  border: 1px  solid rgba(0, 0, 0, 0.678);
  border-radius:5px;
  position:relative; top:50%; left:50%;
  margin-top:-200px; 
  margin-left:-300px;
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

      /*주말 평일 동일 / 별도 선택 */
  .weekweek input[type="radio"] {
        display: none;
    }
 
    .weekweek input[type="radio"] + span {
        display: inline-block;
        padding: 15px 10px;
        border: 1px solid #dfdfdf;
        background-color: #113a6b4b;
        text-align: center;
        cursor: pointer;
    }
 
    .weekweek input[type="radio"]:checked + span {
        background-color: #113a6b;
        color: #ffffff;
    }



  </style>
    
  <script>

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


//toggle버튼 기능구현

function toggle_gong(){

  if(document.getElementById('btn_toggle').checked) {
      
      document.getElementById('gong_disable').textContent = '설정함';
    } else {
           
      document.getElementById('gong_disable').textContent = '설정안함';
    }
}

function toggle_fix(){

	  if(document.getElementById('btn_toggle2').checked) {
	      
	      document.getElementById('fix_disable').textContent = '설정함';
	    } else {
	           
	      document.getElementById('fix_disable').textContent = '설정안함';
	    }
	}
	
	
function toggle_imsi(){

	  if(document.getElementById('btn_toggle3').checked) {
	      
	      document.getElementById('imsi_disable').textContent = '설정함';
	      document.getElementById('imsi_date').style.display = "block";
	      
	    } else {
	           
	      document.getElementById('imsi_disable').textContent = '설정안함';
	      document.getElementById('imsi_date').style.display = "none";
	    }
	}


function toggle_fix(){

	  if(document.getElementById('btn_toggle2').checked) {
	      
	      document.getElementById('fix_disable').textContent = '설정함';
	      document.getElementById('fix_date').style.display = "block";
	      
	    } else {
	           
	      document.getElementById('fix_disable').textContent = '설정안함';
	      document.getElementById('fix_date').style.display = "none";
	    }
	}

function samesame() {
 document.getElementById("same_content").style.display="block";
 document.getElementById("diff_content").style.display="none";
}
function diffdiff(){
  document.getElementById("diff_content").style.display="block";
  document.getElementById("same_content").style.display="none";
}


function updateAllday() {
	
	console.log("ffff");
	
	var si_Allday = "y";
	var si_openA = $("#si_openA").val();
	var si_closeA = $("#si_closeA").val(); 
	var si_openW = $("#si_openW").val();
	var si_closeW = $("#si_closeW").val();
	var si_openSat = $("#si_openSat").val();
	var si_closeSat = $("#si_closeSat").val();
	var si_openSun = $("#si_openSun").val();
	var si_closeSun = $("#si_closeSun").val();
	
	if(document.getElementById('same').checked) {
		si_Allday = "y";
	}else if(document.getElementById('diff').checked) {
		si_Allday = "n";
	}
	
	var param = { 
		"si_Allday" : si_Allday,
		"si_openA" : si_openA,
		"si_closeA" : si_closeA,
		"si_openW" :  si_openW,
		"si_closeW" : si_closeW,
		"si_openSat" : si_openSat,
		"si_closeSat" : si_closeSat,
		"si_openSun" : si_openSun,
		"si_closeSun" : si_closeSun
	}
	
	console.log(param);
	  $.ajax({
		type:"POST",
		url: "/updateAllday.store",
     data: JSON.stringify(param),
     dataType: "json",
     contentType: "application/json",
     success:function(data){
     	Swal.fire({
	    	            icon: "success",
	    	            title: "영업시간 수정완료",
	    	            showConfirmButton: false,
	    	            timer: 1500
	    	        });
     	if(si_Allday=="y") {
     		document.getElementById('same111').style.display ="block";
     		document.getElementById('same222').style.display ="none";
     		document.getElementById('A_show').textContent = si_openA +"~"+ si_closeA;
     		
     	}else {
     		document.getElementById('same111').style.display ="none";
     		document.getElementById('same222').style.display ="block";
     		document.getElementById('W_show').textContent = si_openW +"~"+ si_closeW;
     		document.getElementById('Sat_show').textContent = si_openSat+"~"+ si_closeSat;
     		document.getElementById('Sun_show').textContent = si_openSun +"~"+ si_closeSun;
     		
     	}
     	  $(".modalA").fadeOut();
     	
     },error: function(data) {
     	console.log("가게영업시간 수정오류");
     }
	});  
	
	
}


function update_holiday(){
	var si_holiday_gong ="";
	var si_holiday_fix="";
	var si_holiday_imsi="";
	

	if(document.getElementById('btn_toggle').checked) {
		si_holiday_gong="y";
	}else {
		si_holiday_gong="n";
	}
	
	if(document.getElementById('btn_toggle2').checked) {
		si_holiday_fix=$("#holiday_fixSelect option:selected").val();
	}else {
		si_holiday_fix="";
	}
	
	
	if(document.getElementById('btn_toggle3').checked) {
		si_holiday_imsi=$('#holiday_imsi_date').val();
	}else {
		si_holiday_imsi="";
	}
	
	var param = { 
			"si_holiday_gong" : si_holiday_gong,
			"si_holiday_fix" : si_holiday_fix,
			"si_holiday_imsi" : si_holiday_imsi
		}
	
	
	console.log(si_holiday_gong+"/"+si_holiday_fix+"/"+si_holiday_imsi);
	
	
	
	   $.ajax({
			type:"POST",
			url: "/updateHoliday.store",
	     data: JSON.stringify(param),
	     dataType: "json",
	     contentType: "application/json",
	     success:function(data){
	     	Swal.fire({
		    	            icon: "success",
		    	            title: "영업시간 수정완료",
		    	            showConfirmButton: false,
		    	            timer: 1500
		    	        });
	     	if(document.getElementById('btn_toggle').checked) {
	     		document.getElementById('holiday_gong_show').textContent = "[설정함]";
	     	}else {
	     		document.getElementById('holiday_gong_show').textContent = "[설정안함]";
	     	}
	     	if(document.getElementById('btn_toggle2').checked) {
	     		document.getElementById('holiday_fix_show').textContent = si_holiday_fix;
	     	}else {
	     		document.getElementById('holiday_fix_show').textContent="";
	     	}
	     	if(document.getElementById('btn_toggle3').checked) {
	     		document.getElementById('holiday_imsi_show').textContent = si_holiday_imsi;
	     	}else {
	     		document.getElementById('holiday_imsi_show').textContent ="";
	     	}
	     	  $(".modalB").fadeOut();
	     	
	     	
	     },error: function(data) {
	     	console.log("가게영업시간 수정오류");
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
          <p class="centered"><a><img src="${storeSession.si_image}" class="img-circle" width="80"></a></p>
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
              <li><a id="total-order" href="basic.store">기본정보 변경</a></li>
              <li><a class="active" id="store-order" href="manage.store">운영 정보 변경</a></li>
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
       운영 정보 변경
      </div>
    </div>


          <div class="col-lg-12" style="min-width: 500px; ">
            <div class="form-panel" style="margin-top:0;  border-radius: 0 0 10px 10px;">
              <form class="form-horizontal style-form" method="get">
                <div class="row content-panel" style="border: none; box-shadow: none;padding: 0;margin:0 5px">
                  
                  <!-- /panel-heading -->
                  <div class="panel-body col-lg-12" style="padding: 0 11px 11px 11px;">


                    <div class="box purple">
                      <span class="title">영업시간 <a class="change_info" onclick="modal_a()" >변경하기</a></span>
                      <c:choose>
                      <c:when test="${storeSession.si_Allday==true}">
                      <ul id="same111" style="display:block;"> 
                        <li style="font-size: 30px; color: #0a4670; background-color: rgba(149, 117, 235, 0.336); width: fit-content; padding: 15px; border-radius: 5px;">[평일/주말 동일]</li>
                           <li>매일</li>
                         <div id="A_show">${storeSession.si_openA} ~ ${storeSession.si_closeA}</div>
                         
                      </ul>
                      <ul id="same222" style="display:none;"> 
                        <li style="font-size: 30px; color: #0a4670; background-color: rgba(149, 117, 235, 0.336); width: fit-content; padding: 15px; border-radius: 5px; ">[평일/주말 별도]</li>
                          <li>월~금</li>
                         <div id="W_show">${storeSession.si_openW} ~ ${storeSession.si_closeW}</div>
                          <li>토요일</li>
                            <div id="Sat_show">${storeSession.si_openSat} ~ ${storeSession.si_closeSat}</div>
                          <li>일요일</li>
                            <div id="Sun_show">${storeSession.si_openSun} ~ ${storeSession.si_closeSun}</div>
                      </ul>
                      </c:when>
                      <c:otherwise>
                         <ul id="same111" style="display:none;"> 
                        <li style="font-size: 30px; color: #0a4670; background-color: rgba(149, 117, 235, 0.336); width: fit-content; padding: 15px; border-radius: 5px;">[평일/주말 동일]</li>
                           <li>매일</li>
                         <div>${storeSession.si_openA} ~ ${storeSession.si_closeA}</div>
                         
                      </ul>
                      <ul id="same222" style="display:block;"> 
                        <li style="font-size: 30px; color: #0a4670; background-color: rgba(149, 117, 235, 0.336); width: fit-content; padding: 15px; border-radius: 5px; ">[평일/주말 별도]</li>
                          <li>월~금</li>
                         <div>${storeSession.si_openW} ~ ${storeSession.si_closeW}</div>
                          <li>토요일</li>
                            <div>${storeSession.si_openSat} ~ ${storeSession.si_closeSat}</div>
                          <li>일요일</li>
                            <div>${storeSession.si_openSun} ~ ${storeSession.si_closeSun}</div>
                      </ul>
                      </c:otherwise>
                      </c:choose>
                      
                      
                      

                    
                  </div>
                  <!--모달1-->
                  <div class="modalA">
                    <div class="modalA_content" style="height: auto;">
                      <h2 style="font-size: 20px; color: black; border-bottom: 1px solid rgba(245, 163, 163, 0.575); padding-bottom: 20px;">영업시간</h2>
                      



                      <label class="weekweek" onclick="samesame()">
                        <input type="radio" id="same" name="week" value="same" checked>
                        <span>평일/주말 동일</span>
                    </label>
                     
                    <label class="weekweek" onclick="diffdiff()">
                        <input type="radio" id="diff" name="week" value="diff">
                        <span>평일/주말 별도</span>
                    </label>

                    <!--평일 주말 동일 -->
                    <div class="container" id="same_content" style="display: none;">
                    <div class="row">
                      <h4 style="color: black; text-align: left; padding-left: 20px; font-weight: bolder;">매일</h4>
                    </div>
                  
                    <div class="row" style="max-width: 700px; text-align: left; margin-left: 15px;">
                      
                        <input class="form-control round-form" name="si_openA" id="si_openA" type="time"
                          value=""
                          style="width: 20%; display: inline-block; margin:0 ">
                        ~ <input class="form-control round-form" name="si_closeA" id="si_closeA" type="time"
                          value=""
                          style="width: 20%; display: inline-block; margin: 0;">
                      
                    </div>
                 
                  </div>




                    <!--평일 주말 별도-->
                    <div class="container" id="diff_content"  style="display: none;">
                    <div class="row">
                      <h4 style="color: black; text-align: left;  padding-left: 20px;  font-weight: bolder;">월~금</h4>
                    </div>
                    
                    <div class="row" style="max-width: 700px; text-align: left; margin-left: 15px;">
                      
                      <input class="form-control round-form" name="si_openW" id="si_openW" type="time"
                        value=""
                        style="width: 20%; display: inline-block; margin:0 ">
                      ~ <input class="form-control round-form" name="si_closeW" id="si_closeW" type="time"
                        value=""
                        style="width: 20%; display: inline-block; margin: 0;">
                    
                  </div>

                  <div class="row">
                    <h4 style="color: black; text-align: left;  padding-left: 20px;  font-weight: bolder;">토요일</h4>
                  </div>
                  
                  <div class="row" style="max-width: 700px; text-align: left; margin-left: 15px;">
                    
                    <input class="form-control round-form" name="si_openSat" id="si_openSat" type="time"
                      value=""
                      style="width: 20%; display: inline-block; margin:0 ">
                    ~ <input class="form-control round-form" name="si_closeSat" id="si_closeSat" type="time"
                      value=""
                      style="width: 20%; display: inline-block; margin: 0;">
                  
                </div>
                <div class="row">
                  <h4 style="color: black; text-align: left;  padding-left: 20px;  font-weight: bolder;">일요일</h4>
                </div>
                
                <div class="row" style="max-width: 700px; text-align: left; margin-left: 15px;">
                  
                  <input class="form-control round-form" name="si_openSun" id="si_openSun" type="time"
                    value=""
                    style="width: 20%; display: inline-block; margin:0 ">
                  ~ <input class="form-control round-form" name="si_closeSun" id="si_closeSun" type="time"
                    value=""
                    style="width: 20%; display: inline-block; margin: 0;">
                
              </div>

                  </div> 

                      <div>
                       <div class="row" style="margin-top: 30px;">
                         <div class="col-lg-6"></div>
                         <div class="col-lg-3" style="text-align: right;">
                          <button type="button" class="UpdateBtn" onclick="updateAllday()" >수정</button>
                         </div>
                        <div class="col-lg-3" style="text-align: left;">
                          <button type="button" class="closeBtn" onclick="close_modalA()" >닫기</button>
                        </div>
                       </div> 
                      
                    </div>
                    </div>
                  </div>
                  <!--모달1 end-->


                  <div class="box orange">
                      <span class="title" style="margin-top: 30px;">휴무일 <a class="change_info" onclick="modal_b()" >변경하기</a></span> 
                      <ul> 
                          <li>공휴일</li> 
                          <div id="holiday_gong_show">
                          <c:choose>
                          <c:when test="${storeSession.si_holiday_gong}">
                          [설정함]
                          </c:when>
                          <c:otherwise>
                          [설정안함]
                          </c:otherwise>
                          </c:choose>
                         </div>
                          <li>정기휴무</li> 
                          <div id="holiday_fix_show">
                          매주 ${storeSession.si_holiday_fix}
                          </div>
                          <li>임시휴무</li> 
                          <div id="holiday_imsi_show">${storeSession.si_holiday_imsi}</div>
                          
                      </ul>
                  </div>
                  <!--모달2-->
                  <div class="modalB">
                    <div class="modalB_content" style="height: auto;">
                      <h2 style="font-size: 20px; color: black; border-bottom: 1px solid rgba(0, 0, 0, 0.575); padding-bottom: 20px;">휴무일</h2>
                      
                      
                      <div class="row" style="margin-top: 60px; margin-left: 30px; ">
                        <div class="col-lg-3">
                      <div style="font-size: 15px; font-weight: bolder;  color: black; text-align: left; margin-top: 5px; ">공휴일</div>
                      
                    </div>
                    <div class="col-lg-6" style="text-align: right;">
                      <span id="gong_disable" style="font-size: 13px; color: rgb(26, 25, 25);">
                      <c:choose>
                      <c:when test="${storeSession.si_holiday_gong}">
                      설정함
                      </c:when>
                      <c:otherwise>
                      설정안함
                      </c:otherwise>
                      </c:choose>
                      
                      
                      </span>
                      <label  class="switch-button">  
                       
                        <input type="checkbox" id="btn_toggle" onclick="toggle_gong()"   
                        <c:if test="${storeSession.si_holiday_gong}">
                    	checked
                    	</c:if>
                        /> 
                        <span class="onoff-switch"></span> 
                      </label>
                    </div>
                      </div>

                         

                         <div class="row" style="margin-top: 60px; margin-left: 30px; ">
                          <div class="col-lg-3">
                        <div style="font-size: 15px; font-weight: bolder;  color: black; text-align: left; margin-top: 5px; ">정기휴무</div>
                        
                      </div>
                      	<div class="col-lg-6" style="text-align: right;">
                      <span id="fix_disable" style="font-size: 13px; color: rgb(26, 25, 25);">
                      <c:choose>
                      <c:when test="${storeSession.si_holiday_fix ne ''}">
                      설정함
                      </c:when>
                      <c:otherwise>
                      설정안함
                      </c:otherwise>
                      </c:choose>
                      </span>
                      <label  class="switch-button">  
                       
                        <input type="checkbox" id="btn_toggle2" onclick="toggle_fix()"  
                        <c:if test="${storeSession.si_holiday_fix ne ''}">
                        checked
                        </c:if>
                        /> 
                        <span class="onoff-switch"></span> 
                      </label>
                    </div>
                        </div>
                        
                     
                        <c:choose>
                        <c:when test="${storeSession.si_holiday_fix ne ''}">
                           <div class="row" id="fix_date"  style="display:block;">
                        </c:when>
                        <c:otherwise>
                          <div class="row" id="fix_date"  style="none;">
                        </c:otherwise>
                        </c:choose>
                        
                        <div class="col-lg-2" style="padding-right:0;">
                        <h5 style="margin-left:40px; ">요일선택 : </h5>
                        </div>
                        <div class="col-lg-10" style="margin-top:5px; padding-left:0;">
                        <div class="dataTable-dropdown" >
                        
											<select class="dataTable-selector" id="holiday_fixSelect" style="width:20%; float:left;">
												
												<option value="월요일"
												<c:if test="${storeSession.si_holiday_fix eq '월요일'}">
												selected
												</c:if>
												>월</option>
												<option value="화요일"
												<c:if test="${storeSession.si_holiday_fix eq '화요일'}">
												selected
												</c:if>
												>화</option>
												<option value="수요일"
												<c:if test="${storeSession.si_holiday_fix eq '수요일'}">
												selected
												</c:if>
												>수</option>
												<option value="목요일"
												<c:if test="${storeSession.si_holiday_fix eq '목요일'}">
												selected
												</c:if>
												>목</option>
												<option value="금요일"
												<c:if test="${storeSession.si_holiday_fix eq '금요일'}">
												selected
												</c:if>
												>금</option>
												<option value="토요일"
												<c:if test="${storeSession.si_holiday_fix eq '토요일'}">
												selected
												</c:if>
												>토</option>
												<option value="일요일"
												<c:if test="${storeSession.si_holiday_fix eq '일요일'}">
												selected
												</c:if>
												>일</option>
											</select>
										</div>
                        </div>
                        </div>
                        
                        <div class="row" style="margin-top: 60px; margin-left: 30px; ">
                          <div class="col-lg-3">
                        <div style="font-size: 15px; font-weight: bolder;  color: black; text-align: left; margin-top: 5px; ">임시휴무</div>
                        
                      </div>
                      <div class="col-lg-6" style="text-align: right;">
                      <span id="imsi_disable" style="font-size: 13px; color: rgb(26, 25, 25);">
                      <c:choose>
                      <c:when test="${storeSession.si_holiday_imsi ne ''}">
                      설정함
                      </c:when>
                      <c:otherwise>
                      설정안함
                      </c:otherwise>
                      </c:choose>
                      </span>
                      <label  class="switch-button">  
                       
                        <input type="checkbox" id="btn_toggle3" onclick="toggle_imsi()"  
                        	<c:if test="${storeSession.si_holiday_imsi ne ''}">
                        checked
                        </c:if>
                        /> 
                        <span class="onoff-switch"></span> 
                      </label>
                    </div>
                        </div>
                        <div class="row" id="imsi_date" 
                        
                        <c:choose>
                      <c:when test="${storeSession.si_holiday_imsi ne ''}">
                      style="display:block;"
                      </c:when>
                      <c:otherwise>
                      style="display:none;"
                      </c:otherwise>
                      </c:choose>
                        >
                        <input id="holiday_imsi_date" class="form-control round-form" type="date" value="${storeSession.si_holiday_imsi}" style="margin-left: 70px; width: 30%; display: inline-block; float:left;"> 
                        </div>
                        

                        

                      <div>
                       <div class="row" style="margin-top: 30px;">
                         <div class="col-lg-6"></div>
                         <div class="col-lg-3" style="text-align: right;">
                          <button type="button" class="UpdateBtn" onclick="update_holiday()" >수정</button>
                         </div>
                        <div class="col-lg-3" style="text-align: left;">
                          <button type="button" class="closeBtn" onclick="close_modalB()" >닫기</button>
                        </div>
                       </div> 
                      
                    </div>
                    </div>
                  </div>
                  <!--모달2 end-->

                  
                  
                  
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
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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