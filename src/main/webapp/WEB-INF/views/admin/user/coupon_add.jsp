<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">


<title>워킹오더 관리자 페이지</title>

<!-- Favicons -->
<link href="resources/assets/images/admin/logo/logo_only.svg" rel="icon">
<!-- 테이블용 css -->
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />



<script>
	function date_radio1() {

		document.getElementById('dday_num').style.display = 'block';
		document.getElementById('dday_num1').style.display = 'block';
		document.getElementById('dday_date').style.display = 'none';

	}

	function date_radio2() {
		document.getElementById('dday_date').style.display = 'block';
		document.getElementById('dday_num1').style.display = 'none';
		document.getElementById('dday_num').style.display = 'none';
	}
</script>

</head>

<body>
	<section id="container">
		<!-- 헤더 import -->
		<%@ include file="../inc/admin_header.jsp"%>
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
					<h5 class="centered">김 버터</h5>
					<p class="sidebar-title">설정</p>
					<li class="sub-menu"><a href="../index.admin"> <i
							class="fa fa-h-square"></i> <span>Home</span>
					</a></li>
					<li class="sub-menu"><a id="testid"
						class="dcjq-parent testjirong" href="javacript:;"> <i
							class="fa fa-navicon"></i> <span>All Menu</span>
					</a></li>
					<p class="sidebar-title">마이 메뉴</p>
					<li class="sub-menu dcjq-parent-li"><a id="user-manage"
						class="active dcjq-parent" href="javascript:void(0);"> <i
							class="fa fa-user" style="font-size: 15px;""></i> <span>&nbsp;회원
								관리</span>
					</a>
						<ul class=" sub">
							<li><a id="user-mng" href="user_mng.admin">회원 관리</a></li>
							<li class="active"><a id="coupon-mng"
								href="coupon_mng.admin">쿠폰 관리</a></li>
							<li><a id="point-mng" href="point_mng.admin">포인트 관리</a></li>
							<li><a id="connect-hist" href="connect_hist.admin">접속 이력</a></li>
						</ul></li>
					<li class="sub-menu"><a id="store-manage" href="javascript:;">
							<i class="fa fa-group" style="font-size: 12px;"></i> <span>매장
								관리</span>
					</a>
						<ul class="sub">
							<li><a id="store-mng" href="store_mng.admin">매장 관리</a></li>
							<li><a id="store-menu" href="pending_menuimg.admin">매장 메뉴 관리</a></li>
							<li><a id="store-pending" href="store_pending.admin">승인
									대기</a></li>
							<li><a id="join-inq" href="join_inq.admin">입점 문의</a></li>
						</ul></li>
					<li class="sub-menu"><a id="order-manage" href="javascript:;">
							<i class="fa fa-shopping-cart"></i> <span>주문 관리</span>
					</a>
						<ul class="sub">
							<li><a id="total-order" href="total_order.admin">전체 주문
									관리</a></li>
							<li><a id="store-order" href="store_order.admin">매장별 주문
									관리</a></li>
							<li><a id="cancel-order" href="cancel_order.admin">취소 주문
									관리</a></li>
							
						</ul></li>
					<li class="sub-menu"><a id="board-manage" href="javascript:;">
							<i class="fa fa-pencil-square-o" style="font-size: 13px;"></i> <span>보드
								관리</span>
					</a>
						<ul class="sub">
							<li><a id="notices" href="notices.admin">공지사항</a></li>
							<li><a id="faq-mng" href="faq_mng.admin">FAQ 관리</a></li>

							<li><a id="review-mng" href="review_mng.admin">리뷰 관리</a></li>
							<li><a id="inquiry" href="inquiry.admin">1:1 문의</a></li>
						</ul></li>
					<li class="sub-menu"><a id="page-manage" href="javascript:;">
							<i class="fa fa-sticky-note"></i> <span>페이지 관리</span>
					</a>
						<ul class="sub">
							<li><a id="banner-mng" href="banner_mng.admin">배너 관리</a></li>
							<li><a id="banner-mng" href="drink_recom.admin">오늘의 음료</a></li>
							<li><a id="banner-mng" href="searchbar_mng.admin">검색어 관리</a></li>
							<li><a id="terms-mng" href="terms_mng.admin">약관 관리</a></li>
							<li><a id="policy-mng" href="policy_mng.admin">정책 관리</a></li>
							<li><a id="doc-form" href="doc_form.admin">증빙서류</a></li>
						</ul></li>
					<li class="sub-menu"><a id="mess" href="javascript:;"> <i
							class="fa fa-envelope-open-o" style="font-size: 13px;"></i> <span>메세지
								관리</span>
					</a>
						<ul class="sub">
							
							
							<li><a id="mess-send" href="mess_send.admin">문자 전송</a></li>
							<li><a id="mess-send-group" href="mess_send_group.admin">단체
									문자 전송</a></li>
							<li><a id="mess-hist" href="mess_hist.admin">문자 전송 이력</a></li>
						</ul></li>
					
					<li class="sub-menu"><a id="statistics" href="javascript:;">
							<i class=" fa fa-bar-chart-o"></i> <span>통계</span>
					</a>
						<ul class="sub">
							<li><a id="order-period" href="order_period.admin">기간별
									주문 통계</a></li>
							<li><a id="store-sales" href="store_sales.admin">매장별 매출
									통계</a></li>
							
							<li><a id="by-chart" href="by_chart.admin">표로 확인</a></li>
							<li><a id="by-graph" href="by_graph.admin">그래프로 확인</a></li>
						</ul></li>


				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->

		<%!String nansu = "";%>
		<%!String visible = "";%>
		<%!int s = 0;%>
		<%
		for (int j = 0; j < 16; j++) {
			if (((int) (Math.random() * 10) + 1) % 3 == 0) {
				nansu += (char) ((Math.random() * 26) + 65);
			} else if (((int) (Math.random() * 10) + 1) % 5 == 0) {
				nansu += (int) (Math.random() * 10);
			} else {
				nansu += (char) ((Math.random() * 26) + 97);
			}
		}
		%>


		<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section id="main-content">
<%@ include file="../inc/admin_allmenu.jsp" %>
			<!-- allmenu import -->
			
			<section class="wrapper site-min-height">
				<h3>
					<i class="fa fa-angle-right"></i> 쿠폰 관리
				</h3>
				<div class="row mt">
					<div class="col-lg-7" style="min-width: 400px;">
						<div class="card-header" style="font-size: 16px;">
							<i class="fa fa-plus-circle" style="font-size: 14px;"></i> 쿠폰 등록
						</div>
						<div class="form-panel"
							style="margin-top: 0; padding-bottom: 38px; border-radius: 0 0 10px 10px;">
							<form class="form-horizontal style-form" name="coupon_form" id = "coupon_form" method="post" action="/addCoupon.admin">
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">쿠폰</label>
									<div class="col-sm-3 col-sm-3 col-sm-3">
										<div class="dataTable-dropdown">
											<select name="ct_type" class="dataTable-selector">
												<option value="false">전체</option>
												<option value="true">개인</option>
											</select>
										</div>
									</div>


									<div class="col-sm-4 col-sm-4 col-sm-4" style="display: hidden">
										<input type="text" name="ct_nansu" value="<%=nansu%>" readonly>
										
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">이벤트명</label>
									<div class="col-sm-6">
										<input class="form-control" type="text" name="ct_name" placeholder="이벤트명">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">내용</label>
									<div class="col-sm-8">
										<input class="form-control" type="text" name="ct_content" placeholder="이벤트 설명">
										※ 해당 내용은 유저에게 노출되지 않습니다.
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">유형</label>
									<div class="col-sm-10">
										<label class="radio-inline"> 
											<input type="radio" name="ct_discount_type" id="inlineRadio2" value="true" checked>
											비율할인(%)</label> 
										<label class="radio-inline">
											<input type="radio" name="ct_discount_type" id="inlineRadio3" value="false">
											금액할인(원) </label> 
										<input type="text" name="ct_discount" class="form-control round-form" placeholder="0" style="width: 150px; float: right; margin: 0 27px 0 0;">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">유효기간</label>
									<div class="col-sm-3">
										<label class="radio-inline"> <input type="radio"
											onclick="date_radio1()" name="inRad2" id="inlineRadio1"
											value="option1" checked> 일수
										</label> <label class="radio-inline"> <input type="radio"
											onclick="date_radio2()" name="inRad2" id="inlineRadio2"
											value="option2"> 날짜
										</label>
									</div>

									<div class="col-sm-2" id="dday_num" style="display: block;">
										<input class="form-control round-form" type="text" name="ct_day"
											placeholder="0" style="margin-left: 15px; width: 100%;" value="0">
									</div>
									<div class="col-sm-2" id="dday_num1"
										style="display: block; padding: 10px 0 0 5px;">일</div>

									<div class="col-sm-7" id="dday_date"
										style="display: none; padding: 0; float: left;">
										<div class="col-sm-5">
											<input class="form-control round-form" name="ct_startdate" type="date"
												style="width: 100%;">
										</div>
										<div class="col-sm-1" style="padding: 0; text-align: center;">
											<h4>~</h4>
										</div>
										<div class="col-sm-5">
											<input class="form-control round-form" name="ct_enddate" type="date"
												style="width: 100%;">
										</div>
									</div>

								</div>
								<button type="button" onclick="window.history.back()"
									class="btn btn-theme"
									style="width: 70px; float: right; margin-left: 10px;">뒤로</button>
								<button type="submit" class="btn btn-theme" style="width: 85px; float: right;">
									쿠폰등록</button>
							</form>
						</div>
						<%
							nansu = "";
						%>

					</div>
				</div>
				<!-- 테이블 -->

			</section>
			<!-- /wrapper -->
		</section>
		<!-- /MAIN CONTENT -->
		<!--main content end-->



		<!-- 푸더 import -->
		<%@ include file="../inc/admin_footer.jsp"%>
		<!--footer end-->
	</section>

	<!--script for this page-->


	<script
		src="https://cdn.jsdelivr.net/npm/simple-datatables@3.2.0/dist/umd/simple-datatables.js"></script>
	<script
		src="resources/assets/js/admin/datatable/datatables-simple-demo.js"></script>
</body>

</html>