<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <title>워킹오더 매장 주문</title>

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
.box_shadowzz {
	box-shadow: 2px 2px 2px #5c5c5c60;
}

/*최소주문시간 설정 start*/
#form-wrapper {
	width: 100%;
	display: flex;
	flex-direction: column;
	align-items: center;
}

form {
	width: 90%;
	max-width: 500px;
}

form #form-title {
	margin-top: 0;
	font-weight: 400;
	text-align: center;
}

form #debt-amount-slider {
	display: flex;
	flex-direction: row;
	align-content: stretch;
	position: relative;
	width: 100%;
	height: 50px;
	user-select: none;
}

form #debt-amount-slider::before {
	content: " ";
	position: absolute;
	height: 2px;
	width: 100%;
	width: calc(100% * ( 4/ 5));
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background: #000;
}

form #debt-amount-slider input, form #debt-amount-slider label {
	box-sizing: border-box;
	flex: 1;
	user-select: none;
	cursor: pointer;
}

form #debt-amount-slider label {
	display: inline-block;
	position: relative;
	width: 20%;
	height: 100%;
	user-select: none;
}

form #debt-amount-slider label::before {
	content: attr(data-debt-amount);
	position: absolute;
	left: 50%;
	padding-top: 10px;
	transform: translate(-50%, 45px);
	font-size: 14px;
	letter-spacing: 0.4px;
	font-weight: 400;
	white-space: nowrap;
	opacity: 0.85;
	transition: all 0.15s ease-in-out;
}

form #debt-amount-slider label::after {
	content: " ";
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	width: 30px;
	height: 30px;
	border: 2px solid #000;
	background: #fff;
	border-radius: 50%;
	pointer-events: none;
	user-select: none;
	z-index: 1;
	cursor: pointer;
	transition: all 0.15s ease-in-out;
}

form #debt-amount-slider label:hover::after {
	transform: translate(-50%, -50%) scale(1.25);
}

form #debt-amount-slider input {
	display: none;
}

form #debt-amount-slider input:checked+label::before {
	font-weight: 800;
	opacity: 1;
}

form #debt-amount-slider input:checked+label::after {
	border-width: 4px;
	transform: translate(-50%, -50%) scale(0.75);
}

form #debt-amount-slider input:checked ~ #debt-amount-pos {
	opacity: 1;
}

form #debt-amount-slider input:checked:nth-child(1) ~ #debt-amount-pos {
	left: 10%;
}

form #debt-amount-slider input:checked:nth-child(3) ~ #debt-amount-pos {
	left: 30%;
}

form #debt-amount-slider input:checked:nth-child(5) ~ #debt-amount-pos {
	left: 50%;
}

form #debt-amount-slider input:checked:nth-child(7) ~ #debt-amount-pos {
	left: 70%;
}

form #debt-amount-slider input:checked:nth-child(9) ~ #debt-amount-pos {
	left: 90%;
}

form #debt-amount-slider #debt-amount-pos {
	display: block;
	position: absolute;
	top: 50%;
	width: 12px;
	height: 12px;
	background: #000;
	border-radius: 50%;
	transition: all 0.15s ease-in-out;
	transform: translate(-50%, -50%);
	border: 2px solid #fff;
	opacity: 0;
	z-index: 2;
}

form:valid #debt-amount-slider input+label::before {
	transform: translate(-50%, 45px) scale(0.9);
	transition: all 0.15s linear;
}

form:valid #debt-amount-slider input:checked+label::before {
	transform: translate(-50%, 45px) scale(1.1);
	transition: all 0.15s linear;
}

form+button {
	display: block;
	position: relative;
	margin: 56px auto 0;
	padding: 10px 20px;
	appearance: none;
	transition: all 0.15s ease-in-out;
	font-family: inherit;
	font-size: 24px;
	font-weight: 600;
	background: #fff;
	border: 2px solid #000;
	border-radius: 8px;
	outline: 0;
	user-select: none;
	cursor: pointer;
}

form+button:hover {
	background: #000;
	color: #fff;
}

form+button:hover:active {
	transform: scale(0.9);
}

form+button:focus {
	background: #4caf50;
	border-color: #4caf50;
	color: #fff;
	pointer-events: none;
}

form+button:focus::before {
	animation: spin 1s linear infinite;
}

form+button::before {
	display: inline-block;
	width: 0;
	opacity: 0;
	content: "";
	font-family: "Font Awesome 5 Pro";
	font-weight: 900;
	margin-right: 0;
	transform: rotate(0deg);
}

form:invalid+button {
	pointer-events: none;
	opacity: 0.25;
}

@
keyframes spin {from { transform:rotate(0deg);
	width: 24px;
	opacity: 1;
	margin-right: 12px;
}

to {
	transform: rotate(360deg);
	width: 24px;
	opacity: 1;
	margin-right: 12px;
}

}
/*최소주문시간 설정 end*/

/*order카드 css*/
.order_card {
	width: auto;
	height: 280px;
	background-color: #dadad2;
	border-radius: 5px;
}

.order_status {
	width: auto;
	font-size: 17px;
	color: rgb(255, 255, 255);
	padding: 5px 10px;
	margin: 10px 0 0 25px;
	border-radius: 10px;
}

.order_status.daegi {
	background-color: #ed4759;
}



.order_status.making_drink {
	background-color: #02c0cc;
}

.order_status.drink_ready {
	background-color: #000000;
}

.info_user {
	margin: 10px 10px 20px 10px;
	border-bottom: 1px solid rgba(0, 0, 0, 0.418);
}

.info_menu {
	margin-left: 30px;
}

.order_detail {
	background-color: #ffffff30;
	padding: 16px 5px;
	border-radius: 10px;
	border: 1px solid rgba(0, 0, 0, 0.342);
	font-weight: 700;
	color: #00000090;
	margin-bottom: 10px;
}

.order_detail:hover {
	background-color: #ffffff80;
	color: black;
}

.order_cancel {
	background-color: #00000024;
	padding:5px 10px;
	font-size:17px;
	border-radius: 10px;
	border: 1px solid rgba(0, 0, 0, 0.342);
	font-weight: 700;
	color: black;
	margin: 10px 25px 0 0;
	float:right;
}

.order_cancel:hover {
	background-color: #0000008f;
	color: white;
	cursor: pointer;
}

.order_Btn {
	width: 100%;
	height: 60px;
	background-color: #ed4759;
	font-size: 20px;
	border: 1px solid #eb4657;
	color: rgb(255, 255, 255);
	padding: 5px;
	margin-top: 10px;
	border-radius: 10px;
}

.order_Btn.daegi {
	background-color: #ed4759;
	border: 1px solid #eb4657;
}

.order_Btn.making_drink {
	background-color: #02c0cc;
	border: 1px solid #02c0cc;
}

.order_Btn.drink_ready {
	background-color: #000;
	border: 1px solid #000;
}

.order_Btn:hover {
	font-weight: 700;
}

.order_Btn.daegi:hover {
	background-color: #e65e6d;
	box-shadow: 1px 1px 1px 1px #a32a38 inset;
}
.order_Btn.making_drink:hover {
	background-color: #58cad1;
	box-shadow: 1px 1px 1px 1px #009da7 inset;
}
.order_Btn.drink_ready:hover {
	background-color: #00000090;
	box-shadow: 1px 1px 1px 1px #000 inset;
}

.modal-dialog.modal_centerr {
	text-align: center;
}

table .detail_modal {
	border: 1px solid pink;
}

.modal_wrapbodyy {
	padding: 0;
	overflow: auto;
	height: 70vh;
	overflow-x: hidden;
}

.modal_wrapbodyy::-webkit-scrollbar {
	width: 6px;
}

.modal_wrapbodyy::-webkit-scrollbar-track {
	background-color: #ed475960;
}

.modal_wrapbodyy::-webkit-scrollbar-thumb {
	background-color: #ed475990;
}

.modal_wrapbodyy::-webkit-scrollbar-button {
	background-color: #ed475990;
	height: 10px;
}
</style>
<script>

function setClock(){
    var dateInfo = new Date(); 
    var hour = modifyNumber(dateInfo.getHours());
    var min = modifyNumber(dateInfo.getMinutes());
    var sec = modifyNumber(dateInfo.getSeconds());
    var year = dateInfo.getFullYear();
    var month = dateInfo.getMonth()+1; //monthIndex를 반환해주기 때문에 1을 더해준다.
    var date = dateInfo.getDate();
    document.getElementById("time").innerHTML = hour + ":" + min  + ":" + sec;
    document.getElementById("date").innerHTML = year + "년 " + month + "월 " + date + "일";
}
function modifyNumber(time){
    if(parseInt(time)<10){
        return "0"+ time;
    }
    else
        return time;
}
window.onload = function(){
    setClock();
    setInterval(setClock,1000); //1초마다 setClock 함수 실행
    setInterval(checkNewOrder,1000);//1초마다 새로운 주문 확인
}

function checkNewOrder(){
	$.ajax({
        url : "checkNewOrder.store",
        dataType: "html",	// 이 부분이 반환 타입을 핸들링하는 곳이다.
        type: "get",
        success: function(data) {
        	console.log(data);
        	if(data.indexOf("neworderneworderneworderneworderneworderneworder") != -1){
        		Swal.fire({
        			  title: "신규 주문!!",
        			  width: 400,
        			  height:100,
        			  icon: "warning",
        			  html: "<br>",
        		      showConfirmButton: false,
        		      timer: 1500,
        			  color: '#000000',
        			  background: '#fff',
        			  backdrop: `
        			    rgba(0,0,123,0.4)
        			    url("resources/assets/images/admin/logo/dancing-banana.gif") 
        			    left top
        			    no-repeat
        			  `
        			});
	        	$("#newOrder").prepend(data); // 반환된 data를 body태그에 추가
	        	for(i=0;i<20;i++){
	  				try{//원래 있던 친구들
	  					var indexCount = document.getElementById("indexCount"+i.toString());
	  					var imsi = parseInt(indexCount.innerText)+1;
	  					indexCount.innerText = imsi;
	  				}catch(error){}
	  				try{//새로들어온친구들
	  					var indexCounta = document.getElementById("indexCounta"+i.toString());
	  					var imsia = parseInt(indexCounta.innerText)+1;
	  					indexCounta.innerText = imsia;
	  				}catch(error){}
	  			}
        	}
        },
        error: function (){console.log("새주문 못 받아오는 중")}
    });
}

function zzzz(){
	Swal.fire({
		  title: "신규 주문!!",
		  width: 400,
		  height:100,
		  icon: "warning",
		  html: "<br>",
	      showConfirmButton: false,
	      timer: 1500,
		  color: '#000000',
		  background: '#fff',
		  backdrop: `
		    rgba(0,0,123,0.4)
		    url("resources/assets/images/admin/logo/dancing-banana.gif") 
		    left top
		    no-repeat
		  `
		})
}
</script>
</head>
<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!-- 헤더 import -->
    <%@ include file="inc/store_header.jsp" %>
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a><img src="${storeSession.si_image}" class="img-circle" width="80"></a></p>
          <h5 class="centered">${storeSession.si_name } ${storeSession.si_loc}</h5>
          <p class="sidebar-title" >주문 확인</p>
          <li class="sub-menu">
            <a class="active" href="index.store">
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
            <a id="order-manage" href="javascript:;">
              <i class="fa fa-shopping-cart"></i>
              <span>매장 정보 관리</span>
              </a>
            <ul class="sub">
              <li><a id="total-order" href="basic.store">기본정보 변경</a></li>
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
     
      <section class="wrapper" style="height: 1500px; padding:0px;">
       
          <div class="min_bringTime"  style="padding:0px; margin:0px; background-color: #0a253362; height: 150px;">
            <div class="row">
            
      
              <div id="form-wrapper" >
                <form>
                  <h3 id="form-title" style="color: rgb(255, 255, 255); padding-top: 20px;">최소 수령시간</h3>
                  <div id="debt-amount-slider" style="color: #000;">
                    <input type="radio" name="debt-amount" id="1" value="0" required <c:if test="${storeSession.si_due_time eq 0}">checked</c:if>>
                    <label  for="1"  data-debt-amount="지금수령"></label>
                    <input type="radio" name="debt-amount" id="2" value="5" required <c:if test="${storeSession.si_due_time eq 5}">checked</c:if>>
                    <label for="2" data-debt-amount="5분"></label>
                    <input type="radio" name="debt-amount" id="3" value="10" required <c:if test="${storeSession.si_due_time eq 10}">checked</c:if>>
                    <label for="3" data-debt-amount="10분"></label>
                    <input type="radio" name="debt-amount" id="4" value="15" required <c:if test="${storeSession.si_due_time eq 15}">checked</c:if>>
                    <label for="4" data-debt-amount="15분"></label>
                    <input type="radio" name="debt-amount" id="5" value="20" required <c:if test="${storeSession.si_due_time eq 20}">checked</c:if>>
                    <label for="5" data-debt-amount="20분"></label>
                   
                    <div id="debt-amount-pos"></div>
                  </div>
                </form>
             
              </div>
      </div>
    </div>

        
        <div class="row" style="margin: 10px; font-size: 40px; font-weight: 800; color: #000;" >
          <!--오늘날짜 -->
          <div class="col-lg-6">
          <div class="current_date"> 
            <div id="date" class="date" ></div>
        </div>
<!--         <button style="font-size:16px;padding:10px 20px" onclick="zzzz()">화면 불러오기용 원하는 시간마다 자동으로 돌게할 수 있음</button> -->
          </div>
          <!--현재 시간-->
          <div class="col-lg-6" >
              <div class="current_time">
              <div id="time" class="time"></div>
            </div>
       	 </div>
        </div>
        
        <!--주문창 start-->
        <div class="row" style="margin: 10px 0 10px 10px;">
        <!-- div for preppending -->
         <div id="newOrder"></div>
		<c:forEach var="storeOrders" items="${storeOrders}" varStatus="vs">
		<input type="hidden" id="hiddenindex${vs.index}" value="${vs.index}"/>
		<input type="hidden" id="o_code${vs.index}" value="${storeOrders.o_code}"/>
          <div id="order_wrap${vs.index}" class="col-lg-3" style="margin-bottom:20px;">
            <div class="order_card box_shadowzz">
               <div class="row"><label id="order_state${vs.index}" class="order_status <c:choose>
                     	<c:when test="${storeOrders.o_order_state eq '준비완료' }">drink_ready</c:when>
                     	<c:when test="${storeOrders.o_order_state eq '준비중' }">making_drink</c:when>
                     	<c:otherwise>daegi</c:otherwise>
                     </c:choose>">${storeOrders.o_order_state}</label>
                     <a class="order_cancel"  onclick="order_cancel${inputIndex}${vs.index}()"> 주문취소하기</a>
		
                     </div>
                     
               
                 <div class="info_user">
                   <table style=" margin-left: 30px;" >
                     
                     <tr>
                       <td id="indexCount${vs.index}" rowspan="2" style="font-size: 50px; padding-right:15px; color: black; font-weight: bolder; ">
                       ${vs.count}</td>
                       <td style="font-size: 20px; color: #000; padding: 0;">Takeout</td>
                       <td rowspan="2" style="padding-left: 30px;">
                       		<a class="order_detail" data-toggle="modal" href="#orderDetail${vs.index}">상세보기</a>
                       </td>
                     </tr>
                     <tr>
                       <td style="padding-bottom: 15px;">${(storeOrders.u_name).substring(0,1)}**</td>
                     </tr>
                   </table>
 
                 </div><!-- info_user -->
                 
                 <div class="info_menu">
                     <h4 style="color: black;">${storeOrders.o_list}</h4>
                     <h5><fmt:formatDate value="${storeOrders.o_order_date}" pattern="a hh:mm"/></h5>
                 </div>
                 <div class="col-lg-12" style="text-align: center;">
                 
                   <button class="order_Btn <c:choose>
                     	<c:when test="${storeOrders.o_order_state eq '준비완료' }">drink_ready</c:when>
                     	<c:when test="${storeOrders.o_order_state eq '준비중' }">making_drink</c:when>
                     	<c:otherwise>daegi</c:otherwise>
                     </c:choose>" id="order_Btn${vs.index}" onclick="orderChange${vs.index}()">
                     <c:choose>
                     	<c:when test="${storeOrders.o_order_state eq '준비완료' }">전달완료</c:when>
                     	<c:when test="${storeOrders.o_order_state eq '준비중' }">준비완료</c:when>
                     	<c:otherwise>주문접수하기</c:otherwise>
                     </c:choose></button>
                 
                 </div>
              </div><!-- order_card -->
           </div> <!-- col-lg-3 -->
<script>
function orderChange${vs.index}(){
	let index = parseInt($("#hiddenindex${vs.index}").val());
	let o_code = $("#o_code${vs.index}").val();
	let o_order_state = "";
	if($("#order_Btn${vs.index}").hasClass("daegi")==true){//접수대기 상태 -> 준비중으로 변경
		//버튼 색 변경
		$("#order_state${vs.index}").removeClass("daegi");
		$("#order_state${vs.index}").addClass("making_drink");
		$("#order_Btn${vs.index}").removeClass("daegi");
		$("#order_Btn${vs.index}").addClass("making_drink");
		
		//글자 변경
		document.getElementById("order_state${vs.index}").innerText = "준비중";
		document.getElementById("order_Btn${vs.index}").innerText = "준비완료";
		o_order_state = "junbijung";
	}else if($("#order_Btn${vs.index}").hasClass("making_drink")==true){//준비중 상태 ->준비완료로 바꿀거임
		//버튼 색 변경
		$("#order_state${vs.index}").removeClass("making_drink");
		$("#order_state${vs.index}").addClass("drink_ready");
		$("#order_Btn${vs.index}").removeClass("making_drink");
		$("#order_Btn${vs.index}").addClass("drink_ready");
		
		//글자 변경
		document.getElementById("order_state${vs.index}").innerText = "준비완료";
		document.getElementById("order_Btn${vs.index}").innerText = "전달완료";
		o_order_state = "junbiwan";
	}else if($("#order_Btn${vs.index}").hasClass("drink_ready")==true){//준비완료 상태 -> 전달완료로 바꾸면서 화면에서 삭제
		for(i=1;i<20;i++){
			try{
				var zz = i+index
				var indexCount = document.getElementById("indexCount"+zz.toString());
				var imsi = parseInt(indexCount.innerText)-1;
				indexCount.innerText = imsi;
			}catch(error){}
		}
		$("#order_wrap${vs.index}").remove();
		o_order_state = "byedrink"	;	
	}
	var param = {
		"o_code" : o_code,
		"o_order_state" : o_order_state
	}
	
	$.ajax({
        type: "POST",
        url: "/changeOState.store",
        data: JSON.stringify(param),
        dataType: "json",
        contentType: "application/json",
     success:function(data){
//     	 Swal.fire({
//    	        icon: "success",
//    	        title: "상태 변경 완료",
//    	        showConfirmButton: false,
//    	        timer: 1500
//    	    });
     },
     error:function(data){
        console.log("장바구니 삭제 통신에러");
     }
  }); //ajax 끝
	
	
//	앞에 숫자들이 커짐
//	 	for(i=0;i<=index;i++){
//			var indexCount = document.getElementById("indexCount"+i.toString());
//			var change = i+2;
//			indexCount.innerText = change;
//		}
}



function order_cancel${inputIndex}${vs.index}(){
	
	var o_code = $("#o_code${vs.index}").val();
	console.log(o_code);
	param = {"o_code" : o_code};
	Swal.fire({
		  title: '[주문취소]',
		  text: "주문을 취소하시겠습니까?",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: '주문 취소',
		  cancelButtonText :'아니요'
		}).then((result) => {
		  if (result.isConfirmed) {
		   
		    $.ajax({
		        type: "POST",
		        url: "/OrderCancel.store",
		        data: JSON.stringify(param),
		        dataType: "json",
		        contentType: "application/json",
		     success:function(data){
		    	 Swal.fire({
		   	        icon: "success",
		   	        title: "삭제완료",
		   	        showConfirmButton: false,
		   	        timer: 1500
		   	    });
		     },
		     error:function(data){
		        console.log("주문삭제 통신에러");
		     }
			  
			  
		  });
		  }
		})
	
}


</script>           
<!-- Modal -->
<div aria-hidden="true" aria-labelledby="myModalLabel"
	role="dialog" tabindex="-1" id="orderDetail${vs.index}"
	class="modal fade" style="margin: 20px auto 0;">
	<div class="modal-dialog store modal_centerr">
		<div class="modal-content">
			<div class="modal-header_store" style="background-color: #ed4759;height:50px;">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" style="padding-top:7px">${storeOrders.o_code} 주문상세</h4>
				
			</div>
			<!-- 	정보시작 -->
	<div class="modal_wrapbodyy"  style="height:500px;background:#eaeaea;padding:30px 30px 0;color:black;">
		<div class="col-lg-12">
			<div class="" style="border-bottom: 1px solid rgba(0, 0, 0, 0.459); margin: 15px;">
                <div class="row" style="text-align: left; margin:5px 10px;">
                  <div class="col-lg-3" style="font-weight: bolder;">결제방법</div> <div class="col-lg-9">
                  	${storeOrders.o_payment_list}
                  </div>
               </div>
               <div class="row" style="text-align: left; margin:5px 10px;">
                  <div class="col-lg-3" style="font-weight: bolder;">주문시각</div> <div class="col-lg-9">
                  	<fmt:formatDate value="${storeOrders.o_order_date}" pattern="yyyy.MM.dd  |  a hh:mm"/>
                  </div>
               </div>
               <div class="row" style="text-align: left; margin:5px 10px;">
                  <div class="col-lg-3" style="font-weight: bolder;">요청사항</div> <div class="col-lg-9">
                  	${storeOrders.o_request}
                  </div>
               </div>
               <div class="row" style="text-align: left; margin:5px 10px 15px 10px;">
                  <div class="col-lg-3" style="font-weight: bolder;">주문번호</div> <div class="col-lg-9">
                  	${storeOrders.o_code}
                  </div>
               </div>
             </div>
              <div class="order_product" style="border-bottom: 1px solid rgba(0, 0, 0, 0.459); margin: 15px;">
                <div class="row" style="text-align: left; margin: 15px;">
                  <div class="row" style="margin-bottom:15px;padding-bottom:5px;border-bottom:1px solid rgba(0, 0, 0, 0.1);font-weight: 900;font-size:16px;">
	                  <div class="col-lg-7">주문정보 </div>
	                  <div class="col-lg-2">수량</div> 
	                  <div class="col-lg-3" style="text-align: right;padding-right:30px;">금액</div>
                  </div>
<c:forEach var="orderDetails" items="${orderDetails}" varStatus="vvs">
<c:if test="${storeOrders.o_code eq orderDetails.o_code}">
                  <div class="row" style="margin-bottom:15px;font-size:14px;">
	                  <!-- OPB -->
	                  <div class="col-lg-7" style="font-weight: bolder;">${orderDetails.m_name}  </div>
	                  <div class="col-lg-2">${orderDetails.b_quantity} 개</div>
					  <div class="col-lg-3" style="text-align: right;"><fmt:formatNumber value="${orderDetails.b_total_price}" pattern="###,###"/> 원</div>
					  <div class="col-lg-12">${orderDetails.opb_name}(<fmt:formatNumber value="${orderDetails.opb_price}" pattern="###,###"/> 원)</div>
					  <!-- /OPB -->
					  <c:if test="${orderDetails.op_code1 ne ' '}">
							<div class="col-lg-12" style="font-size:12px;">└ ${orderDetails.op_name1} (<fmt:formatNumber value="${orderDetails.op_price1}" pattern="###,###"/> 원)</div>
						</c:if>	
						<c:if test="${orderDetails.op_code2 ne ' '}">
							<div class="col-lg-12" style="font-size:12px;">└ ${orderDetails.op_name2} (<fmt:formatNumber value="${orderDetails.op_price2}" pattern="###,###"/> 원)</div>
						</c:if>	
						<c:if test="${orderDetails.op_code3 ne ' '}">	
							<div class="col-lg-12" style="font-size:12px;">└ ${orderDetails.op_name3} (<fmt:formatNumber value="${orderDetails.op_price3}" pattern="###,###"/> 원)</div>
						</c:if>	
						<c:if test="${orderDetails.op_code4 ne ' '}">	
							<div class="col-lg-12" style="font-size:12px;">└ ${orderDetails.op_name4} (<fmt:formatNumber value="${orderDetails.op_price4}" pattern="###,###"/> 원)</div>
						</c:if>	
						<c:if test="${orderDetails.op_code5 ne ' '}">	
							<div class="col-lg-12" style="font-size:12px;">└ ${orderDetails.op_name5} (<fmt:formatNumber value="${orderDetails.op_price5}" pattern="###,###"/> 원)</div>
						</c:if>
                  </div>
</c:if>
</c:forEach>
                  <br>
                  <div class="col-lg-9" style="font-weight: bolder; font-size: 16px; color: black;padding:0;">총 금액</div>
                  <div class="col-lg-3" style="font-weight: bolder; font-size: 16px; text-align: right; padding:0;"><fmt:formatNumber value="${storeOrders.o_total_price}" pattern="###,###"/> 원</div>
                
                </div>
                
              </div>
              
              
			
		</div><!-- <div class="col-lg-12"> -->




	</div><!-- wrap body -->
			<div class="modal-footer" style="background:#eaeaea;border-radius: 0 0 10px 10px">
				<button data-dismiss="modal" class="btn btn-default"
					type="button">확인</button>
			</div>
		</div>
	</div>
</div>
<!-- Modal END -->
         </c:forEach>
         </div>
         
         
        <!--/주문창 end-->
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
        <a href="#" class="go-top">
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
<script>
$("input:radio[name=debt-amount]").click(function(){     
	console.log($("input:radio[name=debt-amount]:checked").val());
	var si_due_time = $("input:radio[name=debt-amount]:checked").val();
	var param = {"si_due_time":parseInt(si_due_time)}
	$.ajax({
	    type: "POST",
	    url: "/changeDueTime.store",
	    data: JSON.stringify(param), 
	    dataType: "json",
	    contentType: "application/json",
	    success: function (data) {
	        if (data == 1) {
		        Swal.fire({
		            icon: "success",
		            title: "준비시간 변경 완료",
		            showConfirmButton: false,
		            timer: 1500
		        });
	        }else if(data == 0){
	        	Swal.fire({
		            icon: "warning",
		            title: "준비시간 변경 완료",
		            showConfirmButton: false,
		            timer: 1500
		        });
	        }
	    },
	    error: function (data) {
	        console.log("메뉴추가 통신에러");
	    }
	});//ajax end
	
});


</script>
</body>

</html>
