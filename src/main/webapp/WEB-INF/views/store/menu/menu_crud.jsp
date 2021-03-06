<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<title>워킹오더 매장관리자 페이지</title>

<!-- Favicons -->
<link href="resources/assets/images/admin/logo/logo_only.svg" rel="icon">
<link href="resources/assets/images/admin/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Bootstrap core CSS -->
<link href="resources/assets/js/admin/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!--external css-->
<link href="resources/assets/js/admin/font-awesome/css/font-awesome.css"
	rel="stylesheet" />

<!-- Custom styles for this template -->
<link href="resources/assets/css/admin/style.css" rel="stylesheet">
<link href="resources/assets/css/admin/style-responsive.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- 경고/확인/정보전달 모달 사용을위한 js 추가 -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>


<style>
input::-webkit-inner-spin-button {
	appearance: none;
	-moz-appearance: none;
	-webkit-appearance: none;
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
	cursor: pointer;
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
	cursor: pointer;
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
	cursor: pointer;
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
	cursor: pointer;
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
	cursor: pointer;
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

.menu_oneInfoUpdate:hover , .menu_oneOptionUpdate:hover,
.menu_oneImgUpdate:hover {
	cursor: pointer;
	background-color: #190d4010;
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

.menu_oneDelete:hover{
	cursor: pointer;
	background-color: #f56c4d25;
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
	cursor: pointer;
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
	cursor: pointer;
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
	cursor: pointer;
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
	cursor: pointer;
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
	cursor: pointer;
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
	cursor: pointer;
}

.img_upload a:hover {
	font-weight: bolder;
	cursor: pointer;
}

/*이미지 수정 파일업로드*/
.input-image {
	visibility: hidden;
}
</style>


<script>
let nansu = 0;
//메뉴그룹리스트 js
  $(document).ready(function(){

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
  
//   let inside = [];
//   for(i=0;i<100000;i++){
// 	  try{
// 		  var i_string = "000";
// 		  if(i<10){i_string = "00"+ i.toString();}
// 		  else if(i<100){i_string = "0"+ i.toString();}
// 		  else {i_string = i.toString();}
// 		  inside[i] = (document.getElementById("ogogVs"+i_string).innerText).replace(/\t/g,"").replace(/\n/g,"").replace(/\s/g,"");
// 		  var inside_split = [];
// 		  inside_split = inside[i].split(",,,,");
// 		  let inside_length = inside_split.length;
// 		  inside_split.length = inside_length - 1;
		  
// 		  var unique_split = inside_split.filter((element, index) => {
// 		      return inside_split.indexOf(element) === index;
// 		  });
		  
// 		  var last_modify = unique_split.toString();
// 		  last_modify = last_modify.replace(/,/g,", ");
		  
// 		  document.getElementById("ogogVs"+i_string).innerText = last_modify;
// 	  }catch(error){
		  
// 	  }
//   }
  
  let inside_ = [];
  for(i=0;i<100;i++){
	  try{
		  inside_[i] = (document.getElementById("ogul"+i.toString()).innerText).replace(/\t/g,"").replace(/\n/g,"").replace(/\s/g,"");
		  console.log(inside_[i]);
		  var inside_split = [];
		  inside_split = inside_[i].split(",,,,");
		  var inside_length2 = inside_split.length;
		  inside_split.length = inside_length2 - 1;
		  console.log(inside_split);
		  
		  var unique_split = inside_split.filter((element, index) => {
		      return inside_split.indexOf(element) === index;
		  });
		  
		  var last_modify = unique_split.toString();
		  last_modify = last_modify.replace(/,/g,", ");
		  
		  document.getElementById("ogul"+i.toString()).innerText = last_modify;
	  }catch(error){
		  
	  }
  }
  
})//doc ready 끝



let indexnum = 1;
let indexstring = "";
let indexFinal = "";
let indexnummm = 1;
let indexstringgg = "";
let indexFinalll = "";
  //메뉴편집-메뉴그룹추가-추가하기버튼 클릭시
function addMgName(){
	 var mg_name = $("#mg_name").val();
	 //현재 가게의 storeMgList 사이즈임
	 var totalCount =${storeMgList.size()} +10;
	 totalCount++;
	 
	  console.log(mg_name);
	  console.log(totalCount);
	   var param ={"mg_name" : mg_name,
			  	"totalCount" : totalCount
			  	}; 
	   if(mg_name) {
		   $.ajax({
		 		  type: "POST",
		           url: "/addMgName.store",
		          data: JSON.stringify(param),
		           dataType: "json",
		          contentType: "application/json",
		          success:function(){
		         	  console.log("성공");
		         	 Swal.fire({
			    		  icon: "success",
			    		  title: "추가 완료",
			    		  showConfirmButton: true,
			    		  confirmButtonText: "확인",
// 			    		  timer : 1500,
						//totalCount를 jsp에서 수량으로 하면 한번에 두개 이상 추가할 수 없음 (mg_code 중복돼서)
					}).then((result) => {
						  if (result.isConfirmed) {
							  //일단 바로바로 화면 반영은 당장 힘들어서 새로고침부터했음
							  location.href="/CRUD.store";
						  }//if (result.isConfirmed)
						});//then((result)
		           }
		 	  })  
			  
		  }else {
			  console.log("없음");
		  }
	 
}


</script>


</head>

<body>
<input type="hidden" id="si_code" value="${storeSession.si_code }"/>
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
						<a><img src="${storeSession.si_image }"
							class="img-circle" width="80"></a>
					</p>
					<h5 class="centered">${storeSession.si_name } ${storeSession.si_loc}</h5>
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
							<li><a class="active" id="store-mng" href="CRUD.store">메뉴관리
									(추가 / 수정)</a></li>
							<li><a id="store-menu" href="pumjeol.store">품절 관리</a></li>
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
							메뉴관리(추가/삭제)
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
															href="#faq__111">메뉴편집</a></li>
														<li><a data-toggle="tab" href="#faq__222">옵션편집</a></li>
														<li><a data-toggle="tab" href="#faq__333">주문안내/원산지</a>
														</li>
													</ul>
												</div>
												<div class="panel-body col-lg-12">
													<div class="tab-content">

<!-- ***********************************************************메뉴편집 Tab start************************************************************* -->
														<div id="faq__111" class="tab-pane active">
															<div class="row" style="text-align: right;">
																<a data-toggle="modal" href="#addMenuGroup"
																	class="menu_addMenuGroup"> + 메뉴그룹추가</a>
															</div>
															
															
									<!--#################### +메뉴그룹 추가 modal start#######################-->

															<div class="modal fade" id="addMenuGroup" role="dialog">
																<div class="modal-dialog"><div class="modal-content">
																		<div class="modal-header">
																			<!-- header -->
																			<h4 class="modal-title">메뉴그룹 추가</h4>
																			<button type="button" class="close"
																				data-dismiss="modal"
																				style="font-size: 20px; color: black;">취소</button>
																			</div>
																		<div class="modal-body">
																			<!-- body -->
																			<table class="modal_table">
																				<ul>
																					<li style="margin: 15px; padding-bottom: 10px;">
																						<h5 style="font-size: 15px; font-weight: bolder; color: black;">메뉴그룹명</h5>
																						<div class="row">
																							<div class="col-lg-12">
																								<input class="form-control" id="mg_name"
																									style="width: relative; font-size: 15px;"
																									type="text" placeholder="예)스무디">
																							</div>
																						</div>
																					</li>
																					<li>
																						<div class="row">
																							<div class="col-lg-12">
																								<button type="button" class="save_Btn" id="add_menuGroupName"
																									onclick="addMgName()" style="margin-top: 50px;">추가하기</button>
																							</div>
																						</div>
																					</li>
																				</ul>

																			</table>
																		</div>
						
																	</div>
																</div>
															</div>

									<!--####################메뉴그룹 추가 modal end#######################-->

									<!--************************메뉴(그룹) List start********************-->
															<nav>
																<ul id="main_menu">
																	<c:forEach var="mg" items="${storeMgList}"
																		varStatus="vs">
																		<li><div id="menugroupBtns${vs.index}"><button type="button"
																				class="btn btn-danger btn-xs deleteMenuGroup" value="${mg.mg_code}" 
																				fordelete="menuGroup${vs.index}"
																				fordelete2 = "menuGroupUl${vs.index}"
																				fordelete3 = "menugroupBtns${vs.index}"
																				style="float: right; margin-right: 10px; margin-top: 15px;">
																				<i class="fa fa-trash-o "></i>
																			</button>
																			<button type="button" class="btn btn-primary btn-xs updateMenuGroup"
																				forupdate="menuGroup${vs.index}"
																				value="${mg.mg_code}" 
																				mg_name="${mg.mg_name}"
																				style="float: right; margin-right: 10px; margin-top: 15px;">
																				<i class="fa fa-pencil"></i>
																			</button></div>
																			
																			<a class="menuGroup" href="javascript:" id="menuGroup${vs.index}">${mg.mg_name }
																			
																		</a> 
																		
																		<!--*******메뉴 start*******-->
																			<ul class="snd_menu sub_menu" id="menuGroupUl${vs.index}">
																			
																			<c:forEach var="menu" items="${storeMenuList}"
																					varStatus="vss">
																					<c:if test="${menu.mg_code eq mg.mg_code }">
																					<input type="hidden" id="m_name${vs.index}${vss.index}" value="${menu.m_name }"/>
																					<input type="hidden" id="m_code${vs.index}${vss.index}" value="${menu.m_code }"/>
																					<input type="hidden" id="m_seq${vs.index}${vss.index}" value="${menu.m_seq }"/>
																					<input type="hidden" id="m_oos${vs.index}${vss.index}" value="${menu.m_oos }"/>
																					<input type="hidden" id="m_img_file${vs.index}${vss.index}" value="${menu.m_img_file }"/>
																						<li><a class="menu_one" id="menu_one${vs.index}${vss.index}">
																								<div class="row">
																									<div class="col-lg-2"
																										style="text-align: left; margin-left: 20px;">
																										<img src="${menu.m_img_file }"
																											style="width: 100px; height: 100px; border: 1px solid rgba(0, 0, 0, 0.692); border-radius: 5px; padding: 10px; margin: 10px;">
																									</div>
																									<div class="col-lg-8"
																										style="text-align: left; margin-top: 5px;">

																										<h4
																											style="font-weight: bolder; margin-left: 0;">${menu.m_name }
																										</h4>
																										<!-- 메뉴 basic 옵션 start -->
																										<div class="menu_oneOption">
																										<c:forEach var="basicOpList" items="${basicOpList}" varStatus="basicOpVs">
																		<c:if test="${basicOpList.m_code eq menu.m_code }">
																												<h6 style="margin-top: 0; font-weight: bolder;">${basicOpList.opb_name}
																												: <fmt:formatNumber	value="${basicOpList.opb_price}" pattern="###,###" /> 
																																					</h6>
																												</c:if>
																										</c:forEach>
																										</div>
																										<!-- 메뉴 basic 옵션 end -->
																									</div>
																								</div>

																						</a>
																							<ul class="trd_menu sub_menu" id="sub_menu_one${vs.index}${vss.index}" m_seq="${menu.m_seq}" m_code="${menu.m_code}">
																								<li><a class="menu_oneInfoUpdate"
																									data-toggle="modal"
																									href="#menu_oneInfoUpdate${vs.index}${vss.index}">메뉴정보수정</a></li>
																								<li><a class="menu_oneOptionUpdate" data-toggle="modal" href="#menu_updateOption${vs.index}${vss.index}">옵션설정</a></li>
																								<li><a class="menu_oneImgUpdate" data-toggle="modal" href="#menu_updateImg${vs.index}${vss.index}" onclick="imageClick${vs.index}${vss.index}()">이미지변경</a></li>
																								<li><a class="menu_oneDelete" onclick="deleteMenu${vs.index}${vss.index}()">메뉴삭제</a></li>
																							</ul></li>
																					</c:if>
																					
	<script>
	
	//이미지 업로드 버튼 클릭해서 모달 띄울 때 eventlistener
	function imageClick${vs.index}${vss.index}(){
		  // input file에 change 이벤트 부여
	    let inputImage = document.getElementById("input-image${vs.index}${vss.index}");
		  
	   inputImage.addEventListener("change", e => {
	       readImage${vs.index}${vss.index}(e.target);
	   })
	}
	
	//이미지수정 이미지파일 추가
	 function readImage${vs.index}${vss.index}(input) {
	    // 인풋 태그에 파일이 있는 경우
	    if(input.files && input.files[0]) {
	        // FileReader 인스턴스 생성
	        var reader = new FileReader();
	        // 이미지가 로드가 된 경우
	        reader.onload=function(e) {   
        	//화면에 바꿔줌
            var previewImage = document.getElementById("preview-image${vs.index}${vss.index}");
            previewImage.src = e.target.result;
            previewImage.style.display = "block";
            var label = document.getElementById("addImgLabel${vs.index}${vss.index}");
            label.style.display = "none";
            var label2 = document.getElementById("fixImgLabel${vs.index}${vss.index}");
            label2.style.display = "block";
	            
	        }
	        // reader가 이미지 읽도록 하기
	        reader.readAsDataURL(input.files[0]);
	        
	    }
	} 
	 
	 //이미지 업로드 버튼
	 function uploadMenuImage${vs.index}${vss.index}(){
		 //죽복 이미지이름 방지
		 nansu = Math.floor(Math.random() * 1000); //0~999 
		 uploadImage${vs.index}${vss.index}();
	 }
	 
// 		 // 이미지 업로드 실제 S3로 
	    uploadImage${vs.index}${vss.index} = () => {
	        AWS.config.update({
	            region: 'ap-northeast-2',
	            credentials: new AWS.CognitoIdentityCredentials({
	                IdentityPoolId: '<spring:eval expression='@config.getProperty("S3_POOL_ID")'/>',
	            })
	        })
			let si_code = $("#si_code").val();
	        let files = document.getElementById("input-image${vs.index}${vss.index}").files;
	        let file = files[0];
	        let fileName = file.name;
	        fileName = si_code +"_"+ nansu +"___"+ fileName;
			
	        let upload = new AWS.S3.ManagedUpload({
	            params: {
	                Bucket: 'walkingorder/menu_img_store',
	                Key: fileName,
	                ContentType : "image/jpeg",
	                Body: file
	            }
	        })
	        const promise = upload.promise();
	        
	      //ajax
	      var m_code = $("#m_code${vs.index}${vss.index}").val();
	      var param = {
	   			"m_pending_img":"https://walkingorder.s3.ap-northeast-2.amazonaws.com/menu_img_store/"+fileName,
	   			"m_code": m_code,
	   			"si_code": si_code
	      };
	 		$.ajax({
	    	    type: "POST",
	    	    url: "/uploadmenuimage.store",
	    	    data: JSON.stringify(param), 
	    	    dataType: "json",
	    	    contentType: "application/json",
	    	    success: function (data) {
	    	        if (data == 1) {
		    	        Swal.fire({
		    	            icon: "success",
		    	            title: "이미지 승인 신청 완료",
		    	            showConfirmButton: false,
		    	            timer: 1500
		    	        });
	    	        }else if(data == 0){
	    	        	Swal.fire({
		    	            icon: "warning",
		    	            title: "이미지 신청 실패",
		    	            content: "이미 신청 중인 이미지가 있습니다.",
		    	            showConfirmButton: false,
		    	            timer: 1500
		    	        });
	    	        }
	    	    },
	    	    error: function (data) {
	    	        console.log("메뉴추가 통신에러");
	    	    }
	 		});//ajax end
	        
	        
	        
	    }
	 
	//가격옵션추가 눌렀을때 input 나오게하기.
	function addPO${vs.index}${vss.index}(){
		indexstringgg = indexnummm.toString();
		indexFinalll = ${vs.index}+${vss.index}+indexstringgg;
		$('#addPriceOptionBtn${vs.index}${vss.index}').append("<div id='menuOne__"+indexFinalll+"' class='add_priceoption' style='margin:0;'> <div class='row' style='margin-left: 5px;'>"
			+"<div class='col-lg-5' style='padding: 5px;'> <input class='form-control NAMENAMENAMENAME'"
			+"id='menu_basic_name"+indexFinalll+"' forCheck='"+indexFinalll+"' style='width: relative; font-size: 15px;' type='text' placeholder='ex) ice'>"
			+"</div> <div class='col-lg-5' style='padding: 5px;'> "
			+"<input class='form-control PRICEPRICEPRICEPRICE' forCheck='"+indexFinalll+"'"
			+"style='width: relative; font-size: 15px;' type='number' placeholder='ex) 1500' id='menu_basic_name"+indexFinalll+"'>"
			+"</div> <div class='col-lg-2' style='padding: 5px;'> <button type='button'"
			+" class='btn btn-danger btn-xs deleteMenu' value='${menu.m_code}' "
			+"fordelete='"+indexFinalll+"' style='float: left; margin-top: 7px;'> <i class='fa fa-trash-o '></i> </button>"
			+"</div></div></div>");  
		
 	  indexnummm++;
	
 	 //메뉴 삭제
 		$(".deleteMenu").click(function() {
 			var m_codeforDelete = $(this).attr("value"); //m_code
 			var fordelete = $(this).attr("fordelete"); // ${vs.index}${vss.index}
 			var fordelete2 = "menutwo__"+fordelete;
 			//삭제 확인
//  			Swal.fire({
// 	 			  title: "삭제하시겠습니까??",
//  				  icon: "warning",
//  				  showCancelButton: true,
//  				  confirmButtonColor: "#3085d6",
//  				  cancelButtonColor: "#d33",
//  				  confirmButtonText: "삭제",
//  				  cancelButtonText: "아니오"
//  				}).then((result) => {
//  				  if (result.isConfirmed) {
 					 $("#"+"menuOne__"+fordelete).remove();
 		 			//확인창에서도 삭제
 		 			$("#"+fordelete2).remove();
//  				  }//if (result.isConfirmed)
//  				})//then((result)
 			  
 		});//메뉴 삭제 끝
		  
		  //확인창에도 옵션 누적시켜줄거임
   	$('#priceOne__${vs.index}${vss.index}').append('<h4 id="menutwo__'+indexFinalll+'" style="margin-left: 0px;">'
   	+'<span id="menutwo_name_'+indexFinalll+'">미입력</span> : '
   	+'<span id="menutwo_price_'+indexFinalll+'">미입력</span>CUTCUTCUT</h4>');
    
   	$(".NAMENAMENAMENAME").on("propertychange change keyup paste input",
			function() {
   		var indexFinall = $(this).attr("forCheck");
   		console.log(indexFinall);
	  var newmenu_basic_price_input = $(this).val();
	  if(newmenu_basic_price_input==""){newmenu_basic_price_input = "미입력";}
	  //메뉴추가 메뉴명 입력시 확인하기 모달로 전달
	  var newMenu_option = document.getElementById("menutwo_name_"+indexFinall);
	  newMenu_option.innerText = newmenu_basic_price_input;
  });
   	
   	$(".PRICEPRICEPRICEPRICE").on("propertychange change keyup paste input",
			function() {
   		var indexFinall = $(this).attr("forCheck");
   		console.log(indexFinall);
	  var newmenu_basic_price_input = ($(this).val()).toString();
	  if(newmenu_basic_price_input==""){newmenu_basic_price_input = "미입력";}
	  //메뉴추가 메뉴명 입력시 확인하기 모달로 전달
	  var newMenu_option = document.getElementById("menutwo_price_"+indexFinall);
	  newMenu_option.innerText = newmenu_basic_price_input;
  });
} 	
	
	//asdasdasdasd
	$(document).ready(function(){
		//이름들
		var newMenu_name = document.getElementById("menu_name${vs.index}${vss.index}");
		newMenu_name.innerText = $("#newmenu_name_input_${vs.index}${vss.index}").val();
		//원래 이름
		var original_Menu_name = document.getElementById("menu_original_name${vs.index}${vss.index}");
		original_Menu_name.innerText = $("#newmenu_name_input_${vs.index}${vss.index}").val();
		//메뉴 코드
		var original_Menu_code = document.getElementById("menu_original_code${vs.index}${vss.index}");
		original_Menu_code.innerText = $("#newmenu_code_input_${vs.index}${vss.index}").val();
		//메뉴 시퀀스
		var original_Menu_seq = document.getElementById("menu_original_seq${vs.index}${vss.index}");
		original_Menu_seq.innerText = $("#newmenu_seq_input_${vs.index}${vss.index}").val();
		
		  $("#newmenu_name_input_${vs.index}${vss.index}").on("propertychange change keyup paste input",
					function() {
			  var newmenu_basic_name_inputnewMenu_name_input = $("#newmenu_name_input_${vs.index}${vss.index}").val();
			  //메뉴추가 메뉴명 입력시 확인하기 모달로 전달
			  var newMenu_name = document.getElementById("menu_name${vs.index}${vss.index}");
			  newMenu_name.innerText = newmenu_basic_name_inputnewMenu_name_input;
		  });
	})
	
   	function menuupdateBtn${vs.index}${vss.index}(){
   		var mg_seq = $("#mg_seq${vs.index}").val();
		var mg_code = $("#mg_code${vs.index}").val();
		var m_name = $("#m_name${vs.index}${vss.index}").val();
		var m_code = $("#m_code${vs.index}${vss.index}").val();
		var m_seq = $("#m_seq${vs.index}${vss.index}").val();
   		var zzzz = document.getElementById("hwakin_chang__${vs.index}${vss.index}").innerText;
   		console.log(zzzz);
   		//이게 없으면 메뉴를 다 삭제했다는 것을 의미
   		if(zzzz.indexOf(" : ")==-1){
      		 Swal.fire({
   	            icon: "error",
   	            title: "최소 한 개의 기본옵션 필요합니다",
   	            html: "<br><br>",
   	            showConfirmButton: true,
   	            confirmButtonText: "확인",
   	            confirmButtonColor: "#3085d6"
   	        });
      	} else if(zzzz.indexOf("미입력")!=-1){ //미입력한 부분이 있으면 안됨~
      		 Swal.fire({
 	            icon: "error",
 	            title: "미입력한 부분을 확인해주세요",
 	            html: "<br><br>",
 	            showConfirmButton: true,
 	            confirmButtonText: "확인",
 	            confirmButtonColor: "#3085d6"
 	        });
    	}
   		else{
   			//innerText 가공
   			var dataa = zzzz.split("메뉴이름:")[1];
   			var menuname = dataa.split("CUTCUTCUT")[0];
   			var menus = dataa.split("CUTCUTCUT");
   			var menulength = menus.length; //-2가 총 수량, 처음과 마지막은 다른 정보
			var content_text = "<br>";
   			for(i=1;i<menulength-1;i++){
   				// : 기준 오른쪽(금액)만 컴마 처리 
   				menus[i] = menus[i].split(" : ")[0] + " : " + menus[i].split(" : ")[1].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
   				content_text += "<p style='font-size:14px'>"+menus[i]+" 원<p>";
   			}
   			content_text = content_text.replace(/\\t/gi,"");
   			Swal.fire({
   				title: "아래와 같이 변경하시겠습니까?",
				html : '<p style="font-size:16px;">메뉴명 : '+menuname+'</p>'
						+content_text,
   				icon: "warning",
   				showCancelButton: true,
   				confirmButtonColor: "#3085d6",
   				cancelButtonColor: "#d33",
   				confirmButtonText: "확인",
   				cancelButtonText: "아니오"
   			}).then((result) => {
   				if (result.isConfirmed) {
   				//ajax
   		   			var paramm = {
   		   					"mg_seq" : mg_seq,
   		   					"mg_code" : mg_code,
   		   					"m_seq" : m_seq,
   		   					"m_name" : m_name,
   		   					"m_code" : m_code,
   		   					"opb_total" : zzzz
   		   			};
   		  	 		$.ajax({
   		  	 	    	    type: "POST",
   		  	 	    	    url: "/updateMenu.store",
   		  	 	    	    data: JSON.stringify(paramm), 
   		  	 	    	    dataType: "json",
   		  	 	    	    contentType: "application/json",
   		  	 	    	    success: function (data) {
   		  	 	    	        if (data == 1) {
   		  	 		    	        Swal.fire({
   		  	 		    	            icon: "success",
   		  	 		    	            title: "메뉴 수정 완료",
   		  	 		    	            showConfirmButton: false,
   		  	 		    	            timer: 1500
   		  	 		    	        });
   		  	 		    	        location.href = location.href;
   		  	 	    	        }else{alert("통신은됨");}
   		  	 	    	    },
   		  	 	    	    error: function (data) {
   		  	 	    	        console.log("메뉴추가 통신에러");
   		  	 	    	    }
   		  	 		});//ajax end
   				
   				}//if (result.isConfirmed)
   			})//then((result)
   			
   		}
   	}//menuupdateBtn끝
   	
   	function deleteMenu${vs.index}${vss.index}(){
   		var m_code = $("#sub_menu_one${vs.index}${vss.index}").attr("m_code");
   		var m_seq = $("#sub_menu_one${vs.index}${vss.index}").attr("m_seq");
   		var param = {"m_code":m_code,"m_seq":m_seq};
   		Swal.fire({
			  title: "진짜삭제되니까 테스트용 메뉴만 삭제하세요",
//			  title: "삭제하시겠습니까??",
			  html: "<p>진짜 삭제된다!@!@#</p><p>진짜 삭제된다!@!@#</p><p>진짜 삭제된다!@!@#</p><p>진짜 삭제된다!@!@#</p><p>진짜 삭제된다!@!@#</p>",
			  icon: "warning",
			  showCancelButton: true,
			  confirmButtonColor: "#3085d6",
			  cancelButtonColor: "#d33",
			  confirmButtonText: "삭제",
			  cancelButtonText: "아니오"
			}).then((result) => {
			  if (result.isConfirmed) {
			 		$.ajax({
	 	 		  type: "POST",
	 	           url: "/deleteMenu.store",
	 	          data: JSON.stringify(param),
	 	           dataType: "json",
	 	          contentType: "application/json",
	 	          success:function(data){
	 	        	  if(data==1){
	 	         	 	console.log("삭제 성공");
	 	         	 	$("#menu_one${vs.index}${vss.index}").remove();
	 	          		$("#sub_menu_one${vs.index}${vss.index}").remove();
	 	         	 	//숨겨버릴거임 
		 	         	 Swal.fire({
					  		  icon: "success",
					  		  title: "삭제 완료",
					  		  showConfirmButton: false,
					  		  timer: 1500
						 });
	 	        	  }
	 	           },
		           error:function(data){
			          console.log("삭제");
		          }
	 	 	  	});//ajax  
			  }//if (result.isConfirmed)
			})//then((result)
   		
   	}//deleteMenu끝
	
	</script>
	<!-- 확인용 -->
	<div class="row" id="hwakin_chang__${vs.index}${vss.index}" style="display:none;">
		<h4>메뉴원본이름:<span id="menu_original_name${vs.index}${vss.index}"></span>CUTCUTCUT</h4>
		<h4>메뉴code:<span id="menu_original_code${vs.index}${vss.index}"></span>CUTCUTCUT</h4>
		<h4>메뉴seq:<span id="menu_original_seq${vs.index}${vss.index}"></span>CUTCUTCUT</h4>
		<h4>메뉴이름:<span id="menu_name${vs.index}${vss.index}"></span>CUTCUTCUT</h4>
		<h4 id="priceOne__${vs.index}${vss.index}" style="margin-left: 10px;">
					
		</h4>
	</div>	 
																					<!------------- 메뉴편집_메뉴정보수정 Modal start-------------->
									
																					<div class="modal fade"
																						id="menu_oneInfoUpdate${vs.index}${vss.index}"
																						role="dialog">
																						<div class="modal-dialog">
																						<div class="modal-content">
																								<div class="modal-header">
																									<!-- header -->
																									<h4 class="modal-title">메뉴정보수정</h4>
																									<h3
																										style="color: black; font-weight: bolder; text-align: center;">[${menu.m_name}]</h3>
																									<button type="button" class="close"
																										data-dismiss="modal"
																										style="font-size: 20px; color: black;">취소</button></div>
																								<div class="modal-body">
																									<!-- body -->
																									<table class="modal_table">
																										<ul>
																											<li
																												style="border-bottom: 1px solid black; margin: 15px; padding-bottom: 10px;">
																												<h5
																													style="font-size: 15px; font-weight: bolder; color: black;">메뉴명</h5>
																												<div class="row">
																													<div class="col-lg-12">
																														<input class="form-control" id="newmenu_name_input_${vs.index}${vss.index}"
																															style="width: relative; font-size: 15px;"
																															type="text" value="${menu.m_name }">
																														<input type="hidden" id="newmenu_seq_input_${vs.index}${vss.index}"
																															type="text" value="${menu.m_seq }">
																															<input type="hidden" id="newmenu_code_input_${vs.index}${vss.index}"
																															type="text" value="${menu.m_code }">
																													</div>
																												</div>
																											</li>
																											<li
																												style="border-bottom: 1px solid black; margin: 15px; padding-bottom: 10px;">
																												<h5
																													style="font-size: 15px; font-weight: bolder; color: black; margin-top: 20px">가격</h5>

																												<c:forEach var="basicOpList" items="${basicOpList}" varStatus="basicOpVs">
																														<c:if test="${basicOpList.m_code eq menu.m_code }">
																														<div class="add_priceoption">
																													<input type="hidden" id="opb_code${vs.index}${vss.index}${basicOpVs.index}" value="${basicOpList.opb_code }"/>
																													<div  class="row" id="zzz${vs.index}${vss.index}${basicOpVs.index}" style="margin-left: 5px;">
																														<div class="col-lg-5"
																															style="padding: 5px;">
																															<input class="form-control" id="newmenu_basic_name_input_${vs.index}${vss.index}${basicOpVs.index}" 
																																style="width: relative; font-size: 15px;"
																																type="text" value="${basicOpList.opb_name}">
																														</div>
																														<div class="col-lg-5"
																															style="padding: 5px;">
																															<input class="form-control" id="newmenu_basic_price_input_${vs.index}${vss.index}${basicOpVs.index}"
																																style="width: relative; font-size: 15px;"
																																type="number" value="${basicOpList.opb_price}">
																														</div>
																														<div class="col-lg-2"
																															style="padding: 5px;">
																															<button type="button"
																																class="btn btn-danger btn-xs deleteMenuOriginal" value="${menu.m_code}" 
																																fordelete="${vs.index}${vss.index}${basicOpVs.index}"
																																style="float: left; margin-top: 7px;">
																																<i class="fa fa-trash-o "></i>
																															</button>
																														</div>
																													</div>
																													</div>
																													<script>
				//asdasdasdasd
				$(document).ready(function(){
						$('#priceOne__${vs.index}${vss.index}').append('<h4 id="menutwo__${vs.index}${vss.index}${basicOpVs.index}" style="margin-left: 0px;">'
						   	+'<span id="menutwo_name_${vs.index}${vss.index}${basicOpVs.index}">'+$("#newmenu_basic_name_input_${vs.index}${vss.index}${basicOpVs.index}").val()+'</span> : '
						   	+'<span id="menutwo_price_${vs.index}${vss.index}${basicOpVs.index}">'+$("#newmenu_basic_price_input_${vs.index}${vss.index}${basicOpVs.index}").val()+'</span>CUTCUTCUT</h4>');
					  
						
						$("#newmenu_basic_name_input_${vs.index}${vss.index}${basicOpVs.index}").on("propertychange change keyup paste input",
								function() {
						  var newmenu_basic_name_input = $("#newmenu_basic_name_input_${vs.index}${vss.index}${basicOpVs.index}").val();
						  //메뉴추가 메뉴명 입력시 확인하기 모달로 전달
						  var newMenu_option = document.getElementById("menutwo_name_${vs.index}${vss.index}${basicOpVs.index}");
						  newMenu_option.innerText = newmenu_basic_name_input;
					  });
					  
					  $("#newmenu_basic_price_input_${vs.index}${vss.index}${basicOpVs.index}").on("propertychange change keyup paste input",
								function() {
						  var newmenu_basic_price_input = $("#newmenu_basic_price_input_${vs.index}${vss.index}${basicOpVs.index}").val();
						  //메뉴추가 메뉴명 입력시 확인하기 모달로 전달
						  var newMenu_option = document.getElementById("menutwo_price_${vs.index}${vss.index}${basicOpVs.index}");
						  newMenu_option.innerText = newmenu_basic_price_input;
					  });
					  
					  
					})//doc ready 끝
					</script>
																													</c:if>
																													</c:forEach>
																													<div id="addPriceOptionBtn${vs.index}${vss.index}"></div>
																													<div class="row">
																									<a class="menu_addOptionGroup" onclick="addPO${vs.index}${vss.index}()" >
																										<h4 style="color: blue; padding: 10px; margin-right: 65px;">
																											+가격옵션 추가</h4>
																									</a>
																								</div>	
																											</li>
																											
																											
																											<li>
																												<div class="row">
																													<div class="col-lg-12">
																														<button type="button" class="save_Btn" onclick="menuupdateBtn${vs.index}${vss.index}()">적용하기</button>
																													</div>
																												</div>
																											</li>
																										</ul>

																									</table>
																								</div>
																							</div>
																						</div>
																					</div>
																					
																					<!-------------메뉴편집_메뉴정보수정 Modal end--------------->
																					
																					<!-------------메뉴편집_메뉴옵션수정 Modal start-------------->
																	<div class="modal fade" id="menu_updateOption${vs.index}${vss.index}"
																		role="dialog">
																		<div class="modal-dialog">
																			<div class="modal-content">
																				<div class="modal-header">
																					<!-- header -->
																					<h4 class="modal-title">메뉴옵션수정</h4>
																					<h3 style="color: black; font-weight: bolder; text-align: center;">[${menu.m_name}]</h3>
																					<button type="button" class="close"
																						data-dismiss="modal"
																						style="font-size: 20px; color: black;">취소</button>
																				</div>
																				<div class="modal-body">
																					<!-- body -->
																					<table class="modal_table">
																						<ul>
																						<li style="border-bottom: 1px solid black; margin: 15px; padding-bottom: 10px;">
																								<c:set var="ogog" value="dd"></c:set>
																								<c:set var="ogogog" value="ff"></c:set>
																								<c:set var="ogogogog" value="fff"></c:set>
																								<c:set var="ogogogogog" value="ffff"></c:set>
																								<c:set var="ogogogogogog" value="ffffff"></c:set>
																								<c:set var="ogogogogogogog" value="fffffff"></c:set>
																								<c:set var="ogogogogogogogog" value="ffffffff"></c:set>
																								<c:forEach var="MAOList" items="${MAOList}" varStatus="MAOVss">
																								<c:if test="${ MAOList.m_code eq menu.m_code }">
																								<c:if test="${ogog ne MAOList.og_code && ogogog ne MAOList.og_code && 
																								ogogogog ne MAOList.og_code&& ogogogogog ne MAOList.og_code&& ogogogogogog ne MAOList.og_code
																								&& ogogogogogogog ne MAOList.og_code&& ogogogogogogogog ne MAOList.og_code}">
																								<div class="option_1" style="border: 1px solid rgba(0, 0, 0, 0.164); border-radius: 3px; padding: 10px; margin-top: 10px;">
																									<div class="row">
																										<div class="col-sm-9">
																											<h4 style="font-weight: bolder; color: black;">${MAOList.og_name}</h4>
<h5 style="margin-left: 10px;">
<c:forEach var="optionList" items="${optionList }">
<c:if test="${optionList.og_seq eq MAOList.og_seq}">
${optionList.op_name},
</c:if>
</c:forEach>
</h5>
																									</div>
																										<div class="col-sm-3">
																											<input type="button" class="menu_option_undo"
																												value="해제">
																										</div>
																									</div>
																								</div>
																								<c:if test="${MAOVss.index%7 eq 0 }">
																									<c:set var="ogog" value="${MAOList.og_code}" />
																								</c:if>
																								<c:if test="${MAOVss.index%7 eq 1 }">
																									<c:set var="ogogog" value="${MAOList.og_code}" />
																								</c:if>
																								<c:if test="${MAOVss.index%7 eq 2 }">
																									<c:set var="ogogogog" value="${MAOList.og_code}" />
																								</c:if>
																								<c:if test="${MAOVss.index%7 eq 3 }">
																									<c:set var="ogogogogog" value="${MAOList.og_code}" />
																								</c:if>
																								<c:if test="${MAOVss.index%7 eq 4 }">
																									<c:set var="ogogogogogog" value="${MAOList.og_code}" />
																								</c:if>
																								<c:if test="${MAOVss.index%7 eq 5 }">
																									<c:set var="ogogogogogogog" value="${MAOList.og_code}" />
																								</c:if>
																								<c:if test="${MAOVss.index%7 eq 6 }">
																									<c:set var="ogogogogogogogog" value="${MAOList.og_code}" />
																								</c:if>
																								</c:if>
																								</c:if>
																								</c:forEach>
																								<div class="row">
																									<a class="menu_addOptionGroup" data-toggle="modal" href="#menu_addOptionGroup${vs.index}${vss.index}" >
																										<h4 style="color: blue; padding: 10px; margin-right: 65px;">+
																											옵션그룹 추가</h4>
																									</a>
																								</div>
																								<div class="row">
																									<div class="col-lg-12">
																										<button type="button" class="save_Btn">적용하기</button>
																									</div>
																								</div>
																							</li>
																						</ul>
																					</table>
																				</div>
																			</div>
																		</div>
																	</div>

																	<!-------------메뉴편집_메뉴옵션수정 Modal end--------------->
																	<!-------------메뉴편집_메뉴옵션수정_옵션추가 Modal start--------------->
																	<div class="modal fade" id="menu_addOptionGroup${vs.index}${vss.index}"
																		role="dialog"
																		style="max-height: 850px; overflow-y: initial;">
																		<div class="modal-dialog">
																		<div class="modal-content">
																				<div class="modal-header">
																					<!-- header -->
																					<h4 class="modal-title">옵션그룹추가</h4>
																					<h3 style="color: black; font-weight: bolder; text-align: center;">[${menu.m_name}]</h3>
																					<button type="button" class="close"
																						data-dismiss="modal"
																						style="font-size: 20px; color: black;">취소</button>
																						</div>
																				<div class="modal-body"
																					style="height: 800px; overflow-y: scroll;">
																					<!-- body -->

																					<div class="row">
																						<h5
																							style="background-color: #61616128; padding: 15px; margin: 10px; border-radius: 4px;">
																							새로운 옵션 그룹이 필요하신 경우 <span
																								style="color: blue; font-weight: bolder;">옵션편집-옵션추가</span>를
																							이용해주세요.
																						</h5>
																					</div>
																					 
																					 <c:forEach var="ogList" items="${ogList}" varStatus="ogogVs">
																					 <!-- 장바구니 빈칸 용 기본 옵션 ' '은 제외하고 출력   -->
																					 <c:if test="${ogList.og_code ne ' '}"> 
																					<label for="chbox1" class="menu_addOptionGroup1"
																						style="border: 1px solid rgba(0, 0, 0, 0.164); border-radius: 3px; padding: 10px; margin-top: 10px; width: 580px;">
																						<div class="row">
																						
																						<div class="col-lg-1">
																						<input id="chbox1${vs.index}${vss.index}${ogogVs.index}" name="op_check${vs.index}${vss.index}" type="checkbox"
																									style="width: 30px; height: 30px;" value="${ogList.og_seq}" og_code="${ogList.og_code}"
																									 <c:forEach var="MAOList" items="${MAOList}">
																						<c:if test="${MAOList.m_code eq menu.m_code}">
																						<c:if test="${MAOList.og_code eq ogList.og_code}">
																						checked
																						</c:if>
																						</c:if>
																						</c:forEach>
																									 
																									 >
																							
																							</div>
																							<div class="col-lg-10">
																								<h3
																									style="font-size: 20px; color: black; margin: 0; font-weight: bolder;">${ogList.og_name}</h3>
																								<h6 style="line-height: 10px; padding-bottom: 20;">
																									<c:forEach var="optionList" items="${optionList}">
																									<c:if test="${ogList.og_seq eq optionList.og_seq }">
																										${optionList.op_name},
																									</c:if>
																									</c:forEach>
																									</h6>
																							</div>
																						</div>
																						<div class="row">
																							<div class="option_linkMenu"
																								style="background-color: #2e279627; padding: 10px; margin: 15px;">
																								<h5 style="color: black;">
																									<span style="background-color: #2e27963d; font-weight: bolder;">연결메뉴</span> 연결된
																									메뉴를 확인하세요.
																								</h5>
<h6 id="ogogVs${vs.index}${vss.index}${ogogVs.index}">
<c:set var="nm" value="ff"></c:set>
<c:set var="nmm" value="fff"></c:set>
<c:set var="nmmm" value="ffff"></c:set>
<c:set var="nmmmm" value="fffff"></c:set>
<c:forEach var="MAOList" items="${MAOList}" varStatus="mmm">
<c:if test="${MAOList.og_code eq ogList.og_code}">
<c:if test="${nm ne MAOList.m_name && nmm ne MAOList.m_name && nmmm ne MAOList.m_name && nmmmm ne MAOList.m_name}">
${MAOList.m_name}<c:if test="${not mmm.last}">, </c:if>
<c:if test="${mmm.index%4 eq 0 }">
	<c:set var="nm" value="${MAOList.m_name}" />      
</c:if>
<c:if test="${mmm.index%4 eq 1 }">
	<c:set var="nmm" value="${MAOList.m_name}" />      
</c:if>
<c:if test="${mmm.index%4 eq 2 }">
	<c:set var="nmmm" value="${MAOList.m_name}" />      
</c:if>
<c:if test="${mmm.index%4 eq 3 }">
	<c:set var="nmmmm" value="${MAOList.m_name}" />      
</c:if>
</c:if>
</c:if>
</c:forEach>
</h6>
																							</div>
																						</div>
																					</label>
																					</c:if>
																					</c:forEach>
																					<!-- ogList forEach END -->
																					<div class="row" style="overflow-y: auto;">
																						<div class="col-lg-12">
																							<button type="button" onclick="optionSave${vs.index}${vss.index}()" class="save_Btn">옵션그룹 수정하기</button>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																	<script>
																	function optionSave${vs.index}${vss.index}(){
																		var query = 'input[name="op_check${vs.index}${vss.index}"]:checked';
																	      var selectedEls = document.querySelectorAll(query);
																	      //og_seq만
																	      let og_seq = '';
																	      selectedEls.forEach((el) => {
																	    	  og_seq += el.value + ",";
																	      })
																	      var mg_seq = $("#mg_seq${vs.index}").val();
																		  var mg_code = $("#mg_code${vs.index}").val();
																		  var mg_name = $("#mg_name${vs.index}").val();
																	      var m_code = $("#m_code${vs.index}${vss.index}").val();
																	      var m_seq = $("#m_seq${vs.index}${vss.index}").val();
																	      var m_name = $("#m_name${vs.index}${vss.index}").val();
																	      var m_oos = $("#m_oos${vs.index}${vss.index}").val();
																	      var m_img_file = $("#m_img_file${vs.index}${vss.index}").val();
																	      var paramm = {
																	    	  "og_seq_list" : og_seq,
																	    	  "m_code" : m_code,
																	    	  "m_seq": m_seq,
																	    	  "mg_seq": mg_seq,
																	    	  "mg_code": mg_code,
																	    	  "mg_name": mg_name,
																	    	  "m_name": m_name,
																	    	  "m_oos": m_oos,
																	    	  "m_img_file": m_img_file
																	      };
																	      
																	      
																	      $.ajax({
															  		    	    type: "POST",
															  		    	    url: "/updateMenusOptionGroup.store",
															  		    	    data: JSON.stringify(paramm), 
															  		    	    dataType: "json",
															  		    	    contentType: "application/json",
															  		    	    success: function (data) {
															  		    	        if (data == 1) {
																  		    	        Swal.fire({
																  		    	            icon: "success",
																  		    	            title: "옵션그룹 수정 완료",
																  		    	            showConfirmButton: false,
																  		    	            timer: 1500
																  		    	        });
																  		    	        location.href = location.href;
															  		    	        }else{alert("통신은됨");}
															  		    	    },
															  		    	    error: function (data) {
															  		    	        console.log("메뉴추가 통신에러");
															  		    	    }
															  		    	});//ajax end
																		
																	}
																	</script>
																	<!-------------메뉴편집_메뉴옵션수정_옵션추가 Modal end--------------->
																	<!------------ 메뉴편집_이미지변경 Modal start --------------->
                                                   				<div class="modal fade" id="menu_updateImg${vs.index}${vss.index}" role="dialog">

                                                            <div class="modal-dialog">

                                                               <!-- Modal content-->
                                                               <div class="modal-content">
                                                                  <div class="modal-header">
                                                                     <!-- header -->
                                                                     <h4 class="modal-title">이미지변경</h4>
                                                                     <h3 style="color: black; font-weight: bolder; text-align: center;">[${menu.m_name}]</h3>
                                                                     <button type="button" class="close"
                                                                        data-dismiss="modal"
                                                                        style="font-size: 20px; color: black;">취소</button>

                                                                  </div>
                                                                  <div class="modal-body">
                                                                     <!-- body -->


                                                                     <table class="modal_table">
                                                                        <ul>

                                                                           <li
                                                                              style="border-bottom: 1px solid black; margin: 15px; padding-bottom: 10px;">
                                                                              <h5
                                                                                 style="font-size: 20px; font-weight: bolder; color: black; margin-top: 20px">
                                                                                 멋진 메뉴 이미지로<br>메뉴판을 돋보이게 해주세요!
                                                                              </h5>
                                                                              <h6 style="font-size: 13px;">
                                                                                 -이미지를 올리지 않으면 메뉴의 이미지는 자동으로 보여지지 않습니다. <br>
                                                                                 -직접 업로드한 이미지는 승인되어야 앱에 보여요.
                                                                              </h6>

                                                                              <div class="image-show" id="image-show"></div>


                                                                              <div class="img_upload">
                                                                                 <div class="image-container">
                                                                                    <div
                                                                                       style="border: 1px solid #6161618c; height: 300px;">

                                                                                       <a class="img_uploadFile" href="#"
                                                                                          style="text-align: center; width: auto; height: 300px;">
                                                                                          <img
                                                                                          style="width: 100%; height: 100%; display: none;"
                                                                                          id="preview-image${vs.index}${vss.index}" src=""> <label
                                                                                          for="input-image${vs.index}${vss.index}" id="addImgLabel${vs.index}${vss.index}"
                                                                                          style="font-size: 15px; margin-top: 140px; line-height: 20px; margin-left: 220px; cursor: pointer;">+<br>이미지추가
                                                                                       </label>
                                                                                       </a> <input type="file" id="input-image${vs.index}${vss.index}" class="input-image"
                                                                                          name="chooseFile" accept="image/*">
                                                                                    </div>

                                                                                 </div>
                                                                                 <h6
                                                                                    style="font-size: 13px; margin-bottom: 40px;">
                                                                                    -접수 건이 폭증할 경우, 처리일이 다소 지연될 수 있습니다. <label
                                                                                       for="input-image${vs.index}${vss.index}" id="fixImgLabel${vs.index}${vss.index}"
                                                                                       style="float: right; color: blue; cursor: pointer; font-size: 15px; display: none;">이미지
                                                                                       다시업로드</label>
                                                                                 </h6>

                                                                                 <div class="img_info"
                                                                                    style="background-color: #6161613d; border-radius: 7px; padding: 10px; height: auto;">
                                                                                    <h5
                                                                                       style="font-weight: bolder; font-size: 15px; color: black;">직접
                                                                                       업로드한 이미지가 바로 승인되는 방법</h5>
                                                                                    <ul style="color: black; margin-left: 20px;">
                                                                                       <li
                                                                                          style="list-style-type: disc; line-height: 20px;">메뉴
                                                                                          식별이 가능한 이미지여야 해요.</li>
                                                                                       <li
                                                                                          style="list-style-type: disc; line-height: 20px;">촬영된
                                                                                          이미지를 재촬영한 이미지는 등록할 수 없어요.</li>
                                                                                       <li
                                                                                          style="list-style-type: disc; line-height: 20px;">임의로
                                                                                          어색하게 합성된 이미지는 등록이 어려워요.</li>
                                                                                    </ul>
<!--                                                                                     <a href="#" -->
<!--                                                                                        style="text-decoration: underline; color: blue;">자세히 -->
<!--                                                                                        알아보기</a> -->
                                                                                 </div>
                                                                                 </div>
                                                                              </li>
                                                                              <li>
                                                                              <div class="row">
                                                                                 <div class="col-lg-12">
                                                                                    <button type="button" type="button" class="save_Btn"
                                                                                    onclick="uploadMenuImage${vs.index}${vss.index}()"
                                                                                    >승인 신청하기</button>
                                                                                 </div>
                                                                              </div>
                                                                           </li>
                                                                        </ul>
                                                                         </table>
                                                                  </div>
                                                               </div>
                                                            </div>
                                                         </div>
                                                   <!------------ 메뉴편집_이미지변경 Modal end --------------->
                                                   						</c:forEach>
																			<li><a class="menu_addOne" onclick="menu_addOne${vs.index}()">
																				<h4 style="color: blue; padding: 10px; margin-right: 65px;">+ 메뉴추가</h4></a>
																			</li>
																			</ul>
																	<!--*******메뉴 end*******-->
																			</li>
																			<c:if test="${storeMenuList.size() eq 0 }">
																				<li><a class="menu_addOne" onclick="menu_addOne${vs.index}()">
																					<h4 style="color: blue; padding: 10px; margin-right: 65px;">+ 메뉴추가</h4></a>
																				</li>
																			</c:if>
																		<script>
												function menu_addOne${vs.index}() {
													$('#menu_addOne${vs.index}').modal();
												}
																		
												//메뉴편집-메뉴정보수정 클릭시					 
												function menu_oneInfoUpdate${vs.index}() {
													$('#menu_updateMenuInfo${vs.index}').modal(); 
												}
                                              	
                                              	function addMenuCheck${vs.index}() {
                                              		alert("${vs.index}번 등록중");
                                              	};
                                              	</script>

																		<!--메뉴추가 모달창-->

																		<div class="modal fade" id="menu_addOne${vs.index}"
																			role="dialog" tabindex="-1">

																			<div class="modal-dialog">

																				<!-- Modal content-->
																				<div class="modal-content" style="width: auto;">
																					<div class="modal-header">
																						<!-- header -->
																						<h4 class="modal-title">메뉴추가</h4>
																						<h3
																							style="color: black; font-weight: bolder; text-align: center;">그룹명
																							: ${mg.mg_name}</h3>

																						<button type="button" class="close"
																							data-dismiss="modal"
																							style="font-size: 20px; color: black;">취소</button>

																					</div>
																					<div class="modal-body"
																						style="max-height: 850px; overflow-y: scroll;">
																						<!-- body -->

																						<table class="modal_table">
																							<ul>
																								<li
																									style="border-bottom: 1px solid black; margin: 15px; padding-bottom: 10px;">
																									<h5
																										style="font-size: 15px; font-weight: bolder; color: black;">메뉴명</h5>
																									<div class="row">
																										<div class="col-lg-12">
																											<input class="form-control" id="newmenu_name_input${vs.index}"
																												style="width: relative; font-size: 15px;"
																												type="text" placeholder="ex) 아메리카노">
																										</div>
																									</div>
																								</li>
																								<li
																									style="border-bottom: 1px solid black; margin: 15px; padding-bottom: 10px;">
																									<h5
																										style="font-size: 15px; font-weight: bolder; color: black; margin-top: 20px">가격</h5>
																										<!-- 개별 인덱스를 줄 것임. -->
																										<div id="menuOne_${vs.index}" class="row" style="margin-left: 5px;" >
																											<div class="col-lg-5" style="padding: 5px;">
																												<input class="form-control"
																													style="margin-left:3px; width: relative; font-size: 15px;"
																													type="text" placeholder="가격명" id="newmenu_basic_name_input${vs.index}">
																											</div>
																											<div class="col-lg-5" style="padding: 5px;">
																												<input class="form-control"
																													style="margin-left:3px; width: relative; font-size: 15px;"
																													type="number" placeholder="가격" id="newmenu_basic_price_input${vs.index}">
																											</div>
																											<div class="col-lg-2" style="padding: 5px;">
																											<!-- 맨위 친구는 삭제할 수 없게할거임. -->
																												<%-- <button type="button"
																													class="btn btn-danger btn-xs deleteOpBasicChuga"
																													fordelete="menuOne_${vs.index}"
																													style="float: left; margin-top: 7px;">
																													<i class="fa fa-trash-o "></i>
																												</button> --%>
																											</div>
																										</div>
																									
																									
																									
																									<div class="row" style="margin-left: 5px;" id="price_list2${vs.index}">
																										<button type="button" class="menu_priceOption" onclick="menu_priceOption2${vs.index}()">+
																											가격옵션 추가하기</button>
																									</div>
																								</li>
																							</ul>

																						</table>
																						
				<script>
				function menu_priceOption2${vs.index}(){
					//이거는 각자 자른 번호를 부여하기 위함.
					indexstring = indexnum.toString();
					indexFinal = ${vs.index}+indexstring;
					console.log("dd");
					//가격 밑으로 오게 바꿨어용 #price_list2${vs.index} -->>menuOne_${vs.index}
	                    $('#menuOne_${vs.index}').append("<div id='menuOne_${vs.index}"+indexstring+"' class='row' style='margin-left: 2px;'>"
						+"<div class='col-lg-5' style='padding: 5px;'> <input class='form-control NAMENAMENAME' "
						+"forCheck='"+indexFinal+"' "
						+"style='width: relative; font-size: 15px;' type='text' placeholder='가격명' id='menu_basic_name${vs.index}"+indexstring+"'>"
						+"</div> <div class='col-lg-5' style='padding: 5px;'> <input class='form-control PRICEPRICEPRICE'"
						+" forCheck='"+indexFinal+"' "
						+"style='width: relative; font-size: 15px;' type='number' placeholder='가격' id='menu_basic_price${vs.index}"+indexstring+"'>"
						+"</div> <div class='col-lg-2' style='padding: 5px;'> <button type='button'"
						+" fordelete='menuOne_${vs.index}"+indexstring+"' "
						+" fordelete2='menutwo_${vs.index}"+indexstring+"' "
						+"value='"+indexFinal+"'"
						+"class='btn btn-danger btn-xs deleteOpBasicChuga' style='float: left; margin-top: 7px;'>"
						+"<i class='fa fa-trash-o '></i></button></div></div>");
                 	  indexnum++;
                 	  
                 	//메뉴추가에서 가격 row 삭제
                	  $(".deleteOpBasicChuga").click(function() {
                			var fordelete = $(this).attr("fordelete"); //div 의 id
                			$("#"+fordelete).remove();
                			//확인창에서도 삭제
                			var fordelete2 = $(this).attr("fordelete2"); //div 의 id
                			$("#"+fordelete2).remove();
               		  });//메뉴추가에서 가격 row 삭제 끝
               		  
               		  //확인창에도 옵션 누적시켜줄거임
                   	$('#priceOne_${vs.index}').append('<h4 id="menutwo_${vs.index}'+indexstring+'" style="margin-left: 0px;">'
                   	+'<span id="menutwo_name${vs.index}'+indexstring+'">미입력</span> : '
                   	+'<span id="menutwo_price${vs.index}'+indexstring+'">미입력</span> 원</h4>');
                    
                   	$(".NAMENAMENAME").on("propertychange change keyup paste input",
							function() {
                   		var indexFinall = $(this).attr("forCheck");
                   		console.log(indexFinall);
					  var newmenu_basic_price_input = $(this).val();
					  //메뉴추가 메뉴명 입력시 확인하기 모달로 전달
					  var newMenu_option = document.getElementById("menutwo_name"+indexFinall);
					  newMenu_option.innerText = newmenu_basic_price_input;
				  });
                   	
                   	$(".PRICEPRICEPRICE").on("propertychange change keyup paste input",
							function() {
                   		var indexFinall = $(this).attr("forCheck");
                   		console.log(indexFinall);
					  var newmenu_basic_price_input = $(this).val();
					  //메뉴추가 메뉴명 입력시 확인하기 모달로 전달
					  var newMenu_option = document.getElementById("menutwo_price"+indexFinall);
					  newMenu_option.innerText = newmenu_basic_price_input.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
				  });
				}
				
				function addMenuChecking${vs.index}(){
					//메뉴그룹 정보
					var mg_seq = $("#mg_seq${vs.index}").val();
					var mg_code = $("#mg_code${vs.index}").val();
					//기본 첫째줄 
					var menu_name = $("#newmenu_name_input${vs.index}").val();
					var optionBasic_name = $("#newmenu_basic_name_input${vs.index}").val();
					var optionBasic_price = $("#newmenu_basic_price_input${vs.index}").val();
					//두번째 줄
					var zzzz = document.getElementById("hwakin_chang_${vs.index}").innerText;
				
					zzzz = zzzz.replace(/원/gi, "won");
					
					console.log(zzzz);
					
// 					//빈칸있으면 뭐라하기
					if(menu_name==""||optionBasic_name==""||optionBasic_price==""||zzzz.indexOf("미입력")!=-1){
						Swal.fire({
				    		  icon: "error",
				    		  title: "입력사항을 확인해주세요",
				    		  showConfirmButton: false,
	 			    		  timer : 1500,
						});
						
					}
					else{
						//ajax
						var paramm = {
								"mg_seq" : mg_seq,
								"mg_code" : mg_code,
								"m_name" : menu_name,
								"opb_name" : optionBasic_name,
								"opb_price" : optionBasic_price,
								"opb_total" : zzzz
						};
						$.ajax({
		  		    	    type: "POST",
		  		    	    url: "/insertMenu.store",
		  		    	    data: JSON.stringify(paramm), 
		  		    	    dataType: "json",
		  		    	    contentType: "application/json",
		  		    	    success: function (data) {
		  		    	        if (data == 1) {
			  		    	        Swal.fire({
			  		    	            icon: "success",
			  		    	            title: "메뉴 추가 완료",
			  		    	            showConfirmButton: false,
			  		    	            timer: 1500
			  		    	        });
			  		    	        location.href = location.href;
		  		    	        }else{alert("통신은됨");}
		  		    	    },
		  		    	    error: function (data) {
		  		    	        console.log("메뉴추가 통신에러");
		  		    	    }
		  		    	});//ajax end
					}
					
					
					
				}
				
				  $(document).ready(function(){
					  var newMenu_name_input = "";
					  $("#newmenu_name_input${vs.index}").on("propertychange change keyup paste input",
								function() {
						  newMenu_name_input = $("#newmenu_name_input${vs.index}").val();
						  //메뉴추가 메뉴명 입력시 확인하기 모달로 전달
						  var newMenu_name = document.getElementById("newMenu_name${vs.index}");
						  newMenu_name.innerText = newMenu_name_input;
					  });
					  
					  $("#newmenu_basic_name_input${vs.index}").on("propertychange change keyup paste input",
								function() {
						  var newmenu_basic_name_input = $("#newmenu_basic_name_input${vs.index}").val();
						  //메뉴추가 메뉴명 입력시 확인하기 모달로 전달
						  var newMenu_option = document.getElementById("newMenu_basic${vs.index}");
						  newMenu_option.innerText = newmenu_basic_name_input;
					  });
					  
					  $("#newmenu_basic_price_input${vs.index}").on("propertychange change keyup paste input",
								function() {
						  var newmenu_basic_price_input = $("#newmenu_basic_price_input${vs.index}").val();
						  //메뉴추가 메뉴명 입력시 확인하기 모달로 전달
						  var newMenu_option = document.getElementById("newMenu_basic_price${vs.index}");
						  newMenu_option.innerText = newmenu_basic_price_input.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
					  });
					  
					  
					})//doc ready 끝
					
					
				</script>
																				<table class="modal_table">
																							<ul>
	<!-- ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ -->
<!-- 																								<li -->
<!-- 																									style="border-bottom: 1px solid black; margin: 15px; padding-bottom: 10px;"> -->
<!-- 																									<div class="row"> -->
<%-- 																									<a class="menu_addOptionGroup" data-toggle="modal" href="#menu_addOptionGroup2${vs.index}" > --%>
<!-- 																										<h4 style="color: blue; padding: 10px; margin-right: 65px;">+ -->
<!-- 																											옵션그룹 추가</h4> -->
<!-- 																									</a> -->
																										
<!-- 																									</div> -->
<!-- 																								</li> -->
																								<li>
																									<div class="col-lg-12">
																										<button type="button" id="#finalBtn${vs.index}" class="save_Btn" data-toggle="modal" href="#finalCh${vs.index}">확인하기</button>
																									</div>
																								</li>
																								</ul>
																							</table>
																							</div>
																							</div>
																			</div>
																		</div>
																		<!-- 메뉴추가 모달창 end -->
																		
																		<!-------------메뉴추가_옵션그룹추가 Modal start--------------->
																	<div class="modal fade" id="menu_addOptionGroup2${vs.index}" role="dialog" style="max-height: 850px; overflow-y: initial; ">

																		<div class="modal-dialog">

																			<!-- Modal content-->
																			<div class="modal-content">
																				<div class="modal-header">
																					<!-- header -->
																					<h4 class="modal-title">옵션그룹추가</h4>
																					<h3 style="color: black; font-weight: bolder; text-align: center;">[${mg.mg_name}]</h3>
																					<button type="button" class="close"
																						data-dismiss="modal"
																						style="font-size: 20px; color: black;">취소</button>

																				</div>
																				<div class="modal-body"
																					style="height: 800px; overflow-y: scroll;">
																					<!-- body -->

																					<div class="row">
																						<h5
																							style="background-color: #61616128; padding: 15px; margin: 10px; border-radius: 4px;">
																							새로운 옵션 그룹이 필요하신 경우 <span
																								style="color: blue; font-weight: bolder;">옵션편집-옵션추가</span>를
																							이용해주세요.
																						</h5>
																					</div>
																					 
																					 <c:forEach var="ogList" items="${ogList}">
																					<label for="chbox1" class="menu_addOptionGroup1"
																						style="border: 1px solid rgba(0, 0, 0, 0.164); border-radius: 3px; padding: 10px; margin-top: 10px; width: 580px;">
																						<div class="row">
																							<input id="chbox1" type="checkbox"
																									style="width: 30px; height: 30px;" checked>
																							<div class="col-lg-1">
																							</div>
																							<div class="col-lg-11">
																								<h3
																									style="font-size: 20px; color: black; margin: 0; font-weight: bolder;">${ogList.og_name}</h3>
																								<h6 style="line-height: 10px; padding-bottom: 20;">
																									<c:forEach var="optionList" items="${optionList}">
																									<c:if test="${optionList.og_code =ogList.og_code }">
																										${optionList.op_name},
																									</c:if>
																									</c:forEach>
																									</h6>
																							</div>
																						</div>
																						<div class="row">
																							<div class="option_linkMenu"
																								style="background-color: #2e279627; padding: 10px; margin: 15px;">
																								<h5 style="color: black;">
																									<span style="background-color: #2e27963d; font-weight: bolder;">연결메뉴</span>연결된
																									메뉴를 확인하세요.
																								</h5>
																								<h6>
																								<c:set var="ogcode" value="ff"></c:set>
																								<c:forEach var="MAOList" items="${MAOList}">
																									<c:if test="${MAOList.og_code eq ogList.og_code}">
																									<c:if test="${ogcode ne MAOList.og_code}">
																											${MAOList.m_name}, 
																									<c:set var="ogcode" value="${MAOList.og_code}" />		
																									</c:if>
																									</c:if>
																								</c:forEach></h6>
																							</div>
																						</div>
																					</label>
																					</c:forEach>
																					<div class="row" style="overflow-y: auto;">
																						<div class="col-lg-12">
																							<button type="button" class="save_Btn">옵션그룹 수정하기</button>
																						</div>
																					</div>
																					</div>
																			</div>
																		</div>
																	</div>
																	<!-------------메뉴추가_옵션그룹추가 Modal end--------------->
																		
																		
																	<!--------------------final check----------------------------->

																		<div class="modal fade" id="finalCh${vs.index}" role="dialog" >
																			<div class="modal-dialog">

																				<!-- Modal content-->
																				<div class="modal-content" style="width: auto;">
																					<div class="modal-header">
																						<!-- header -->
																						<h4 class="modal-title">추가한 메뉴 확인</h4>
																						<h3
																							style="color: black; font-weight: bolder; text-align: center;">그룹명
																							: ${mg.mg_name}</h3>
																							<input type="hidden" id="mg_seq${vs.index}" value="${mg.mg_seq}">
																							<input type="hidden" id="mg_code${vs.index}" value="${mg.mg_code}">
																							<input type="hidden" id="mg_name${vs.index}" value="${mg.mg_name}">
																						<button type="button" class="close"
																							data-dismiss="modal"
																							style="font-size: 20px; color: black;">취소</button>

																					</div>
																					<div class="modal-body"
																						style="max-height: 600px; overflow-y: scroll;">

																						<table class="modal_table">
																							<ul>
																								<li
																									style="border-bottom: 1px solid black; margin: 15px; padding-bottom: 10px;">

																									<div class="option_2"
																										style="background-color: #6161613d; border-radius: 7px; padding: 10px; height: auto;">
																										<h3 style="font-weight: bolder; color: black;">메뉴
																											확인</h3>
																										<h5 style="color: black;">입력한 메뉴 정보를 확인하신
																											후, 적용하시려면 '메뉴 추가' 버튼을 클릭해 주세요</h5>

																									</div>
																								</li>

																								<li
																									style="border-bottom: 1px solid black; margin: 15px; padding-bottom: 10px;">
																									<div class="row">

																										<h4 style="font-weight: bolder; color: black;">메뉴명</h4>
																										<h4 id="newMenu_name${vs.index}" style="margin-left: 10px;"> </h4>
																									</div>


																								</li>

																								<li
																									style="border-bottom: 1px solid black; margin: 15px; padding-bottom: 10px;">
																									<div class="row" id="hwakin_chang_${vs.index}">

																										<h4 style="font-weight: bolder; color: black;">가격</h4>
																										<h4 id="priceOne_${vs.index}" style="margin-left: 10px;">
																										<span id="newMenu_basic${vs.index}"></span> : <span id="newMenu_basic_price${vs.index}"></span> 원</h4>
																									</div>


																								</li>
<!-- ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ -->
<!-- 																								<li -->
<!-- 																									style="border-bottom: 1px solid black; margin: 15px; padding-bottom: 10px;"> -->
<!-- 																									<div class="row"> -->

<!-- 																										<h4 style="font-weight: bolder; color: black;">옵션</h4> -->



<!-- 																										<ul style="margin-bottom: 20px;"> -->
<!-- 																											<h4 style="margin-left: 10px; color: black;">샷추가</h4> -->
<!-- 																											<li -->
<!-- 																												style="line-height: 20px; margin-left: 10px;"><h4>+1샷추가 -->
<!-- 																													: 500원</h4></li> -->
<!-- 																											<li -->
<!-- 																												style="line-height: 20px; margin-left: 10px;"><h4>+2샷추가 -->
<!-- 																													: 1000원</h4></li> -->
<!-- 																											<li -->
<!-- 																												style="line-height: 20px; margin-left: 10px;"><h4>+3샷추가 -->
<!-- 																													: 1500원</h4></li> -->
<!-- 																										</ul> -->

<!-- 																										<ul style="margin-bottom: 20px;"> -->
<!-- 																											<h4 style="margin-left: 10px; color: black;">휘핑추가</h4> -->
<!-- 																											<li -->
<!-- 																												style="line-height: 20px; margin-left: 10px;"><h4>휘핑추가 -->
<!-- 																													: 500원</h4></li> -->
<!-- 																										</ul> -->
<!-- 																									</div> -->
<!-- 																								</li> -->

																								<li
																									style="border-bottom: 1px solid black; margin: 15px; padding-bottom: 10px;">
																									<div class="addMenu_info"
																										style="padding: 25px; border: 1px solid rgba(0, 0, 0, 0.26);">
																										<ul>
																											<li
																												style="list-style-type: disc; line-height: 20px;">
																												사장님이 직접 수정하신 사항에 대한책임은 사장님 본인에게 있습니다.</li>
																											<li
																												style="list-style-type: disc; line-height: 20px;">
																												잘못 추가한 메뉴로 인한 손해에 대해서 워킹오더는 어떠한 책임도 부담하지
																												않습니다.</li>
																											<li
																												style="list-style-type: disc; line-height: 20px;">
																												추가한 메뉴의 원산지 정보는 "메뉴관리-주문안내/원산지"에서 반드시 업데이트
																												해주세요.</li>
																											<li
																												style="list-style-type: disc; line-height: 20px;">
																												등록한 메뉴 및 그 정보 등이 허위/불법정보에 해당하거나, 상표권을 침해할 경우
																												워킹오더는 그에 따른 조치를 이행할 수 있습니다.</li>
																										</ul>
																									</div>
																								</li>
																								
																								<li>
																								<div class="col-lg-12">
																										<button type="button" class="save_Btn" onclick="addMenuChecking${vs.index}()">메뉴
																											추가하기</button>
																									</div>
																								</li>
																							</ul>

																						</table>
																						
																						
																					</div>

																				</div>
																			</div>
																		</div>
																		</c:forEach>
																		</ul>
																</nav>
															<!--메뉴그룹 리스트 end-->
														</div>
<!-- ***********************************************************메뉴편집 Tab end************************************************************* -->

<!-- ***********************************************************옵션편집 Tab start************************************************************* -->
														<div id="faq__222" class="tab-pane">

															<div class="row" style="text-align: right;">
																<a class="menu_addMenuGroup" data-toggle="modal"
																	href="#addOptionGroup"> + 옵션그룹추가</a>
															</div>
															<!--------옵션그룹 추가 modal start-------->
															<div class="modal fade" id="addOptionGroup" role="dialog">

																<div class="modal-dialog">
																<div class="modal-content">
																		<div class="modal-header">
																			<!-- header -->
																			<h4 class="modal-title">옵션그룹 추가</h4>
																			<button type="button" class="close"
																				data-dismiss="modal"
																				style="font-size: 20px; color: black;">취소</button>
																				</div>
																		<div class="modal-body">
																			<!-- body -->
																			<table class="modal_table">
																				<ul>
																					<li
																						style="border-bottom: 1px solid black; margin: 15px; padding-bottom: 10px;">
																						<h5
																							style="font-size: 15px; font-weight: bolder; color: black;">옵션그룹명</h5>
																						<div class="row">
																							<div class="col-lg-12">
																								<input class="form-control" id="og_name_input"
																									style="width: relative; font-size: 15px;"
																									type="text" placeholder="예)샷추가">
																							</div>
																						</div>
																					</li>
																					<li
																						style="border-bottom: 1px solid black; margin: 15px; padding-bottom: 10px;">
																						<h5
																							style="font-size: 15px; font-weight: bolder; color: black; margin-top: 20px">옵션</h5>

																						<div class="groupAdd_OptionList" id="addOg_option">
																							<div class="row" style="margin-left: 5px;">
																								<div class="col-lg-5" style="padding: 5px;">
																									<input class="form-control" id="addOpName_input"
																										style="width: relative; font-size: 15px;"
																										type="text" placeholder="예) 1샷 추가">
																								</div>
																								<div class="col-lg-5" style="padding: 5px;">
																									<input class="form-control" id="addOpPrice_input"
																										style="width: relative; font-size: 15px;"
																										type="text" placeholder="500">
																								</div>
																								
																							</div>
																						</div>
																						
																						<div class="row" style="margin-left: 5px;">
																							<a class="groupAdd_Option" onclick="groupAdd_Option()">+ 가격옵션
																								추가하기</a>
																						</div>
																					</li>
																					
	


																					<li
																						style="border-bottom: 1px solid black; margin: 15px; padding-bottom: 10px;">
																						<h5
																							style="font-size: 15px; font-weight: bolder; color: black; margin-top: 20px;">
																							필수여부</h5>
																						<div class="row"
																							style="line-height: 20px; margin-left: 10px;">
																							<input type="radio" name="radio111" id="radio111"
																								value="1" checked> <label for="radio111"
																								style="font-size: 15px;"> [필수] 옵션을 반드시
																								선택해야 주문이 가능해요</label>
																						</div>
																						<div class="row"
																							style="line-height: 20px; margin-left: 10px;">
																							<input type="radio" name="radio111" id="radio222"
																								value="2"> <label for="radio222"
																								style="fontradio111-size: 15px;"> [선택] 옵션을 선택하지
																								않아도 주문이 가능해요</label>
																						</div>
																					</li>
																					<li>
																						<div class="row">
																							<div class="col-lg-12">
																								<button type="button" class="save_Btn" onclick="addOgGroup()">확인하기</button>
																							</div>
																						</div>
																					</li>
																				</ul>

																			</table>
																		</div>
																	</div>
																</div>
															</div>
															<!--------옵션그룹 추가 modal end-------->
															<!-- 옵션그룹추가 final check modal start -->
															<div class="modal fade" id="hwakin_chang2" role="dialog" >
																			<div class="modal-dialog">

																				<!-- Modal content-->
																				<div class="modal-content" style="width: auto;">
																					<div class="modal-header">
																						<!-- header -->
																						<h4 class="modal-title">추가 옵션그룹 확인</h4>
																						<button type="button" class="close"
																							data-dismiss="modal"
																							style="font-size: 20px; color: black;">취소</button>

																					</div>
																					<div class="modal-body"
																						style="max-height: 600px; overflow-y: scroll;">

																						<table class="modal_table">
																							<ul>
																								<li
																									style="border-bottom: 1px solid black; margin: 15px; padding-bottom: 10px;">

																									<div class="option_2"
																										style="background-color: #6161613d; border-radius: 7px; padding: 10px; height: auto;">
																										<h3 style="font-weight: bolder; color: black;">옵션그룹 확인</h3>
																										<h5 style="color: black;">입력한 옵션그룹 정보를 확인하신
																											후, 적용하시려면 '옵션그룹 추가' 버튼을 클릭해 주세요</h5>

																									</div>
																								</li>

																								<li
																									style="border-bottom: 1px solid black; margin: 15px; padding-bottom: 10px;">
																									<div class="row">

																										<h4 style="font-weight: bolder; color: black;">옵션그룹명</h4>
																										<h4 id="newOg_name" style="margin-left: 10px;"> </h4>
																									</div>


																								</li>

																								<li
																									style="border-bottom: 1px solid black; margin: 15px; padding-bottom: 10px;">
																									<div class="row">
																											<h4 style="font-weight: bolder; color: black;">가격</h4>
																					<h4 id="addOg2_option" style="margin-left: 10px;">
																					<span id="addOpNameee"></span> : <span id="addOpPriceee"></span> 원</h4>
																										</div>


																								</li>
																								<li
																									style="border-bottom: 1px solid black; margin: 15px; padding-bottom: 10px;">
																									<div class="row">
																											<h4 style="font-weight: bolder; color: black;">필수여부</h4>
																					<h4 id="addOg_ROSS" style="margin-left: 10px;"></h4>
																										</div>
																								</li>

																								<li
																									style="border-bottom: 1px solid black; margin: 15px; padding-bottom: 10px;">
																									<div class="addMenu_info"
																										style="padding: 25px; border: 1px solid rgba(0, 0, 0, 0.26);">
																										<ul>
																											<li
																												style="list-style-type: disc; line-height: 20px;">
																												사장님이 직접 수정하신 사항에 대한책임은 사장님 본인에게 있습니다.</li>
																											<li
																												style="list-style-type: disc; line-height: 20px;">
																												잘못 추가한 메뉴로 인한 손해에 대해서 워킹오더는 어떠한 책임도 부담하지
																												않습니다.</li>
																											<li
																												style="list-style-type: disc; line-height: 20px;">
																												추가한 메뉴의 원산지 정보는 "메뉴관리-주문안내/원산지"에서 반드시 업데이트
																												해주세요.</li>
																											<li
																												style="list-style-type: disc; line-height: 20px;">
																												등록한 메뉴 및 그 정보 등이 허위/불법정보에 해당하거나, 상표권을 침해할 경우
																												워킹오더는 그에 따른 조치를 이행할 수 있습니다.</li>
																										</ul>
																									</div>
																								</li>
																								
																								<li>
																								<div class="col-lg-12">
																										<button type="button" class="save_Btn" onclick="addOgReal()">옵션그룹 
																											추가하기</button>
																									</div>
																								</li>
																							</ul>

																						</table>
																						
																						
																					</div>

																				</div>
																			</div>
																		</div>
															
															<!-- 옵션그룹추가 final check modal end -->
															<script>
																					let indexN = 1;
																					let indexS = "";
																					let indexF = ""; 
																				 	  
																					function groupAdd_Option() {
																						indexS = indexN.toString(); 
																						indexF = indexS;
																						$('#addOg_option').append("	<div id='addOg_option"+indexS+"' class='row' style='margin-left: 5px;'>	<div class='col-lg-5' style='padding: 5px;'>"
																	                        + "<input class='form-control opNameopName' forCh1='"+indexF+"' style='width: relative; font-size: 15px;' type='text' placeholder='예) 1샷 추가' id='addOpName_input'"+indexS+">"
																													+"</div> <div class='col-lg-5' style='padding: 5px;'>	<input class='form-control opPriceopPrice' forCh1='"+indexF+"'"
																													+"style='width: relative; font-size: 15px;'	type='number' placeholder='500' id='addOpPrice_input'"+indexS+"></div>"
																													+"<div class='col-lg-2' style='padding: 5px;'> <button type='button'"
																													+" forDel1='addOg_option"+indexS+"' "
																													+" forDel2='addOg2_option"+indexS+"' "
																													+"class='btn btn-danger btn-xs deleteBtbt' style='float: left; margin-top: 7px;'><i class='fa fa-trash-o '></i>"
																													+"</button>	</div></div>");  
																					
																													indexN++;
																													
																													
																						//메뉴 삭제
																				 		$(".deleteBtbt").click(function() {
																				 			console.log("fff");
																				 			var forDel1 = $(this).attr("forDel1");
																				 			$("#"+forDel1).remove();
																				 			
																				 			var forDel2 =  $(this).attr("forDel2");
																				 			$("#"+forDel2).remove();
																				 			
																				 		});
																						
																				 		  //확인창에도 옵션 누적
																		                   	$('#addOg2_option').append('<h4 id="addOg2_option'+indexS+'" style="margin-left: 0px;">'
																		                   	+'<span id="addOp2Name_input'+indexS+'">미입력</span> : '
																		                   	+'<span id="addOp2Price_input'+indexS+'">미입력</span> 원</h4>');
																		                    
																		                   	$(".opNameopName").on("propertychange change keyup paste input",
																									function() {
																		                   		var indexFF = $(this).attr("forCh1");
																		                   		console.log(indexFF);
																							  var newOpName_input = $(this).val();
																							  //추가옵션그룹 확인 MODAL에 전달
																							  var newOpName = document.getElementById("addOp2Name_input"+indexFF);
																							  newOpName.innerText = newOpName_input;
																						  });
																		                   	
																		                   	$(".opPriceopPrice").on("propertychange change keyup paste input",
																									function() {
																		                   		var indexFF = $(this).attr("forCh1");
																		                   		console.log(indexFF);
																							  var newOpPrice_input = $(this).val();
																							//추가옵션그룹 확인 MODAL에 전달
																							  var newOpPrice = document.getElementById("addOp2Price_input"+indexFF);
																							  newOpPrice.innerText = newOpPrice_input.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
																						  });
																					}
																					
																					
																						
																						//옵션편집-옵션그룹추가-확인하기버튼 클릭시
																						 function addOgGroup(){
																							//첫번째 줄
																							var Og_name_input =$("#og_name_input").val();
																							var opName_input = $("#addOpName_input").val();
																							var opPrice_input = $("#addOpPrice_input").val();
																							console.log($(":input:radio[name=radio111]:checked").val());
																							//두번째 줄~
																							var addOpttt = document.getElementById("addOg2_option").innerText;
																							
																							//세번째 줄
																							var addOp_ROS = "[필수]";
																							if($(":input:radio[name=radio111]:checked").val()=='1') {
																								addOp_ROS ="[필수]";
																							}else {
																								addOp_ROS="[선택]";
																							}
																							
																							//필수여부 MODAL에 전달
																						  var addOg_ROSS = document.getElementById("addOg_ROSS");
																						  addOg_ROSS.innerText = addOp_ROS;
																					  
																							//빈칸있으면 뭐라하기
																							if(Og_name_input==""||opName_input==""||opPrice_input==""||addOpttt.indexOf("미입력")!=-1){
																								Swal.fire({
																						    		  icon: "error",
																						    		  title: "입력사항을 확인해주세요",
																						    		  showConfirmButton: false,
																			 			    		  timer : 1500,
																								});
																								}else {
																									$("#hwakin_chang2").modal();
																								}
																							
																							
																						   	}
																								
	function addOgReal() {
		
		var addOgN = document.getElementById("newOg_name").innerText;
		var addOpt = document.getElementById("addOg2_option").innerText;
		var og_ROS = document.getElementById("addOg_ROSS").innerText;//필수 선택
		console.log(addOgN + "/" + addOpt + "/"+og_ROS);
		addOpt = addOpt.replace(/원/gi,"won");
		if(og_ROS.indexOf("필수") != -1){
			og_ROS = og_ROS.replace("필수", "true"); //필수 일 경우
		}else{
			og_ROS = og_ROS.replace("선택", "false");
		}
		
			//ajax
			var parammm = {
					"og_name" : addOgN,
					"ogop_total" : addOpt,
					"og_ros" : og_ROS
			};
			
			$.ajax({
 		    	    type: "POST",
 		    	    url: "/insertOg.store",
 		    	    data: JSON.stringify(parammm), 
 		    	    dataType: "json",
 		    	    contentType: "application/json",
 		    	    success: function (data) {
 		    	        if (data == 1) {
	  		    	        Swal.fire({
	  		    	            icon: "success",
	  		    	            title: "메뉴 추가 완료",
	  		    	            showConfirmButton: false,
	  		    	            timer: 1500
	  		    	        });
	  		    	        location.href="CRUD.store"
 		    	        }else{alert("통신은됨");}
 		    	    },
 		    	    error: function (data) {
 		    	        console.log("옵션추가 통신에러");
 		    	    }
 		    	});//ajax end 
		
		
	}
																							
  	$(document).ready(function(){
	  var newOg_name_input1 = "";
	  $("#og_name_input").on("propertychange change keyup paste input",
				function() {
		  newOg_name_input1 = $("#og_name_input").val();
		  //옵션그룹추가 그룹명명 입력시 확인하기 모달로 전달
		  var newOg_name = document.getElementById("newOg_name");
		  newOg_name.innerText = newOg_name_input1;
	  });
	  
	  $("#addOpName_input").on("propertychange change keyup paste input",
				function() {
		  var addOpName_input1 = $("#addOpName_input").val();
		  //옵션그룹추가 옵션명 입력시 확인하기 모달로 전달
		  var addOpNameee = document.getElementById("addOpNameee");
		  addOpNameee.innerText = addOpName_input1;
	  });
	  
	  $("#addOpPrice_input").on("propertychange change keyup paste input",
				function() {
		  var addOpPrice_input1 = $("#addOpPrice_input").val();
		  //옵션그룹추가 옵션가격 입력시 확인하기 모달로 전달
		  var addOpPriceee = document.getElementById("addOpPriceee");
		  addOpPriceee.innerText = addOpPrice_input1.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	  });
	  
	})//doc ready 끝
																						 	   
																						 		 	  
																					
																					</script>

															<!--옵션그룹 리스트 start-->
															<c:forEach var="ogList" items="${ogList}" varStatus="ogVs">
															<!-- 장바구니 빈칸 용 기본 옵션 ' '은 제외하고 출력   -->
															<c:if test="${ogList.og_code ne ' '}"> 
															<nav>
																<ul id="main_menu">
																	<li><div id="optiongroupBtns${ogVs.index}">
																	<button type="button" 
																				class="btn btn-danger btn-xs deletingOptionGroup"
																				style="float: right; margin-right: 10px; margin-top: 10px;"
																				value="${ogList.og_code}"
																				fordelete="optionGroup${ogVs.index}"
																				fordelete2 = "optionGroupUl${ogVs.index}"
																				fordelete3 = "optiongroupBtns${ogVs.index}">
																				<i class="fa fa-trash-o "></i>
																			</button>
																			<button type="button" class="btn btn-primary btn-xs updateOptionGroup"
																			forupdate="optionGroup${ogVs.index}"
																			og_name = "${ogList.og_name}"
																			value="${ogList.og_code}"
																				style="float: right; margin-right: 10px; margin-top: 10px;">
																				<i class="fa fa-pencil"></i>
																			</button></div>
																	
																	<a class="menuGroup" href="javascript:" id="optionGroup${ogVs.index}">${ogList.og_name}
																	</a> <!--서브메뉴시작-->
																		<ul class="snd_menu sub_menu" id="optionGroupUl${ogVs.index}">

																			<li class="menu_one_plus"><a>
																					<div class="row" style="padding: 10px;">
																						<div class="col-lg-8"
																							style="text-align: left; line-height: 20px;">
																							<div class="menu_oneOption">
																								<h4 style="color: black;">
																									<span
																										style="background-color: rgba(226, 77, 94, 0.267); border-radius: 5px; padding: 3px; font-size: smaller;">연결메뉴</span>
																									수정사항이 다음 메뉴에 동시에 적용됩니다.
																								</h4>
<h5 id="ogul${ogVs.index }" style="margin-left: 15px; color: rgba(0, 0, 0, 0.801)">
<c:set var="item" value="dd"></c:set>
<c:forEach var="MAOList" items="${MAOList}" varStatus="MAOVs">
<c:if test="${ MAOList.og_code eq ogList.og_code}">
<c:if test="${item ne MAOList.m_name}">
${MAOList.m_name},,,,
<c:set var="item" value="${MAOList.m_name}" />
</c:if>
</c:if>
</c:forEach></h5>
																								<h4 style="color: black;">
																									<span
																										style="background-color: rgba(226, 77, 94, 0.267); border-radius: 5px; padding: 3px; font-size: smaller;">필수여부</span>
																										<c:choose>
																										<c:when test="${ogList.og_ros==false}">
																										[선택]
																										</c:when>
																										<c:otherwise>
																										[필수]
																										</c:otherwise>
																										</c:choose>
																									<a data-toggle="modal"
																										href="#update_ros_modal${ogVs.index}"
																										class="btn btn-primary btn-xs"
																										style="margin-left: 10px; margin-top: 5px;">
																										<i class="fa fa-pencil"></i>
																									</a>
																								</h4>

																							</div>
																						</div>

																					</div>

																			</a></li>
																		
																			
																			<c:forEach var="optionList" items="${optionList}" varStatus="optionVs">
																			<c:if test="${ogList.og_seq eq optionList.og_seq }">
																			
																			<li><a class="menu_one" id="optiondisplay_${ogVs.index}${optionVs.index}">
																					<div class="row" style="padding: 10px;">
																						<div class="col-lg-8"
																							style="text-align: left; line-height: 20px;">
																							<div class="menu_oneOption">
																								<h4 id="op_name__${ogVs.index}${optionVs.index}"
																								 style="color: black;">${optionList.op_name}</h4>
																								<ul>
																									<li 
																										style="list-style-type: disc; line-height: 10px; margin-left: 25px;">
																										<h5 id="op_price__${ogVs.index}${optionVs.index}"><fmt:formatNumber
												value="${optionList.op_price}" pattern="###,###" /></h5>
																									</li>
																								</ul>
																							</div>
																						</div>

																					</div>

																			</a>
																				<ul class="trd_menu sub_menu" id="optiontoggle_${ogVs.index}${optionVs.index}">
																					<li><a class="menu_oneOptionUpdate" data-toggle="modal" href="#option_oneUpdate_modal${ogVs.index}${optionVs.index}">옵션명 및 가격 변경</a></li>
																					<li><a class="menu_oneDelete" onclick="deleteOption${ogVs.index}${optionVs.index}()">옵션삭제</a></li>
																				</ul></li>
																				
																				
																				<!------------옵션명 및 가격변경 modal start-------------->
																			<div class="modal fade" id="option_oneUpdate_modal${ogVs.index}${optionVs.index}" role="dialog">

																				<div class="modal-dialog">

																					<!-- Modal content-->
																					<div class="modal-content">
																						<div class="modal-header">
																							<!-- header -->
																							<h4 class="modal-title">옵션명 및 가격 수정</h4>
																							<button type="button" class="close"
																								data-dismiss="modal"
																								style="font-size: 20px; color: black;">취소</button>

																						</div>
																						<div class="modal-body">
																							<!-- body -->

																							<table class="modal_table">
																								<ul>

																									<li
																										style="border-bottom: 1px solid black; margin: 15px; padding-bottom: 10px;">
																										<h5
																											style="font-size: 15px; font-weight: bolder; color: black; margin-top: 20px">옵션</h5>

																										<div class="option_list">
																											<div class="row" style="margin-left: 5px;">
																												<div class="col-lg-5" style="padding: 5px;">
																													<input class="form-control" id="op_name${ogVs.index}${optionVs.index}"
																														style="width: relative; font-size: 15px;"
																														type="text" value="${optionList.op_name}">
																												</div>
																												<div class="col-lg-5" style="padding: 5px;">
																													<input class="form-control" id="op_price${ogVs.index}${optionVs.index}"
																														style="width: relative; font-size: 15px;"
																														type="text" value="${optionList.op_price}">
																													<input type="hidden" id="op_code${ogVs.index}${optionVs.index}" value="${optionList.op_code}"/>
																												</div>

																											</div>
																										</div>

																									</li>
																									<li>
																										<div class="row">
																											<div class="col-lg-12">
																												<button type="button" class="save_Btn"
																												onclick="update_Option${ogVs.index}${optionVs.index}()">수정하기</button>
																											</div>
																										</div>
																									</li>
																								</ul>


																							</table>
																						</div>
																						
																					</div>
																				</div>
																			</div>
																			<!------------옵션명 및 가격변경 modal end-------------->
																				
<script>

function update_Option${ogVs.index}${optionVs.index}(){
	var op_name = $("#op_name${ogVs.index}${optionVs.index}").val();
	var op_code = $("#op_code${ogVs.index}${optionVs.index}").val();
	var op_price = $("#op_price${ogVs.index}${optionVs.index}").val();
	
	if(op_name&&op_price){
		var param = {
			"op_name":op_name,
			"op_code":op_code,
			"op_price":op_price
		}
		$.ajax({
	    	    type: "POST",
	    	    url: "/update_one_option.store",
	    	    data: JSON.stringify(param), 
	    	    dataType: "json",
	    	    contentType: "application/json",
	    	    success: function (data) {
	    	        if (data == 1) {
		    	        Swal.fire({
		    	            icon: "success",
		    	            title: "옵션 수정 완료",
		    	            showConfirmButton: false,
		    	            timer: 1500
		    	        });
		    	        
		    	        var changeName = document.getElementById("op_name__${ogVs.index}${optionVs.index}");
		    	        var changeprice = document.getElementById("op_price__${ogVs.index}${optionVs.index}");
						changeName.innerText = op_name;
						changeprice.innerText = op_price.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		    	        
		    	        
// 		    	        location.href = "CRUD.store"
	    	        }else{alert("통신은됨");}
	    	        
	    	    },
	    	    error: function (data) {
	    	        console.log("단일 옵션 수정 통신에러");
	    	    }
	    	});//ajax end
	}else{
		 Swal.fire({
            icon: "warning",
            title: "값을 입력하세요",
            showConfirmButton: false,
            timer: 1000
        });
	}
}//update_Option end

function deleteOption${ogVs.index}${optionVs.index}(){
	var op_code = $("#op_code${ogVs.index}${optionVs.index}").val();
	
	var display = "optiondisplay_${ogVs.index}${optionVs.index}"; //화면에서 삭제
	var toggle = "optiontoggle_${ogVs.index}${optionVs.index}"; //열림 토글도 삭제
	
	Swal.fire({
		  title: "진짜삭제되니까 테스트용 옵션만 삭제하세요",
//		  title: "삭제하시겠습니까??",
		  html: "<p>진짜 삭제된다!@!@#</p><p>진짜 삭제된다!@!@#</p><p>진짜 삭제된다!@!@#</p><p>진짜 삭제된다!@!@#</p><p>진짜 삭제된다!@!@#</p>",
		  icon: "warning",
		  showCancelButton: true,
		  confirmButtonColor: "#3085d6",
		  cancelButtonColor: "#d33",
		  confirmButtonText: "삭제",
		  cancelButtonText: "아니오"
		}).then((result) => {
		  if (result.isConfirmed) {
		 		$.ajax({
	 		  type: "POST",
	           url: "/deleteOption.store",
	          data: JSON.stringify({"op_code":op_code}),
	           dataType: "json",
	          contentType: "application/json",
	          success:function(data){
	        	  if(data==1){
	         	 	console.log("삭제 성공");
	         	 	//숨겨버릴거임 
	         	 	$("#"+display).remove();
	         	 	$("#"+toggle).remove();
	 	         	 Swal.fire({
				  		  icon: "success",
				  		  title: "삭제 완료",
				  		  showConfirmButton: false,
				  		  timer: 1500
					 });
	        	  }
	           },
	           error:function(data){
		          console.log("삭제");
	          }
	 	  	});//ajax  
		  }//if (result.isConfirmed)
		})//then((result)
				
}//deleteOption end
</script>
																				</c:if>	
																				</c:forEach>
																				
																			<li><a class="menu_addOne" onclick="option_addOne${ogVs.index}()">
				
																					<h4 style="color: blue; padding: 10px; margin-right: 65px;">+ 옵션추가</h4>

																			</a></li>
																			

																		</ul> <!--서브메뉴끝--></li>
																		<script>
																				function option_addOne${ogVs.index}() {
																					
																					$('#option_addOne${ogVs.index}').modal();
																				};
																			</script>
																</ul>
															</nav>
															<!--------필수여부 수정 모달 start--------->
																			<div class="modal fade" id="update_ros_modal${ogVs.index}"
																				role="dialog">

																				<div class="modal-dialog">

																					<!-- Modal content-->
																					<div class="modal-content">
																						<div class="modal-header">
																							<!-- header -->
																							<h4 class="modal-title">옵션 필수여부 설정</h4>
																							<h3
																							style="color: black; font-weight: bolder; text-align: center;">그룹명
																							: ${ogList.og_name}</h3>
																							<h3 id ="hidden_ogCodeForROS${ogVs.index}" style="display:none;">${ogList.og_code}</h3>
																							<input type="hidden" id="og_code${ogVs.index}" value="${ogList.og_code}">
																							<input type="hidden" id="og_seq${ogVs.index}" value="${ogList.og_seq}">
																							<button type="button" class="close"
																								data-dismiss="modal"
																								style="font-size: 20px; color: black;">취소</button>

																						</div>
																						<div class="modal-body">
																							<!-- body -->

																							<li
																								style="border-bottom: 1px solid black; margin: 15px; padding-bottom: 10px;">
																								<h5
																									style="font-size: 15px; font-weight: bolder; color: black; margin-top: 20px;">
																									필수여부</h5>
																									<c:choose>
																										<c:when test="${ogList.og_ros==false}">
																								<div class="row"
																									style="line-height: 20px; margin-left: 10px;">
																									<input type="radio" name="radio2${ogVs.index}" id="radio3${ogVs.index}"
																										value="1" > <label for="radio3${ogVs.index}"
																										style="font-size: 15px;"> [필수] 옵션을 반드시
																										선택해야 주문이 가능해요</label>
																								</div>
																								<div class="row"
																									style="line-height: 20px; margin-left: 10px;">
																									<input type="radio" name="radio2${ogVs.index}" id="radio4${ogVs.index}"
																										value="2" checked> <label for="radio4${ogVs.index}"
																										style="font-size: 15px;"> [선택] 옵션을
																										선택하지 않아도 주문이 가능해요</label>
																								</div>
																										</c:when>
																										<c:otherwise>
																										<div class="row"
																									style="line-height: 20px; margin-left: 10px;">
																									<input type="radio" name="radio2${ogVs.index}" id="radio4${ogVs.index}"
																										value="1" checked> <label for="radio4${ogVs.index}"
																										style="font-size: 15px;"> [필수] 옵션을 반드시
																										선택해야 주문이 가능해요</label>
																								</div>
																								<div class="row"
																									style="line-height: 20px; margin-left: 10px;">
																									<input type="radio" name="radio2${ogVs.index}" id="radio5${ogVs.index}"
																										value="2"> <label for="radio5${ogVs.index}"
																										style="font-size: 15px;" > [선택] 옵션을
																										선택하지 않아도 주문이 가능해요</label>
																								</div>
																										</c:otherwise>
																										</c:choose>
																							</li>

																							<li>
																								<div class="row">
																									<div class="col-lg-12">
																										<button type="button" class="save_Btn" onclick="update_og_ros${ogVs.index}()">적용하기</button>
																									</div>
																								</div>
																							</li>
																							
																							
																			<script>
																				function update_og_ros${ogVs.index}() {
																					var updateOp_ROS = "[true]";
																					if($(":input:radio[name=radio2${ogVs.index}]:checked").val()==1) {
																						updateOp_ROS ="[true]";
																					}else {
																						updateOp_ROS="[false]";
																					}
																					var ogCode_forRos = document.getElementById("hidden_ogCodeForROS${ogVs.index}").innerText;
																					alert(updateOp_ROS);
																					var param = {
																							"og_ros" : updateOp_ROS,
																							"og_code" : ogCode_forRos
																					}
																					
																					$.ajax({
																	  		    	    type: "POST",
																	  		    	    url: "/updateOg_ros.store",
																	  		    	    data: JSON.stringify(param), 
																	  		    	    dataType: "json",
																	  		    	    contentType: "application/json",
																	  		    	    success: function (data) {
																	  		    	        if (data == 1) {
																		  		    	        Swal.fire({
																		  		    	            icon: "success",
																		  		    	            title: "필수여부 수정 완료",
																		  		    	            showConfirmButton: false,
																		  		    	            timer: 1500
																		  		    	        });
																		  		    	        location.href = location.href;
																	  		    	        }else{alert("통신은됨");}
																	  		    	        
																	  		    	        
																	  		    	    },
																	  		    	    error: function (data) {
																	  		    	        console.log("필수여부 수정 통신에러");
																	  		    	    }
																	  		    	});//ajax end
																					
																					
																				}
																			</script>

																						</div>
																						
																					</div>
																				</div>
																			</div>
																			<!--------필수여부 수정 모달 end--------->
																			
																			
																				<!--------+옵션 추가버튼 클릭시 modal start-------->
																	<div class="modal fade" id="option_addOne${ogVs.index}"
																		role="dialog">

																		<div class="modal-dialog">
																		<div class="modal-content">
																				<div class="modal-header">
																					<!-- header -->
																					<h4 class="modal-title">옵션그룹 추가</h4>
																					<h3
																						style="color: black; font-weight: bolder; text-align: center;">
																						옵션명 : ${ogList.og_name }</h3>
																					<button type="button" class="close"
																						data-dismiss="modal"
																						style="font-size: 20px; color: black;">취소</button>

																				</div>
																				<div class="modal-body">
																					<!-- body -->


																					<table class="modal_table">
																						<ul>

																							<li
																								style="border-bottom: 1px solid black; margin: 15px; padding-bottom: 10px;">
																								<h5
																									style="font-size: 15px; font-weight: bolder; color: black; margin-top: 20px">옵션</h5>

																								<div class="groupAdd_OptionList" id="optionOne_${ogVs.index}">
																									<div class="row" style="margin-left: 5px;">
																										<div class="col-lg-5" style="padding: 5px;">
																											<input class="form-control"
																												style="width: relative; font-size: 15px;"
																												type="text" placeholder="예) 1샷 추가"
																												id="newoption_name_input${ogVs.index}">
																										</div>
																										<div class="col-lg-5" style="padding: 5px;">
																											<input class="form-control"
																												style="width: relative; font-size: 15px;"
																												type="number" placeholder="500"
																												id="option_price_input${ogVs.index}">
																										</div>
																										<!-- <div class="col-lg-2" style="padding: 5px;">
																											<button type="button"
																												onclick="javascript:deleteAlert();"
																												class="btn btn-danger btn-xs"
																												style="float: left; margin-top: 7px;">
																												<i class="fa fa-trash-o "></i>
																											</button>
																										</div> -->
																									</div>
																								</div>
																								
																								<div class="row" style="margin-left: 5px;">
																									<button type="button" class="menu_priceOption"
																									onclick="option_priceOption2${ogVs.index}()">+ 가격옵션 추가하기</button>
																								</div>
																							</li>
																							<li>
																								<div class="row">
																									<div class="col-lg-12">
																										<button type="button" class="save_Btn"
																										onclick="addOptionChecking${ogVs.index}()">옵션 추가하기</button>
																									</div>
																								</div>
																							</li>
																						</ul>

																					</table>
		<div class="row" id="hwakin_chang22_${ogVs.index}" style="display:none">
			<h4 id="priceOne_option_${ogVs.index}" style="margin-left: 10px;">
			<span id="newOption_${ogVs.index}"></span> : <span id="newOption_price${ogVs.index}"></span> 원</h4>
		</div>
																					
<script>
function option_priceOption2${ogVs.index}(){
	//이거는 각자 자른 번호를 부여하기 위함.
	indexstring = indexnum.toString();
	indexFinal = ${ogVs.index}+indexstring;
	console.log("dd");
	//가격 밑으로 오게 바꿨어용 #price_list2${vs.index} -->>optionOne_${ogVs.index}
        $('#optionOne_${ogVs.index}').append("<div id='optionOne_${ogVs.index}"+indexstring+"' class='row' style='margin-left: 2px;'>"
		+"<div class='col-lg-5' style='padding: 5px;'> <input class='form-control OPTIONOPTION' "
		+"forCheck='"+indexFinal+"' "
		+"style='width: relative; font-size: 15px;' type='text' placeholder='가격명' id='option_name_${ogVs.index}"+indexstring+"'>"
		+"</div> <div class='col-lg-5' style='padding: 5px;'> <input class='form-control OPTIONPRICEOPTIONPRICE'"
		+" forCheck='"+indexFinal+"' "
		+"style='width: relative; font-size: 15px;' type='number' placeholder='가격' id='option_price_${ogVs.index}"+indexstring+"'>"
		+"</div> <div class='col-lg-2' style='padding: 5px;'> <button type='button'"
		+" fordelete='optionOne_${ogVs.index}"+indexstring+"' "
		+" fordelete2='optiontwo_${ogVs.index}"+indexstring+"' "
		+"value='"+indexFinal+"'"
		+"class='btn btn-danger btn-xs deleteOptionChuga' style='float: left; margin-top: 7px;'>"
		+"<i class='fa fa-trash-o '></i></button></div></div>");
 	  indexnum++;
 	  
 	//메뉴추가에서 가격 row 삭제
	  $(".deleteOptionChuga").click(function() {
			var fordelete = $(this).attr("fordelete"); //div 의 id
			$("#"+fordelete).remove();
			//확인창에서도 삭제
			var fordelete2 = $(this).attr("fordelete2"); //div 의 id
			$("#"+fordelete2).remove();
		  });//메뉴추가에서 가격 row 삭제 끝
		  
		  //확인창에도 옵션 누적시켜줄거임
   	$('#priceOne_option_${ogVs.index}').append('<h4 id="optiontwo_${ogVs.index}'+indexstring+'" style="margin-left: 0px;">'
   	+'<span id="optiontwo_name${ogVs.index}'+indexstring+'">미입력</span> : '
   	+'<span id="optiontwo_price${ogVs.index}'+indexstring+'">미입력</span> 원</h4>');
    
   	$(".OPTIONOPTION").on("propertychange change keyup paste input",
			function() {
   		var indexFinall = $(this).attr("forCheck");
   		console.log(indexFinall);
	  var newmenu_basic_price_input = $(this).val();
	  //메뉴추가 메뉴명 입력시 확인하기 모달로 전달
	  var newMenu_option = document.getElementById("optiontwo_name"+indexFinall);
	  newMenu_option.innerText = newmenu_basic_price_input;
  });
   	
   	$(".OPTIONPRICEOPTIONPRICE").on("propertychange change keyup paste input",
			function() {
   		var indexFinall = $(this).attr("forCheck");
   		console.log(indexFinall);
	  var newmenu_basic_price_input = $(this).val();
	  //메뉴추가 메뉴명 입력시 확인하기 모달로 전달
	  var newMenu_option = document.getElementById("optiontwo_price"+indexFinall);
	  newMenu_option.innerText = newmenu_basic_price_input.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
  });
}

function addOptionChecking${ogVs.index}(){
	//메뉴그룹 정보
	var og_seq = $("#og_seq${ogVs.index}").val();
	var og_code = $("#og_code${ogVs.index}").val();
	//기본 첫째줄 
	var option_name = $("#newoption_name_input${ogVs.index}").val();
	var op_price = $("#option_price_input${ogVs.index}").val();
	//두번째 줄
	var zzzz = document.getElementById("hwakin_chang22_${ogVs.index}").innerText;

	zzzz = zzzz.replace(/원/gi, "won");
	
	console.log(zzzz);
	
//		//빈칸있으면 뭐라하기
	if(option_name==""||op_price==""||zzzz.indexOf("미입력")!=-1){
		Swal.fire({
    		  icon: "error",
    		  title: "입력사항을 확인해주세요",
    		  showConfirmButton: false,
	    		  timer : 1500,
		});
		
	}
	else{
		//ajax
		var paramm = {
				"og_seq" : og_seq,
				"og_code" : og_code,
				"op_name" : option_name,
				"op_price" : op_price,
				"op_total" : zzzz
		};
		
		$.ajax({
	    	    type: "POST",
	    	    url: "/addOptions.store",
	    	    data: JSON.stringify(paramm), 
	    	    dataType: "json",
	    	    contentType: "application/json",
	    	    success: function (data) {
	    	        if (data == 1) {
		    	        Swal.fire({
		    	            icon: "success",
		    	            title: "옵션 추가 완료",
		    	            showConfirmButton: false,
		    	            timer: 1500
		    	        });
		    	        location.reload();
	    	        }else{alert("통신은됨");}
	    	    },
	    	    error: function (data) {
	    	        console.log("메뉴추가 통신에러");
	    	    }
	    	});//ajax end
	}
	
	
	
}

  $(document).ready(function(){
	  
	  $("#newoption_name_input${ogVs.index}").on("propertychange change keyup paste input",
				function() {
		  var newmenu_basic_name_input = $("#newoption_name_input${ogVs.index}").val();
		  //메뉴추가 메뉴명 입력시 확인하기 모달로 전달
		  var newMenu_option = document.getElementById("newOption_${ogVs.index}");
		  newMenu_option.innerText = newmenu_basic_name_input;
	  });
	  
	  $("#option_price_input${ogVs.index}").on("propertychange change keyup paste input",
				function() {
		  var newmenu_basic_price_input = $("#option_price_input${ogVs.index}").val();
		  //메뉴추가 메뉴명 입력시 확인하기 모달로 전달
		  var newMenu_option = document.getElementById("newOption_price${ogVs.index}");
		  newMenu_option.innerText = newmenu_basic_price_input.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	  });
	  
	  
	})//doc ready 끝


</script>
																				</div>
																			</div>
																		</div>
																	</div>
																	<!--------+옵션 추가 버튼 클릭시 modal end-------->
																
																</c:if>
															</c:forEach>
															<!--메뉴그룹 리스트 end-->

														</div>
<!-- ***********************************************************옵션편집 Tab end************************************************************* -->
														
														
														
														
														
													

														<!--주문안내/원산지 편집 start-->
														<div id="faq__333" class="tab-pane">
																

															<div class="wonsanji"
																style="border: 1px solid rgba(0, 0, 0, 0.281); padding: 20px; margin: 10px;">
																<div class="row">
																	<div class="col-lg-3">
																		<h3 style="font-weight: bolder; color: black;">원산지</h3>
																	</div>
																	<div class="col-lg-9" style="text-align: right;">
																		<button type="button" class="btn btn-primary btn-xs" data-toggle="modal" href="#wonsanji_modal"
																			style="float: right; margin-right: 10px; margin-top: 25px; width:30px; height:25px;">
																			<i class="fa fa-pencil"></i>
																		</button>
																	</div>
																</div>

																
																<h4 id="wonsanji_content">
																<c:choose>
																<c:when test="${ empty storeSession.si_wonsanji }">
																원산지를 등록해주세요.
																</c:when>
																<c:otherwise>
																${storeSession.si_wonsanji }
																</c:otherwise>
																</c:choose>
																
																</h4>
															</div>
																<!--원산지 수정 modal-->
															<div class="modal fade" id="wonsanji_modal" role="dialog">
																<div class="modal-dialog"><div class="modal-content" style="height: auto;">
																		<div class="modal-header">
																			<!-- header -->
																			<h4 class="modal-title">원산지 수정하기</h4>
																			<button type="button" class="close"
																				data-dismiss="modal"
																				style="font-size: 20px; color: black;">취소</button>
																			</div>
																		<div class="modal-body">
																			<!-- body -->
																			
																			<div class="row" style="text-align: center;">
																			<textarea id="wonsanji_input" style="width: 90%; min-height: 300px; overflow-y:scroll; resize: none;" placeholder="원산지를 등록해주세요." ></textarea>
																			
																		</div>
																		<div class="row" style="text-align: center;">
																			
																				<button type="button" class="save_Btn" style="margin: 15px; width:90%" onclick="updateOnesangi()" >수정하기</button>
																			
																			</div>

																		</div>
						
																	</div>
																</div>
															</div>
															<script type="text/javascript">
															function updateOnesangi() {
																var si_wonsanji = $("#wonsanji_input").val();
																
																
																if(si_wonsanji=="") {
																	Swal.fire({
													    	            icon: "warning",
													    	            title: "원산지 등록 실패! <br>내용을 입력해 주세요",
													    	            showConfirmButton: false,
													    	            timer: 1500
													    	        });
																}else{
																	console.log(si_wonsanji);
																	var param ={"si_wonsanji" : si_wonsanji}
																	  $.ajax({
																 		  type: "POST",
																           url: "/updateWonsanji.store",
																          data: JSON.stringify(param),
																           dataType: "json",
																          contentType: "application/json",
																          success:function(data){
																         	  
																         	 Swal.fire({
																	    		  icon: "success",
																	    		  title: "수정 완료",
																	    		  showConfirmButton: false,
																	    		  timer: 1500
																			});
																				 document.getElementById('wonsanji_content').textContent =si_wonsanji ;
																				  $("#wonsanji_modal").modal('hide');
																			
																           },error: function(data) {
																             	console.log("오류");
																           }
																 	  })   
																}
															}
															
															</script>


														</div>
														<!--주문안내/원산지 편집 end-->





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
					&copy; Copyrights <strong>WalkingOrder</strong>. All Rights
					Reserved
				</p>
				<a href="../index.html#" class="go-top"> <i
					class="fa fa-angle-up"></i>
				</a>
			</div>
		</footer>
		<!--footer end-->
	</section>
	<!-- js placed at the end of the document so the pages load faster -->

	<script src="resources/assets/js/admin/bootstrap/js/bootstrap.min.js"></script>
	<script src="resources/assets/js/admin/jquery-ui-1.9.2.custom.min.js"></script>
	<script src="resources/assets/js/admin/jquery.ui.touch-punch.min.js"></script>
	<script class="include" type="text/javascript"
		src="resources/assets/js/admin/jquery.dcjqaccordion.2.7.js"></script>
	<script src="resources/assets/js/admin/jquery.scrollTo.min.js"></script>
	<script src="resources/assets/js/admin/jquery.nicescroll.js"
		type="text/javascript"></script>
	<!--common script for all pages-->
	<script src="resources/assets/js/admin/common-scripts.js"></script>
	<!--script for this page-->
<script src="https://sdk.amazonaws.com/js/aws-sdk-2.891.0.min.js"></script>
</body>

</html>


