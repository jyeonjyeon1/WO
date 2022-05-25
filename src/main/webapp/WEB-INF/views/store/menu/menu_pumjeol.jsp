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
<meta name="author" content="Dashboard">
<meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<title>워킹오더 매장관리자 페이지</title>

<!-- Favicons -->
<link href="resources/assets/images/admin/logo/logo_only.svg" rel="icon">
<link href="resources/assets/images/admin/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Bootstrap core CSS -->
<link href="resources/assets/js/admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!--external css-->
<link href="resources/assets/js/admin/font-awesome/css/font-awesome.css" rel="stylesheet"/>

<!-- Custom styles for this template -->
<link href="resources/assets/css/admin/style.css" rel="stylesheet">
<link href="resources/assets/css/admin/style-responsive.css" rel="stylesheet">
<script   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- 경고/확인/정보전달 모달 사용을위한 js 추가 -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>


<style>
input::-webkit-inner-spin-button {
   appearance: none;
   -moz-appearance: none;
   -webkit-appearance: none;
}

.custom_btnn{
    display: inline-block;
    padding: 10px 16px;
    margin-bottom: 0;
    font-size: 18px;
    font-weight: 700;
    line-height: 1.333;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-image: none;
    border: 2px solid rgb(0, 98, 231);
    border-radius: 6px;
 }

.not_pumjeol_btn{
	background: white;
	color: rgb(0, 98, 231);
}

.pumjeol_btn{
	background: rgb(0, 98, 231);
	color: white;
}

/*메뉴그룹추가버튼*/
/*옵션그룹추가버튼*/
.menu_addMenuGroup {
   width: auto;
   font-size: 15px;
   background-color: #a3d1f14f;
   border: 1px solid #0a5c96a9;
   padding: 10px;
   color: rgba(0, 0, 0, 0.562);
   border-radius: 5px;
   cursor: pointer;
   font-weight: bolder;
}

.menu_addMenuGroup:hover {
   background-color: #0a5c96;
   color: aliceblue;
}

/*메뉴그룹 리스트 css*/
nav {
   width: 100%;
   margin-top: 20px;
}

ul {
   padding: 0;
}

li {
   list-style: none;
   line-height: 50px;
}

.snd_menu {
   background: #efefef;
}

.trd_menu {
   background: #ddd;
}

.sub_menu {
   display: none;
}

.selec {
   background: rgba(226, 77, 94, 0.733);
   color: #efefef;
}

/*메뉴편집 - 메뉴그룹*/
/*옵션편집 - 옵션그룹*/
.menuGroup {
   display: block; /* 중요 */
   text-decoration: none;
   color: #616161;
   text-align: center;
   font-size: 20px;
   font-weight: bolder;
}

/*메뉴편집 - 메뉴그룹 - 메뉴한개 */
.menu_one {
   display: block; /* 중요 */
   text-decoration: none;
   color: #616161;
   text-align: center;
   border-bottom: 1px solid rgba(0, 0, 0, 0.288);
}

/* 메뉴편집 - 메뉴추가 버튼 */
.menu_addOne {
   display: block; /* 중요 */
   text-decoration: none;
   color: #616161;
   text-align: center;
}

.menu_addOne h4:hover {
   font-weight: bolder;
}

/* 메뉴편집 - 옵션수정- 옵션그룹 추가 버튼 */
.menu_addOptionGroup {
   display: block; /* 중요 */
   text-decoration: none;
   color: #616161;
   text-align: center;
}

.menu_addOptionGroup h4:hover {
   font-weight: bolder;
}

/*옵션편집 - + 옵션그룹 추가버튼 클릭시*/
.option_addOptionGroup {
   display: block; /* 중요 */
   text-decoration: none;
   color: #616161;
   text-align: center;
}

.option_addOptionGroup h4:hover {
   font-weight: bolder;
}

/*옵션편집 - 옵션추가버튼 */
.option_addOne {
   display: block; /* 중요 */
   text-decoration: none;
   color: #616161;
   text-align: center;
}

.option_addOne h4:hover {
   font-weight: bolder;
}

/*메뉴편집 - 메뉴정보수정 */
.menu_oneInfoUpdate {
   display: block; /* 중요 */
   text-decoration: none;
   color: #616161;
   text-align: center;
   border-bottom: 1px solid rgba(0, 0, 0, 0.288);
}

/*메뉴편집 - 옵션설정 */
.menu_oneOptionUpdate {
   display: block; /* 중요 */
   text-decoration: none;
   color: #616161;
   text-align: center;
   border-bottom: 1px solid rgba(0, 0, 0, 0.288);
}

/*메뉴편집 - 이미지변경 */
.menu_oneImgUpdate {
   display: block; /* 중요 */
   text-decoration: none;
   color: #616161;
   text-align: center;
   border-bottom: 1px solid rgba(0, 0, 0, 0.288);
}

/*메뉴편집 - 메뉴삭제 */
.menu_oneDelete {
   display: block; /* 중요 */
   text-decoration: none;
   color: #fd0000;
   text-align: center;
   font-weight: bolder;
   border-bottom: 1px solid rgba(0, 0, 0, 0.288);
}

/*메뉴편집 - 옵션설정 - 해제버튼 */
.menu_option_undo {
   margin-top: 5px;
   border: 1px solid red;
   font-weight: bolder;
   color: red;
   background-color: white;
   border-radius: 5px;
   width: 80px;
}

.menu_option_undo:hover {
   background-color: #f56c4d25;
}

/*옵션편집 - 옵션명 및 가격변경 */
.option_oneUpdate {
   display: block; /* 중요 */
   text-decoration: none;
   color: #616161;
   text-align: center;
   border-bottom: 1px solid rgba(0, 0, 0, 0.288);
}

/*옵션편집 - 옵션삭제 */
.option_oneDelete {
   display: block; /* 중요 */
   text-decoration: none;
   color: #fd0000;
   text-align: center;
   font-weight: bolder;
   border-bottom: 1px solid rgba(0, 0, 0, 0.288);
}

/* 메뉴편집 - 메뉴 추가 버튼 */
.menu_addOne {
   border-bottom: 1px solid rgba(0, 0, 0, 0.288);
}

/*옵션편집 - 옵션그룹1개 - 연결메뉴랑 필수여부있는 list 쪽 배경만 바꾼거임그냥*/
.menu_one_plus {
   background-color: rgba(226, 77, 94, 0.233);
}

/*모달*/
.modal-title {
   font-size: 20px;
   text-align: center;
   font-weight: bolder;
}

.modal_table {
   width: 100%;
}

#modal_userImg {
   width: 50px;
   height: 50px;
   border-radius: 75%;
}

#modal_userId {
   width: 200px;
}

#modal_userFollow {
   margin: 10px;
   text-align: right;
}

.menu_priceOption {
   border: 0;
   text-align: center;
   width: relative;
   background-color: white;
   font-size: 20px;
}

.menu_priceOption:hover {
   font-weight: bolder;
   color: rgb(218, 60, 12);
}

.add_Option {
   border: 0;
   text-align: center;
   width: relative;
   background-color: white;
   font-size: 20px;
}

.add_Option:hover {
   font-weight: bolder;
   color: rgb(218, 60, 12);
}

.groupAdd_Option {
   border: 0;
   text-align: center;
   width: relative;
   background-color: white;
   font-size: 20px;
}

.groupAdd_Option:hover {
   font-weight: bolder;
   color: rgb(218, 60, 12);
}

.save_Btn {
   width: 100%;
   font-size: 18px;
   color: black;
   background-color: rgba(250, 235, 215, 0.884);
   border: 1px solid #616161dc;
   border-radius: 2px;
}

.save_Btn:hover {
   background-color: rgba(218, 60, 12, 0.637);
   font-weight: bolder;
}

.nextBtn {
   width: 100%;
   font-size: 18px;
   color: black;
   background-color: rgba(250, 235, 215, 0.884);
   border: 1px solid #616161dc;
   border-radius: 2px;
}

.nextBtn:hover {
   background-color: rgba(218, 60, 12, 0.637);
   font-weight: bolder;
}

.beforeBtn {
   width: 100%;
   font-size: 18px;
   color: black;
   background-color: rgba(250, 235, 215, 0.884);
   border: 1px solid #616161dc;
   border-radius: 2px;
}

.beforeBtn:hover {
   background-color: rgba(218, 60, 12, 0.637);
   font-weight: bolder;
}

.img_upload a:hover {
   font-weight: bolder;
}

/*이미지 수정 파일업로드*/
#input-image {
   visibility: hidden;
}

/*toggle버튼 css*/

#Toggle1{
  font-size:14px;
  color: #666;
}


.switch-button { 
  position: relative; 
  display: inline-block; 
  width: 55px; height: 30px; } 
  
  .switch-button input { opacity: 0; width: 0; height: 0; } 
  
  
    
    
    
    .switch-button input:checked + .onoff-switch { 
      background-color: #F2D522; box-shadow: inset 1px 5px 1px #E3AE56; } 
      
      .switch-button input:checked + .onoff-switch:before { 
        -webkit-transform: translateX(26px); -ms-transform: translateX(26px); transform: translateX(26px); 
      }



</style>


<script>




//메뉴그룹리스트 js
  $(document).ready(function(){

     // input file에 change 이벤트 부여
//     const inputImage = document.getElementById("input-image")
//    inputImage.addEventListener("change", e => {
//        readImage(e.target)
//    })  
  
  $("#main_menu > li > a").click(function(){
   
    $(this).next($('.snd_menu')).slideToggle('fast');
  })
  $(".snd_menu > li > a").click(function(e){
   
    e.stopPropagation();
    $(this).next($('.trd_menu')).slideToggle('fast');
  })
  
  // 버튼 클릭 시 색 변경
  $('li > a').focus(function(){
    $(this).addClass('selec');
  })
  $("li > a").blur(function(){
    $(this).removeClass("selec");
  }) 

})//doc ready 끝


     
//이미지수정 이미지파일 추가
 function readImage(input) {

    // 인풋 태그에 파일이 있는 경우
    if(input.files && input.files[0]) {
       console.log("gggg");
        // FileReader 인스턴스 생성
      
        
        var reader = new FileReader();
        // 이미지가 로드가 된 경우
        reader.onload=function(e) {   
             console.log("dd");
            var previewImage = document.getElementById("preview-image");
            previewImage.src = e.target.result;
            previewImage.style.display = "block";
          var label = document.getElementById("addImgLabel");
            label.style.display = "none";
            var label2 = document.getElementById("fixImgLabel");
            label2.style.display = "block";
            
        }
        // reader가 이미지 읽도록 하기
        reader.readAsDataURL(input.files[0]);
    }

   
} 


</script>


</head>

<body>
   <section id="container">
      <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
      <!--header start-->
      <%@ include file="../inc/store_header.jsp"%>
      <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
         <div id="sidebar" class="nav-collapse ">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu" id="nav-accordion">
               <p class="centered">
                  <a><img src="resources/assets/images/admin/doggy.jpg"
                     class="img-circle" width="80"></a>
               </p>
               <h5 class="centered">더리터 위례점</h5>
               <p class="sidebar-title">주문 확인</p>
               <li class="sub-menu"><a href="index.store"> <i
                     class="fa fa-h-square"></i> <span>HOME</span>
               </a></li>
               <li class="sub-menu"><a id="store-manage" href="javascript:;">
                     <i class="fa fa-group" style="font-size: 12px;"></i> <span>지난
                        주문</span>
               </a>
                  <ul class="sub">
                     <li><a id="store-mng" href="Ooneday.store">당일주문</a></li>
                     <li><a id="store-menu" href="Operiod.store">기간주문</a></li>
                  </ul></li>

               <p class="sidebar-title">Self Service</p>
               <li class="sub-menu"><a id="user-manage" href="reviews.store">
                     <i class="fa fa-user" style="font-size: 15px;"></i> <span>&nbsp;리뷰관리</span>
               </a></li>
               <li class="sub-menu"><a id="store-manage"
                  class="active dcjq-parent" href="javascript:;"> <i
                     class="fa fa-group" style="font-size: 12px;"></i> <span>메뉴
                        관리</span>
               </a>
                  <ul class="sub">
                     <li><a id="store-mng" href="CRUD.store">메뉴관리
                           (추가 / 수정)</a></li>
                     <li><a class="active" id="store-menu" href="pumjeol.store">품절 관리</a></li>
                  </ul></li>
               <li class="sub-menu"><a id="order-manage" href="javascript:;">
                     <i class="fa fa-shopping-cart"></i> <span>매장 정보 관리</span>
               </a>
                  <ul class="sub">
                     <li><a id="total-order" href="basic.store">기본정보 변경</a></li>
                     <li><a id="store-order" href="manage.store">운영 정보 변경</a></li>
                  </ul></li>
               <p class="sidebar-title">정산</p>
               <li class="sub-menu"><a id="settlement" href="javascript:;">
                     <i class=" fa fa-krw"></i> <span>정산</span>
               </a>
                  <ul class="sub">
                     <li><a id="pg-comm" href="SOneday.store">오늘 매출</a></li>
                     <li><a id="pg-stlmt" href="SPeriod.store">기간 매출 정산</a></li>
                  </ul></li>
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

         <section class="wrapper" style="height: 1000px;">
            <div class="col-lg-11" style="min-width: 500px;">
               <div class="card-header" style="font-size: 16px; margin-top: 40px;">
                  <div class="calculate_title" style="margin-bottom: 20px;">
                     <i class="fa fa-plus-circle" style="font-size: 14px;"></i>
                     품절관리
                  </div>

               </div>

               <div class="form-panel"
                  style="margin-top: 0; border-radius: 0 0 10px 10px;">
                  <form class="form-horizontal style-form" method="get">
                     <div class="row content-panel"
                        style="border: none; box-shadow: none; padding: 0; margin: 0 5px">
                        <div class="panel-body col-lg-12"
                           style="padding: 0 11px 11px 11px;">
                           <div class="tab-content">
                              <div id="menu" class="tab-pane active no-padding">
                                 <div class="row content-panel"
                                    style="border: none; box-shadow: none; padding: 0; margin: 0 5px">

                                    <div
                                       class="panel-heading col-lg-12 col-md-12 col-sm-12 no-padding"
                                       style="margin-bottom: 5px;">
                                       <ul class="nav nav-tabs nav-justified">
                                          <li class="active"><a data-toggle="tab"
                                             href="#faq__111">메뉴품절</a></li>
                                          <li><a data-toggle="tab" href="#faq__222">옵션품절</a></li>
                                          
                                       </ul>
                                    </div>
                                    <div class="panel-body col-lg-12">
                                       <div class="tab-content">

<!-- ***********************************************************메뉴편집 Tab start************************************************************* -->
                                          <div id="faq__111" class="tab-pane active">
                                             
                                             
                                             
                           

                           <!--************************메뉴(그룹) List start********************-->
                     <nav>
                        <ul id="main_menu">
                        <!--  하나의 메뉴그룹 시작 ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ -->
                        <c:forEach var="mg" items="${storeMgList}" varStatus="vs"> 
                            <li>
                                      <a class="menuGroup" href="javascript:" >${mg.mg_name}</a>
                                      
                                    <!--서브메뉴시작-->
                                    <ul class="snd_menu sub_menu">
                                    <!-- 하나의 메뉴 시작 ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ -->
                                    <c:forEach var="menu" items="${storeMenuList}" varStatus="vss"> 
                                    <c:if test="${mg.mg_name eq menu.mg_name }">
                                      <li>
                                        <a class="menu_one" >
                                          <div class="row">
                                            <div class="col-lg-2" style="text-align: left; margin-left:20px;">
                                              <img src="${menu.m_img_file}" style="width: 100px; 
                                              height: 100px; border: 1px solid rgba(0, 0, 0, 0.692); border-radius: 5px; padding: 10px; margin: 10px;">
                                            </div>
                                            <div class="row " style="margin-top: 0px; margin-left: 30px;" >
                                            <div class="row" id="oppp_${vs.index}${vss.index }" style="position:absolute;margin-top: 20px; margin-left: 30px; width:70%;height:80px;
                                            opacity:<c:choose>
                                             <c:when test="${menu.m_oos eq true}">0.5</c:when>
                                             <c:otherwise>0</c:otherwise>
                                             </c:choose>;
                                            background-image:url('resources/assets/images/admin/poom.png');z-index:2;background-size: 80px;background-repeat: no-repeat;" >
                                            </div>
                                              <div class="col-lg-6">
                                              <div style="font-size: 15px; font-weight: bolder;  color: black; text-align: left; ">
                                              <div id="opppp_${vs.index}${vss.index }" class="col-lg-11" style="text-align: left; margin-top: 5px;opacity:
                                              <c:choose>
                                             <c:when test="${menu.m_oos eq true}">0.25</c:when>
                                             <c:otherwise>1</c:otherwise>
                                             </c:choose>">
                                              <h4 style=" font-weight: bolder; margin-left: 0;width:100%;">${menu.m_name}</h4>
                                              <input type="hidden" id="m__code${vs.index}${vss.index }" value="${menu.m_code }" />
                                              <!-- 메뉴 basic 옵션 start -->
												<div class="menu_oneOption">
												<c:forEach var="basicOpList" items="${basicOpList}" varStatus="basicOpVs">
													<c:if test="${basicOpList.m_code eq menu.m_code }">
														<h6 style="margin-top: 0; font-weight: bolder;">${basicOpList.opb_name}
														: <fmt:formatNumber	value="${basicOpList.opb_price}" pattern="###,###,###" /> 
														</h6>
													</c:if>
												</c:forEach>
												</div>
<!-- 												메뉴 basic 옵션 end -->
                                             </div>
                                            </div>
                                           </div>
                                            
                                           <div class="col-lg-3" style="text-align: right;">
                
                                             <button type="button" id="park_${vs.index}${vss.index }" style="margin-top: 35px;" 
                                             onclick="toggle_park${vs.index}${vss.index }()" class="custom_btnn <c:choose>
                                             <c:when test="${menu.m_oos eq true}">pumjeol_btn</c:when>
                                             <c:otherwise>not_pumjeol_btn</c:otherwise>
                                             </c:choose>"><c:choose>
                                             <c:when test="${menu.m_oos eq true}">해제</c:when>
                                             <c:otherwise>품절</c:otherwise>
                                             </c:choose></button> 
                                             <span class="onoff-switch"></span> 
                                             <script>
                                           //toggle버튼 기능구현

                                             function toggle_park${vs.index}${vss.index }() {

												 var m_oos = "";
												 if($("#park_${vs.index}${vss.index }").hasClass("pumjeol_btn") ==true){//품절인 상태 m_oos true
                                                 	 document.getElementById('opppp_${vs.index}${vss.index }').style.opacity = "1";
                                                 	 document.getElementById('oppp_${vs.index}${vss.index }').style.opacity = "0";
 	                                                 document.getElementById('park_${vs.index}${vss.index }').textContent = '품절';
 	                                                 $("#park_${vs.index}${vss.index }").removeClass("pumjeol_btn");
 	                                                 $("#park_${vs.index}${vss.index }").addClass("not_pumjeol_btn");
 	                                                 m_oos = "false";
                                                  }else{//품절이 아닌 상태 m_oos = false
                                                 	 
 	                                                 document.getElementById('opppp_${vs.index}${vss.index }').style.opacity = "0.25";
 	                                                 document.getElementById('oppp_${vs.index}${vss.index }').style.opacity = "0.5";
 	                                                 document.getElementById('park_${vs.index}${vss.index }').textContent = '해제';
 	                                                 $("#park_${vs.index}${vss.index }").addClass("pumjeol_btn");
 	                                                 $("#park_${vs.index}${vss.index }").removeClass("not_pumjeol_btn");
 	                                                 m_oos = "true";
                                                  }
                                                 
                                                 var m_code = $("#m__code${vs.index}${vss.index }").val();
                                                 
                                                 var param = { 
                                                		 "m_code" : m_code,
                                                		 "m_oos" : m_oos
                                                		 }
                                                 
                               		  	 		$.ajax({
                               		  	 	    	    type: "POST",
                               		  	 	    	    url: "/updateMenuPumjeol.store",
                               		  	 	    	    data: JSON.stringify(param), 
                               		  	 	    	    dataType: "json",
                               		  	 	    	    contentType: "application/json",
                               		  	 	    	    success: function (data) {
                               		  	 	    	        if (data == 1) {
                               		  	 	    	        	
                               		  	 		    	        Swal.fire({
                               		  	 		    	            icon: "success",
                               		  	 		    	            title: "품절 처리 완료",
                               		  	 		    	            showConfirmButton: false,
                               		  	 		    	            timer: 1500
                               		  	 		    	        });
                               		  	 		    	  
                               		  	 	    	        }else{alert("통신은됨");}
                               		  	 	    	    },
                               		  	 	    	    error: function (data) {
                               		  	 	    	        console.log("품절 상태 변화 통신에러");
                               		  	 	    	    }
                               		  	 		});//ajax end

                                             }
                                             
                                             </script>
                                         </div>
                                           </div>
                             
                                     </div>
                                        </a>
                                        </li>
                                        </c:if>
                                        </c:forEach>
                  <!-- ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ하나의 메뉴 끝 ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ -->
                                        </ul>   
                                      </li>
                                  </c:forEach>                
                                 <!-- ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ 하나의 메뉴그룹 끝 ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ -->     
                                </ul>
                              </nav>

                              <!--그룹 리스트 end-->
                                          </div>
<!-- ***********************************************************메뉴편집 Tab end************************************************************* -->

<!-- ***********************************************************옵션편집 Tab start************************************************************* -->
                                          <div id="faq__222" class="tab-pane">

                                             
                                             

                                              <!--옵션그룹 리스트 start-->
                                             <nav>
                                                <ul id="main_menu">
                                                <!-- 하나의 옵션 시작 ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ -->
                                                <c:forEach var="og" items="${ogList}" varStatus="ogvs">
                                                   <li><a class="menuGroup" href="javascript:">${og.og_name}</a>
                                                   <!--서브메뉴시작-->
                                                      <ul class="snd_menu sub_menu">
                                                      <!-- 하나의 옵션 시작 ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ -->
					                                   <c:forEach var="option" items="${optionList}" varStatus="opvs"> 
					                                    <c:if test="${og.og_seq eq option.og_seq }">
					                                    <input type="hidden" id="op__code${ogvs.index}${opvs.index }" value="${option.op_code }"/>
                                                         <li><a class="menu_one" >
                                                            <div class="row" style="padding: 10px;">
					                                           <div class="col-lg-8" style="text-align:left; line-height: 20px;">
                                                                  <div id="mokumoku_${ogvs.index}${opvs.index }"; class="menu_oneOption">
					                                                <h4 style="color:black;">${option.op_name}</h4>
				                                                		<ul>
					                                                		<li style="list-style-type: disc; line-height: 10px; margin-left: 25px;">
					                                              			<h5 >${option.op_price} 원</h5>
					                                             			</li>
					                                            		</ul>
                                                                    </div>
                                                                  </div>
                                                                  
                                                                  
                                                                  
                                                                  <div class="col-lg-3" style="text-align: right;padding-top:8px;">
                                                               		<button type="button" id="park_option_${ogvs.index}${opvs.index}" class="custom_btnn <c:choose>
                                                               			<c:when test="${option.op_oos eq true}">pumjeol_btn</c:when>
                                                               			<c:otherwise>not_>pumjeol_btn</c:otherwise>
                                                               			</c:choose>" 
                                                               			onclick="toggle_park_option${ogvs.index}${opvs.index}()">
                                                               			<c:choose>
                                                               			<c:when test="${option.op_oos eq true}">해제</c:when>
                                                               			<c:otherwise>품절</c:otherwise>
                                                               			</c:choose>
                                                               			
                                                               			</button> 
                                                               		<span class="onoff-switch"></span> 
                                                          	 	  </div>
                                                               </div>
                                                         	</a></li>
                                                         	
                                                         	 
                                                         	<script>
                            	//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                                         	function toggle_park_option${ogvs.index}${opvs.index}() {
                                                         		var op_oos = "";
                                                         		 if($("#park_option_${ogvs.index}${opvs.index }").hasClass("pumjeol_btn") ==true){
                                                         			document.getElementById('mokumoku_${ogvs.index}${opvs.index }').style.opacity = "1";
                                                         			document.getElementById('park_option_${ogvs.index}${opvs.index }').textContent = '품절';
                                                         			 $("#park_option_${ogvs.index}${opvs.index }").removeClass("pumjeol_btn");
                 	                                                 $("#park_option_${ogvs.index}${opvs.index }").addClass("not_pumjeol_btn");
                 	                                                 op_oos = "false";
                                                         		 }else{
                                                         			document.getElementById('mokumoku_${ogvs.index}${opvs.index }').style.opacity = "0.25";
                                                         			document.getElementById('park_option_${ogvs.index}${opvs.index }').textContent = '해제';
                                                         			 
                                                         			 $("#park_option_${ogvs.index}${opvs.index }").addClass("pumjeol_btn");
                	                                                 $("#park_option_${ogvs.index}${opvs.index }").removeClass("not_pumjeol_btn");
                	                                                 op_oos = "true";
                                                         		 }
                                                         		 
                                                         		var op_code = $("#op__code${ogvs.index}${opvs.index }").val();
                                                         		
                                                         		 var param = {
                                                                		 "op_code" : op_code,
                                                                		 "op_oos" : op_oos
                                                                		 }
//                                                          		 alert(op_code+":"+op_oos);
                                                                 
                                               		  	 		$.ajax({
                                               		  	 	    	    type: "POST",
                                               		  	 	    	    url: "/updateOptionPumjeol.store",
                                               		  	 	    	    data: JSON.stringify(param), 
                                               		  	 	    	    dataType: "json",
                                               		  	 	    	    contentType: "application/json",
                                               		  	 	    	    success: function (data) {
                                               		  	 	    	        if (data == 1) {
                                               		  	 	    	        	
                                               		  	 		    	        Swal.fire({
                                               		  	 		    	            icon: "success",
                                               		  	 		    	            title: "품절 처리 완료",
                                               		  	 		    	            showConfirmButton: false,
                                               		  	 		    	            timer: 1500
                                               		  	 		    	        });
                                               		  	 		    	  
                                               		  	 	    	        }else{alert("통신은됨");}
                                               		  	 	    	    },
                                               		  	 	    	    error: function (data) {
                                               		  	 	    	        console.log("품절 상태 변화 통신에러");
                                               		  	 	    	    }
                                               		  	 		});//ajax end
                                                         	}
                                                         		
                                                         	
                                                         	</script>
                                                         	</c:if>
                                                         	</c:forEach>
                                                         	<!-- 하나의 옵션 끝 ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ -->
                                                      	</ul>
                                                       <!--서브메뉴끝-->
                                                       </li>
                                                       </c:forEach>
                                                       <!--  옵션 끝 ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ -->
                                                	</ul>
                                             	</nav>
                                             <!--메뉴그룹 리스트 end-->
				                             
				                              </div>
				                             <!--옵션편집 end-->
                            </div>
                            
                          </div>
                        </div>

                        
                      </div>
                    
                      
                    </div>
                  
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


