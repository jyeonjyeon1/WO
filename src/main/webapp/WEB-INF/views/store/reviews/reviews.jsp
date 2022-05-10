<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<header class="header black-bg">
			<div class="sidebar-toggle-box">
				<div class="openup tooltips" data-placement="right"
					data-original-title="메뉴 여/닫기"></div>
			</div>
			<!--logo start-->
			<a href="../index.html" class="logo"><b>walking<span>order</span></b></a>
			<!--logo end-->
			<div class="nav notify-row" id="top_menu"></div>
			<div class="top-menu">
				<ul class="nav pull-right top-menu">
					<li><a class="logout" href="../login.html">Logout</a></li>
				</ul>
			</div>
		</header>
		<!--header end-->
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
					<li class="sub-menu"><a href="../index.html"> <i
							class="fa fa-h-square"></i> <span>HOME</span>
					</a></li>
					<li class="sub-menu"><a href="lastOrder.html"> <i
							class="fa fa-h-square"></i> <span>지난주문</span>
					</a>
						<ul class="sub">
							<li><a id="store-mng"
								href="/views_store/order/lastOrder_oneday.html">당일주문</a></li>
							<li><a id="store-menu"
								href="/views_store/order/lastOrder_period.html">기간주문</a></li>
						</ul></li>

					<p class="sidebar-title">Self Service</p>
					<li class="sub-menu"><a id="user-manage" class="active"
						href="/views_store/reviews/reviews.html"> <i
							class="fa fa-user" style="font-size: 15px;"></i> <span>&nbsp;리뷰관리</span>
					</a></li>
					<li class="sub-menu"><a id="store-manage" href="javascript:;">
							<i class="fa fa-group" style="font-size: 12px;"></i> <span>메뉴
								관리</span>
					</a>
						<ul class="sub">
							<li><a id="store-mng"
								href="/views_store/menu/menu_crud.html">메뉴관리 (추가 / 수정)</a></li>
							<li><a id="store-menu"
								href="/views_store/menu/menu_pumjeol.html">품절 관리</a></li>
						</ul></li>
					<li class="sub-menu"><a id="order-manage" href="javascript:;">
							<i class="fa fa-shopping-cart"></i> <span>매장 정보 관리</span>
					</a>
						<ul class="sub">
							<li><a id="total-order"
								href="/views_store/info/info_basic.html">기본정보 변경</a></li>
							<li><a id="store-order"
								href="/views_store/info/info_manage.html">운영 정보 변경</a></li>

						</ul></li>


					<p class="sidebar-title">정산</p>
					<li class="sub-menu"><a id="settlement" href="javascript:;">
							<i class=" fa fa-krw"></i> <span>정산</span>
					</a>
						<ul class="sub">
							<li><a id="pg-comm"
								href="/views_store/calculate/calculate_today.html">오늘 매출</a></li>
							<li><a id="pg-stlmt"
								href="/views_store/calculate/calculate_period.html">기간 매출 정산</a></li>
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

			<section class="wrapper" style="height: 1500px;">
				<div class="col-lg-12">
					<div class="card-header"
						style="font-size: 16px; background-color: rgb(255, 255, 255); border-radius: 10px;">
						<i class="fa fa-plus-circle" style="margin-bottom: 15px;"></i>최근(30일)
						리뷰 255개

						<div class="row">
							<div class="col-lg-2">
								<div class="row" style="text-align: center; margin-top: 30px;">
									<h5 style="font-weight: bolder">평균별점</h5>
									<h6>최근 6개월 기준</h6>
								</div>
								<div class="row" style="text-align: center;">
									<h1 style="margin-top: 0; font-weight: bolder;">4.8</h1>
								</div>

							</div>
							<div class="col-lg-10">
								<div class="hGraph">
									<ul>
										<li><span class="gTerm">5점</span><span class="gBar"
											style="width: 90%"><span>220개</span></span></li>
										<li><span class="gTerm">4점</span><span class="gBar"
											style="width: 20%"><span>20개</span></span></li>
										<li><span class="gTerm">3점</span><span class="gBar"
											style="width: 10%"><span>10개</span></span></li>
										<li><span class="gTerm">2점</span><span class="gBar"
											style="width: 5%"><span>5개</span></span></li>
										<li><span class="gTerm">1점</span><span class="gBar"
											style="width: 0%"><span>0개</span></span></li>

									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="col-lg-12" style="min-width: 500px;">
					<div class="form-panel"
						style="margin-top: 0; border-radius: 0 0 10px 10px;">
						<form class="form-horizontal style-form" method="get">
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
													href="#faq__111">전체 리뷰(19)</a></li>
												<li><a data-toggle="tab" href="#faq__222">미답변 리뷰(7)</a>
												</li>
												<li><a data-toggle="tab" href="#faq__333">신고 리뷰(0)</a>
												</li>


											</ul>

											<!-- /panel-heading -->
											<div class="panel-body col-lg-12">
												<div class="tab-content">


													<!-- 메뉴편집 -->
													<div id="faq__111" class="tab-pane active">



														<!--리뷰1개-->
														<div class="review_container"
															style="border: 1px solid rgba(0, 0, 0, 0.308); padding: 20px; margin-top: 10px; border-radius: 5px;">
															<div class="row">
																<div class="col-lg-2">
																	<h4
																		style="font-size: 20px; font-weight: bolder; color: #000000; text-align: left; margin: 0;">배고프젼</h4>
																	<div class="star-ratings">
																		<div class="star-ratings-fill space-x-2 text-lg"
																			style="width: 80%;">
																			<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
																		</div>
																		<div class="star-ratings-base space-x-2 text-lg">
																			<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
																		</div>
																	</div>
																	<h6>2022.05.01</h6>
																</div>

																<div class="col-lg-10">
																	<h3>오랜만에 먹었더니 너무 맛있었어요 >< 너무간편하고 좋아요</h3>
																	<img src="../5.jpg"
																		style="width: 100px; height: 100px; padding-top: 10px; margin-bottom: 10px; border-radius: 5px;">
																	<h4>주문메뉴</h4>
																	<span class="review_menu">달고나라떼</span><span
																		class="review_menu">아메리카노</span><span
																		class="review_menu">바닐라라떼</span> <br>
																	<div style="margin-top: 20px;">
																		<span class="answerReview_click" id="toggle1"
																			onclick="openCloseToc()">사장님 댓글 등록하기</span>
																	</div>
																	<div class="answer_review button"
																		style="margin-top: 20px; margin-bottom: 10px;">
																		<ol id="review_content1"
																			style="padding: 0; display: none">
																			<textarea maxlength="99" id="pikabu"
																				oninput="count_length()"
																				style="width: 700px; height: 300px; resize: none; font-size: 20px;"
																				placeholder="리뷰에 대한 답변을 해주세요!"; ></textarea>

																			<span id="show_length" style="font-size: 20px;">0</span>
																			<span id="show_maxlength" style="font-size: 15px;">/100</span>

																		</ol>

																		<span class="answerReview_ok" id="content_ok1"
																			onclick="">등록</span>


																	</div>



																</div>

															</div>

														</div>

														<script>
												//리뷰1개 js
											  function openCloseToc() {
											    if(document.getElementById('review_content1').style.display === 'block') {
											      document.getElementById('content_ok1').style.display='none';
											      document.getElementById('review_content1').style.display = 'none';
											      document.getElementById('toggle1').textContent = '사장님 댓글 등록하기';
											    } else {
											      document.getElementById('content_ok1').style.display='block';
											      document.getElementById('review_content1').style.display = 'block';
											      document.getElementById('content_ok1').textContent='등록';
											      document.getElementById('toggle1').textContent = '취소';
											    }
											  }
											
											  </script>
											  
											  <!--리뷰1개-->
														<div class="review_container"
															style="border: 1px solid rgba(0, 0, 0, 0.308); padding: 20px; margin-top: 10px; border-radius: 5px;">
															<div class="row">
																<div class="col-lg-2">
																	<h4
																		style="font-size: 20px; font-weight: bolder; color: #000000; text-align: left; margin: 0;">배고프젼</h4>
																	<div class="star-ratings">
																		<div class="star-ratings-fill space-x-2 text-lg"
																			style="width: 80%;">
																			<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
																		</div>
																		<div class="star-ratings-base space-x-2 text-lg">
																			<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
																		</div>
																	</div>
																	<h6>2022.05.01</h6>
																</div>

																<div class="col-lg-10">
																	<h3>오랜만에 먹었더니 너무 맛있었어요 >< 너무간편하고 좋아요</h3>
																	<img src="../5.jpg"
																		style="width: 100px; height: 100px; padding-top: 10px; margin-bottom: 10px; border-radius: 5px;">
																	<h4>주문메뉴</h4>
																	<span class="review_menu">달고나라떼</span><span
																		class="review_menu">아메리카노</span><span
																		class="review_menu">바닐라라떼</span> <br>
																	<div style="margin-top: 20px;">
																		<span class="answerReview_click" id="toggle2"
																			onclick="openCloseToc()">사장님 댓글 등록하기</span>
																	</div>
																	<div class="answer_review button"
																		style="margin-top: 20px; margin-bottom: 10px;">
																		<ol id="review_content2"
																			style="padding: 0; display: none">
																			<textarea maxlength="99" id="pikabu"
																				oninput="count_length()"
																				style="width: 700px; height: 300px; resize: none; font-size: 20px;"
																				placeholder="리뷰에 대한 답변을 해주세요!"; ></textarea>

																			<span id="show_length" style="font-size: 20px;">0</span>
																			<span id="show_maxlength" style="font-size: 15px;">/100</span>

																		</ol>

																		<span class="answerReview_ok" id="content_ok2"
																			onclick="">등록</span>


																	</div>



																</div>

															</div>

														</div>

														<script>
												//리뷰1개 js
											  function openCloseToc() {
											    if(document.getElementById('review_content2').style.display === 'block') {
											      document.getElementById('content_ok2').style.display='none';
											      document.getElementById('review_content2').style.display = 'none';
											      document.getElementById('toggle2').textContent = '사장님 댓글 등록하기';
											    } else {
											      document.getElementById('content_ok2').style.display='block';
											      document.getElementById('review_content2').style.display = 'block';
											      document.getElementById('content_ok2').textContent='등록';
											      document.getElementById('toggle2').textContent = '취소';
											    }
											  }
											
											  </script>
											  <!-- 리뷰1개끝 -->





													</div>

													<div id="faq__222" class="tab-pane">
													
													<!--리뷰1개-->
														<div class="review_container"
															style="border: 1px solid rgba(0, 0, 0, 0.308); padding: 20px; margin-top: 10px; border-radius: 5px;">
															<div class="row">
																<div class="col-lg-2">
																	<h4
																		style="font-size: 20px; font-weight: bolder; color: #000000; text-align: left; margin: 0;">배고프젼</h4>
																	<div class="star-ratings">
																		<div class="star-ratings-fill space-x-2 text-lg"
																			style="width: 80%;">
																			<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
																		</div>
																		<div class="star-ratings-base space-x-2 text-lg">
																			<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
																		</div>
																	</div>
																	<h6>2022.05.01</h6>
																</div>

																<div class="col-lg-10">
																	<h3>오랜만에 먹었더니 너무 맛있었어요 >< 너무간편하고 좋아요</h3>
																	<img src="../5.jpg"
																		style="width: 100px; height: 100px; padding-top: 10px; margin-bottom: 10px; border-radius: 5px;">
																	<h4>주문메뉴</h4>
																	<span class="review_menu">달고나라떼</span><span
																		class="review_menu">아메리카노</span><span
																		class="review_menu">바닐라라떼</span> <br>
																	<div style="margin-top: 20px;">
																		<span class="answerReview_click" id="toggle3"
																			onclick="openCloseToc()">사장님 댓글 등록하기</span>
																	</div>
																	<div class="answer_review button"
																		style="margin-top: 20px; margin-bottom: 10px;">
																		<ol id="review_content3"
																			style="padding: 0; display: none">
																			<textarea maxlength="99" id="pikabu"
																				oninput="count_length()"
																				style="width: 700px; height: 300px; resize: none; font-size: 20px;"
																				placeholder="리뷰에 대한 답변을 해주세요!"; ></textarea>

																			<span id="show_length" style="font-size: 20px;">0</span>
																			<span id="show_maxlength" style="font-size: 15px;">/100</span>

																		</ol>

																		<span class="answerReview_ok" id="content_ok3"
																			onclick="">등록</span>


																	</div>



																</div>

															</div>

														</div>

														<script>
												//리뷰1개 js
											  function openCloseToc() {
											    if(document.getElementById('review_content3').style.display === 'block') {
											      document.getElementById('content_ok3').style.display='none';
											      document.getElementById('review_content3').style.display = 'none';
											      document.getElementById('toggle3').textContent = '사장님 댓글 등록하기';
											    } else {
											      document.getElementById('content_ok3').style.display='block';
											      document.getElementById('review_content3').style.display = 'block';
											      document.getElementById('content_ok3').textContent='등록';
											      document.getElementById('toggle3').textContent = '취소';
											    }
											  }
											
											  </script>
											  <!-- 리뷰1개끝 -->
													
													
													</div>
													<!-- /tab-pane -->
													<div id="faq__333" class="tab-pane">333</div>
													<!-- /tab-pane -->

												</div>
												<!-- /tab-content -->
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

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
