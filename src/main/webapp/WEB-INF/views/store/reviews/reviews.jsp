<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
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
<style>
/*가로막대그래프 css*/
.hGraph ul {
	margin: 0 50px 0 50px;
	padding: 1px 0 0 0;
	border: 1px solid #ddd;
	border-top: 0;
	border-right: 0;
	font-size: 11px;
	font-family: Tahoma, Geneva, sans-serif;
	list-style: none;
}

.hGraph li {
	position: relative;
	margin: 10px 0;
	white-space: nowrap;
	vertical-align: top;
}

.hGraph .gTerm {
	position: absolute;
	width: 40px;
	top: 0;
	left: -50px;
	line-height: 20px;
	text-align: right;
	color: #000000;
	font-weight: bold;
}

.hGraph .gBar {
	position: relative;
	display: inline-block;
	height: 20px;
	border: 1px solid #fffd6c;
	border-left: 0;
	background: #ffd51c;
}

.hGraph .gBar span {
	position: absolute;
	width: 40px;
	line-height: 20px;
	top: 0;
	right: -50px;
	color: #000000;
}

/*review css*/
.answerReview_click:hover {
	background-color: rgba(255, 125, 4, 0.932);
	color: white;
	font-weight: bolder;
}

.answerReview_click {
	font-size: 25px;
	font-weight: bolder;
	cursor: pointer;
	color: rgb(255, 117, 4);
	border: 1px solid rgba(255, 125, 4, 0.774);
	background-color: rgb(255, 255, 255);
	padding: 10px;
	border-radius: 5px;
	text-align: center;
}

.answerReview_ok:hover {
	background-color: rgba(255, 125, 4, 0.932);
	color: white;
	font-weight: bolder;
}

.answerReview_ok {
	display: none;
	width: 100px;
	font-size: 25px;
	font-weight: bolder;
	cursor: pointer;
	color: rgb(255, 117, 4);
	border: 1px solid rgba(255, 125, 4, 0.774);
	background-color: rgb(255, 255, 255);
	padding: 10px;
	border-radius: 5px;
	text-align: center;
}

/*별점 bar chart css*/
.star-ratings {
	color: #ffffff;
	position: relative;
	unicode-bidi: bidi-override;
	width: max-content;
	-webkit-text-fill-color: transparent;
	/* Will override color (regardless of order) */
	-webkit-text-stroke-width: 1.3px;
	-webkit-text-stroke-color: #2b2a29;
	font-size: 17px;
}

.star-ratings-fill {
	color: #f3b23b;
	padding: 0;
	position: absolute;
	z-index: 1;
	display: flex;
	top: 0;
	left: 0;
	overflow: hidden;
	-webkit-text-fill-color: gold;
}

.star-ratings-base {
	z-index: 0;
	padding: 0;
}
/*review 메뉴하나하나 css*/
.review_menu {
	margin: 5px;
	padding: 5px;
	color: #000000;
	background-color: #2b2a295e;
	border-radius: 10px;
}
</style>

<script>


//리뷰답변 글자수 제한 js

function count_length(){
  var pikabu = document.getElementById('pikabu'); 
  var count = pikabu.value.length;//문자수
  console.log(count);
  if(count<90) {
    document.getElementById('show_length').textContent =count;
    document.getElementById('show_length').style.color ='black';
    document.getElementById('show_maxlength').style.color ='black';
  }else {
    document.getElementById('show_length').textContent =count;
    document.getElementById('show_length').style.color ='red';
    document.getElementById('show_maxlength').style.color ='red';
    
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
          <h5 class="centered">${storeSession.si_name } ${storeSession.si_loc}</h5>
          <p class="sidebar-title" >주문 확인</p>
          <li class="sub-menu">
            <a  href="index.store">
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
            <a class="active" id="user-manage" href="reviews.store">
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

		<%-- <c:forEach var="reviewlist" items="${reviewlist}" varStatus="vs">
			
		</c:forEach>
		
		
		<c:forEach var="reviewlist" items="${reviewlist}" varStatus="vss">
			
		</c:forEach> --%>
		
		

		<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section id="main-content">
		
		<c:set var="fiveStar" value="0" />
		<c:set var="fourStar" value="0" />
		<c:set var="threeStar" value="0" />
		<c:set var="twoStar" value="0" />
		<c:set var="oneStar" value="0" />
		
		
		<c:forEach var="reviewlist" items="${reviewlist}" varStatus="vs">
			<c:set var="allNum" value="${vs.count }" />
			<c:set var="avgStar" value="${reviewlist.AVGSTAR }" />
			<c:if test="${reviewlist.ur_ans eq NULL }">
				<c:set var="noAnswerNum" value="${noAnswerNum + 1 }" />
			</c:if>
			<c:if test="${reviewlist.ur_open eq false }">
				<c:set var="reportNum" value="${reportNum + 1 }" />
			</c:if>
			
			<c:if test="${reviewlist.ur_regdate ge reviewlist.onemonth }">
				<c:set var="dateNum" value="${dateNum + 1 }" />
			</c:if>
			
			
			<c:if test="${reviewlist.ur_star eq 50 }">
				<c:set var="fiveStar" value="${fiveStar + 1 }" />
			</c:if>
			<c:if test="${reviewlist.ur_star eq 40 }">
				<c:set var="fourStar" value="${fourStar + 1 }" />
			</c:if>
			<c:if test="${reviewlist.ur_star eq 30 }">
				<c:set var="threeStar" value="${threeStar + 1 }" />
			</c:if>
			<c:if test="${reviewlist.ur_star eq 20 }">
				<c:set var="twoStar" value="${twoStar + 1 }" />
			</c:if>
			<c:if test="${reviewlist.ur_star eq 10 }">
				<c:set var="oneStar" value="${oneStar + 1 }" />
			</c:if>
		</c:forEach>
		
			<section class="wrapper" style="height: 1500px;">
				<div class="col-lg-12">
					<div class="card-header"
						style="font-size: 16px; background-color: rgb(255, 255, 255); border-radius: 10px;">
						<i class="fa fa-plus-circle" style="margin-bottom: 15px;"></i>최근(30일)
						리뷰 ${dateNum }개
						<div class="row">
							<div class="col-lg-2">
								<div class="row" style="text-align: center; margin-top: 30px;">
									<h5 style="font-weight: bolder">평균별점</h5>
									<h6>최근 30일 기준</h6>
								</div>
								<div class="row" style="text-align: center;">
									<h1 style="margin-top: 0; font-weight: bolder;">${avgStar / 10 }</h1>
								</div>

							</div>
							<div class="col-lg-10">
								<div class="hGraph">
								
									<ul>
										<li><span class="gTerm">5점</span><span class="gBar"
											style="width: ${(fiveStar / allNum) * 100 }%"><span>${fiveStar}개</span></span></li>
										<li><span class="gTerm">4점</span><span class="gBar"
											style="width: ${(fourStar / allNum) * 100 }%"><span>${fourStar}개</span></span></li>
										<li><span class="gTerm">3점</span><span class="gBar"
											style="width: ${(threeStar / allNum) * 100 }%"><span>${threeStar}개</span></span></li>
										<li><span class="gTerm">2점</span><span class="gBar"
											style="width: ${(twoStar / allNum) * 100 }%"><span>${twoStar}개</span></span></li>
										<li><span class="gTerm">1점</span><span class="gBar"
											style="width: ${(oneStar / allNum) * 100 }%"><span>${oneStar}개</span></span></li>

									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="col-lg-12" style="min-width: 500px;">
					<div class="form-panel"
						style="margin-top: 0; border-radius: 0 0 10px 10px;">
							<div class="row content-panel"
								style="border: none; box-shadow: none; padding: 0; margin: 0 5px">

								<!-- /panel-heading -->
								<div class="panel-body col-lg-12"
									style="padding: 0 11px 11px 11px;">
									<div class="tab-content">
										<!-- 메뉴관리 -->
										<div id="menu" class="tab-pane active no-padding">

											<ul class="nav nav-tabs nav-justified">
												<li class="active"><a data-toggle="tab"
													href="#faq__111">전체 리뷰(${allNum })</a></li>
												<li><a data-toggle="tab" href="#faq__222">미답변
														리뷰(${noAnswerNum })</a></li>
												<li><a data-toggle="tab" href="#faq__333">신고
														리뷰(${reportNum })</a></li>


											</ul>

											<!-- /panel-heading -->
											<div class="panel-body col-lg-12">
												<div class="tab-content">


													<!-- 메뉴편집 -->
													<div id="faq__111" class="tab-pane active">
														<!--리뷰1개-->
														<c:forEach var="reviewlist" items="${reviewlist}" varStatus="vs">
														<form class="form-horizontal style-form" method="get">
															<div class="review_container"
																style="border: 1px solid rgba(0, 0, 0, 0.308); padding: 20px; margin-top: 10px; border-radius: 5px;">
																<div class="row">
																	<div class="col-lg-2">
																		<h4
																			style="font-size: 20px; font-weight: bolder; color: #000000; text-align: left; margin: 0;">${reviewlist.u_nickname }</h4>
																		<div class="star-ratings">
																			<div class="star-ratings-fill space-x-2 text-lg"
																				style="width: ${reviewlist.ur_star * 2 }%;">
																				<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
																			</div>
																			<div class="star-ratings-base space-x-2 text-lg">
																				<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
																			</div>
																		</div>
																		<h6>${reviewlist.ur_regdate.substring(0,19) }</h6>
																	</div>

																	<div class="col-lg-10">
																		<h3>${reviewlist.ur_content }</h3>
																		<img src="${reviewlist.ur_pic_url }"
																			style="width: 100px; height: 100px; padding-top: 10px; margin-bottom: 10px; border-radius: 5px;">
																		<h4>주문메뉴</h4>
																		<c:set var="listVar">${reviewlist.o_list_detail}</c:set>
																		<c:forTokens items="${listVar}" delims=",,,"
																			var="value">
																			<span class="review_menu">${value}</span>
																		</c:forTokens>
																		<div style="margin-top: 20px;">
																			<span class="answerReview_click"
																				id="toggle${vs.index}"
																				onclick="openCloseToc${vs.index}()">사장님 댓글
																				등록하기</span>
																		</div>
																	</form>
																	
																	<form class="form-horizontal style-form" name="postForm" method="post" action="/reviewanswer.store">
																		<div class="answer_review button"
																			style="margin-top: 20px; margin-bottom: 10px;">
																			<ol id="review_content${vs.index}"
																				style="padding: 0; display: none">
																				<textarea name="ur_ans" maxlength="99" id="pikabu" oninput="count_length()" 
																				style="width: 700px; height: 300px; resize: none; font-size: 20px;" 
																				placeholder="${reviewlist.ur_ans }"></textarea>
																				<span id="show_length" style="font-size: 20px;">0</span>
																				<span id="show_maxlength" style="font-size: 15px;">/100</span>
																			</ol>
																			<input type="hidden" name="ur_seq" value=${reviewlist.ur_seq }>
																			<button class="answerReview_ok button" id="content_ok${vs.index}" onclick="submit_btn()">
																			등록</button>
																		</div>
																	</form>
																	</div>
																</div>
															</div>
															
															<script>
															  function openCloseToc${vs.index}() {
															    if(document.getElementById('review_content${vs.index}').style.display === 'block') {
															      document.getElementById('content_ok${vs.index}').style.display='none';
															      document.getElementById('review_content${vs.index}').style.display = 'none';
															      document.getElementById('toggle${vs.index}').textContent = '사장님 댓글 등록하기';
															    } else {
															      document.getElementById('content_ok${vs.index}').style.display='block';
															      document.getElementById('review_content${vs.index}').style.display = 'block';
															      document.getElementById('content_ok${vs.index}').textContent='등록';
															      document.getElementById('toggle${vs.index}').textContent = '취소';
															    }
															  }
															
															  function submit_btn() {
															 		document.postForm.submit();
															    }
														  </script>
														</c:forEach>
														
													</div>

													<div id="faq__222" class="tab-pane">

														<!--리뷰1개-->
														<c:forEach var="reviewlist" items="${reviewlist}" varStatus="vss">
															<c:if test="${reviewlist.ur_ans eq NULL }">
																<div class="review_container"
																	style="border: 1px solid rgba(0, 0, 0, 0.308); padding: 20px; margin-top: 10px; border-radius: 5px;">
																	<div class="row">
																		<div class="col-lg-2">
																			<h4
																				style="font-size: 20px; font-weight: bolder; color: #000000; text-align: left; margin: 0;">${reviewlist.u_nickname }</h4>
																			<div class="star-ratings">
																				<div class="star-ratings-fill space-x-2 text-lg"
																					style="width: ${reviewlist.ur_star * 2 }%;">
																					<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
																				</div>
																				<div class="star-ratings-base space-x-2 text-lg">
																					<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
																				</div>
																			</div>
																			<h6>${reviewlist.ur_regdate.substring(0,19) }</h6>
																		</div>

																		<div class="col-lg-10">
																			<h3>${reviewlist.ur_content }</h3>
																			<img src="${reviewlist.ur_pic_url }"
																				style="width: 100px; height: 100px; padding-top: 10px; margin-bottom: 10px; border-radius: 5px;">
																			<h4>주문메뉴</h4>
																			<c:set var="listVar">${reviewlist.o_list_detail}</c:set>
																			<c:forTokens items="${listVar}" delims=",,,"
																				var="value">
																				<span class="review_menu">${value}</span>
																			</c:forTokens>
																			<div style="margin-top: 20px;">
																				<span class="answerReview_click"
																					id="toggleb${vss.index}"
																					onclick="openCloseTocb${vss.index}()">사장님 댓글
																					등록하기</span>
																			</div>
																		</form>
																	
																		<form class="form-horizontal style-form" name="postForm" method="post" action="/reviewanswer.store">
																			<div class="answer_review button"
																				style="margin-top: 20px; margin-bottom: 10px;">
																				<ol id="review_contentb${vss.index}"
																					style="padding: 0; display: none">
																					<textarea name="ur_ans" maxlength="99" id="pikabu"
																						oninput="count_length()"
																						style="width: 700px; height: 300px; resize: none; font-size: 20px;"
																						placeholder="${reviewlist.ur_ans }"></textarea>

																					<span id="show_length" style="font-size: 20px;">0</span>
																					<span id="show_maxlength" style="font-size: 15px;">/100</span>
																				</ol>
																				<input type="hidden" name="ur_seq" value=${reviewlist.ur_seq }>
																				<button class="answerReview_ok button"
																					id="content_okb${vss.index}" onclick="submit_btn()">등록</button>
																			</div>
																		</form>
																		</div>
																	</div>
																</div>
																<script>
																  function openCloseTocb${vss.index}() {
																	 console.log(document.getElementById('review_contentb${vss.index}').style.display);
																    if(document.getElementById('review_contentb${vss.index}').style.display === 'block') {
																      document.getElementById('content_okb${vss.index}').style.display='none';
																      document.getElementById('review_contentb${vss.index}').style.display = 'none';
																      document.getElementById('toggleb${vss.index}').textContent = '사장님 댓글 등록하기';
																    } else {
																      document.getElementById('content_okb${vss.index}').style.display='block';
																      document.getElementById('review_contentb${vss.index}').style.display = 'block';
																      document.getElementById('content_okb${vss.index}').textContent='등록';
																      document.getElementById('toggleb${vss.index}').textContent = '취소';
																    }
																  }
																
															  </script>
																
															</c:if>
														</c:forEach>
														<!-- 리뷰1개끝 -->


													</div>
													<!-- /tab-pane -->
													
													<div id="faq__333" class="tab-pane">
														<c:forEach var="reviewlist" items="${reviewlist}" varStatus="vsss">
															<c:if test="${reviewlist.ur_open eq false }">
																<div class="review_container"
																	style="border: 1px solid rgba(0, 0, 0, 0.308); padding: 20px; margin-top: 10px; border-radius: 5px;">
																	<div class="row">
																		<div class="col-lg-2">
																			<h4
																				style="font-size: 20px; font-weight: bolder; color: #000000; text-align: left; margin: 0;">${reviewlist.u_nickname }</h4>
																			<div class="star-ratings">
																				<div class="star-ratings-fill space-x-2 text-lg"
																					style="width: ${reviewlist.ur_star * 2 }%;">
																					<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
																				</div>
																				<div class="star-ratings-base space-x-2 text-lg">
																					<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
																				</div>
																			</div>
																			<h6>${reviewlist.ur_regdate.substring(0,19) }</h6>
																		</div>
	
																		<div class="col-lg-10">
																			<h3>${reviewlist.ur_content }</h3>
																			<img src="${reviewlist.ur_pic_url }"
																				style="width: 100px; height: 100px; padding-top: 10px; margin-bottom: 10px; border-radius: 5px;">
																			<h4>주문메뉴</h4>
																			<c:set var="listVar">${reviewlist.o_list_detail}</c:set>
																			<c:forTokens items="${listVar}" delims=",,,"
																				var="value">
																				<span class="review_menu">${value}</span>
																			</c:forTokens>
																			<div style="margin-top: 20px;">
																				<span class="answerReview_click"
																					id="togglec${vsss.index}"
																					onclick="openCloseTocc${vsss.index}()">사장님 댓글
																					등록하기</span>
																			</div>
																		</form>
																	
																		<form class="form-horizontal style-form" name="postForm" method="post" action="/reviewanswer.store">
																			<div class="answer_review button"
																				style="margin-top: 20px; margin-bottom: 10px;">
																				<ol id="review_contentc${vsss.index}"
																					style="padding: 0; display: none">
																					<textarea name="ur_ans" maxlength="99" id="pikabu"
																						oninput="count_length()"
																						style="width: 700px; height: 300px; resize: none; font-size: 20px;"
																						placeholder="${reviewlist.ur_ans }"></textarea>
	
																					<span id="show_length" style="font-size: 20px;">0</span>
																					<span id="show_maxlength" style="font-size: 15px;">/100</span>
																				</ol>
																				<input type="hidden" name="ur_seq" value=${reviewlist.ur_seq }>
																				<button class="answerReview_ok button"
																					id="content_okc${vsss.index}" onclick="submit_btn()">등록</button>
																			</div>
																		</form>
																		</div>
																	</div>
																</div>
																<script>
																  function openCloseTocc${vsss.index}() {
																	  console.log("33");
																    if(document.getElementById('review_contentc${vsss.index}').style.display === 'block') {
																      document.getElementById('content_okc${vsss.index}').style.display='none';
																      document.getElementById('review_contentc${vsss.index}').style.display = 'none';
																      document.getElementById('togglec${vsss.index}').textContent = '사장님 댓글 등록하기';
																    } else {
																      document.getElementById('content_okc${vsss.index}').style.display='block';
																      document.getElementById('review_contentc${vsss.index}').style.display = 'block';
																      document.getElementById('content_okc${vsss.index}').textContent='등록';
																      document.getElementById('togglec${vsss.index}').textContent = '취소';
																    }
																  }
																
															  </script>
															</c:if>
														</c:forEach>
													<!-- /tab-pane -->
													</div>
												</div>
												<!-- /tab-content -->
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
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>


</body>

</html>
