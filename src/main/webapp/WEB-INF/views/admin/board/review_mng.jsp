<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<title>워킹오더 리뷰관리</title>

<!-- Favicons -->
<link href="resources/assets/images/admin/logo/logo_only.svg" rel="icon">
<link href="resources/assets/images/admin/apple-touch-icon.png"
	rel="apple-touch-icon">
<style>

.switch-button {
        position: relative;
        display: inline-block;
        width: 55px;
        height: 30px;
    }

    .switch-button input {
        opacity: 0;
        width: 0;
        height: 0;
    }

    .onoff-switch {
        position: absolute;
        cursor: pointer;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        border-radius:20px;
        background-color: #ccc;
        box-shadow: inset 1px 5px 1px #999;
        -webkit-transition: .4s;
        transition: .4s;
    }

    .onoff-switch:before {
        position: absolute;
        content: "";
        height: 22px;
        width: 22px;
        left: 4px;
        bottom: 4px;
        background-color: #fff;
        -webkit-transition: .5s;
        transition: .4s;
        border-radius:20px;
    }

    .switch-button input:checked + .onoff-switch {
        background-color: #FF6F00;
        box-shadow: inset 1px 5px 1px #C25400;
    }

    .switch-button input:checked + .onoff-switch:before {
        -webkit-transform: translateX(26px);
        -ms-transform: translateX(26px);
        transform: translateX(26px);
    }
 
</style>
<!-- Custom styles for this template -->


<!-- 테이블용 css -->
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />

</head>

<body>
	<section id="container">
		<!-- 헤더 import -->
		<%@ include file="../inc/admin_header.jsp" %>
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
					<li class="sub-menu"><a id="user-manage"
						href="javascript:void(0);"> <i class="fa fa-user"
							style="font-size: 15px;""></i> <span>&nbsp;회원 관리</span>
					</a>
						<ul class=" sub">
							<li><a id="user-mng" href="user_mng.admin">회원 관리</a></li>
							<li><a id="coupon-mng" href="coupon_mng.admin">쿠폰 관리</a></li>
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
					<li class="sub-menu dcjq-parent-li"><a id="board-manage"
						class="active dcjq-parent" href="javascript:;"> <i
							class="fa fa-pencil-square-o" style="font-size: 13px;"></i> <span>보드
								관리</span>
					</a>
						<ul class="sub">
							<li><a id="notices" href="notices.admin">공지사항</a></li>
							<li><a id="faq-mng" href="faq_mng.admin">FAQ 관리</a></li>

							<li class="active"><a id="review-mng"
								href="review_mng.admin">리뷰 관리</a></li>
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



		<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section id="main-content">
<%@ include file="../inc/admin_allmenu.jsp" %>
			<section class="wrapper site-min-height">
				<h3>
					<i class="fa fa-angle-right"></i> 리뷰 관리
				</h3>
				<!-- <div class="row mt">
					<div class="col-lg-12">
						<div class="card-header" style="font-size: 16px;">
							<i class="fa fa-search" style="font-size: 14px;"></i> 리뷰 검색
						</div>
						작성일
						<div class="form-panel"
							style="margin-top: 0; padding-bottom: 38px;">
							<form class="form-horizontal style-form" method="get">
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">작성일</label>
									<div class="col-sm-10">
										<a class="date__choose__btn" type="button">오늘</a> <a
											class="date__choose__btn" type="button">1주일</a> <a
											class="date__choose__btn" type="button">1개월</a> <a
											class="date__choose__btn" type="button">3개월</a> <a
											class="date__choose__btn" type="button">6개월</a> <a
											class="date__choose__btn" type="button"
											style="margin-right: 10px;">1년</a> <input
											class="form-control round-form" type="date"
											style="margin-right: 10px; width: 15%; min-width: 120px; display: inline-block;">
										~ <input class="form-control round-form" type="date"
											style="margin-left: 10px; width: 15%; min-width: 120px; display: inline-block;">
									</div>
								</div>
								리뷰타입
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">리뷰타입</label>
									<div class="col-sm-10">
										<label class="checkbox-inline"> <input type="checkbox"
											id="inlineCheckbox1" value="option1" checked> 전체
										</label> <label class="checkbox-inline"> <input
											type="checkbox" id="inlineCheckbox2" value="option2" checked>
											포토리뷰
										</label> <label class="checkbox-inline"> <input
											type="checkbox" id="inlineCheckbox2" value="option2" checked>
											텍스트리뷰
										</label>
									</div>
								</div>
								리뷰조건
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">리뷰조건</label>
									<div class="col-sm-10">
										<div class="row" style="padding-left: 15px;">
											<label class="checkbox-inline" style="padding-left: 0;">
												구매자평점</label> <label class="checkbox-inline"> <input
												type="checkbox" id="inlineCheckbox1" value="option1" checked>
												전체
											</label> <label class="checkbox-inline"> <input
												type="checkbox" id="inlineCheckbox2" value="option2" checked>
												1점
											</label> <label class="checkbox-inline"> <input
												type="checkbox" id="inlineCheckbox2" value="option2" checked>
												2점
											</label> <label class="checkbox-inline"> <input
												type="checkbox" id="inlineCheckbox2" value="option2" checked>
												3점
											</label> <label class="checkbox-inline"> <input
												type="checkbox" id="inlineCheckbox2" value="option2" checked>
												4점
											</label> <label class="checkbox-inline"> <input
												type="checkbox" id="inlineCheckbox2" value="option2" checked>
												5점
											</label>
										</div>
										/row1
										<div class="row"
											style="padding-left: 15px; margin-bottom: 5px;">
											<label class="checkbox-inline" style="padding-left: 0;">
												노출상태 &nbsp;&nbsp;&nbsp;</label> <label class="checkbox-inline">
												<input type="checkbox" id="inlineCheckbox1" value="option1"
												checked> 전체
											</label> <label class="checkbox-inline"> <input
												type="checkbox" id="inlineCheckbox2" value="option2" checked>
												공개
											</label> <label class="checkbox-inline"> <input
												type="checkbox" id="inlineCheckbox2" value="option2" checked>
												블라인드
											</label>
										</div>
										/row2
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">상세검색</label>
									<div class="col-sm-2 dropthebeat">
										<div class="dataTable-dropdown" style="margin-top: 4px;">
											<select class="dataTable-selector">
												<option value="all">전체</option>
												<option value="id">회원</option>
												<option value="name">매장</option>
												<option value="nick">주문번호</option>
											</select>
										</div>
									</div>
									<div class="col-sm-8 col-sm-8 col-sm-8">
										<input type="text" class="form-control round-form"
											placeholder="홍길동" style="width: 35%;">
									</div>
								</div>


								<button type="submit" class="btn btn-theme"
									style="width: 70px; float: right;">검색</button>
								<button type="reset" class="btn grey__button"
									style="height: 34px; width: 70px; float: right; margin-right: 10px;">초기화</button>

							</form>
						</div>


						</form>
					</div>
				</div> -->

				<!-- 테이블 -->
				<div class="row mt">
					<div class="col-lg-12 cardd mb-4" style="height: fit-content;">
						<div class="card-header">
							<i class="fa fa-table"></i> 검색 결과
						</div>
						<div class="card-body">

							<table id="datatablesSimple">
								<thead>
									<tr>
										<th data-sortable="" style="width: 5%;"><a href="#"
											class="dataTable-sorter">번호</a></th>
										<th data-sortable="" style="width: 10%;"><a href="#"
											class="dataTable-sorter">주문번호</a></th>
										<th data-sortable="" style="width: 15%;"><a href="#"
											class="dataTable-sorter">내용</a></th>
										<th data-sortable="" style="width: 5%;"><a href="#"
											class="dataTable-sorter">별점</a></th>
										<th data-sortable="" style="width: 10%;"><a href="#"
											class="dataTable-sorter">작성자</a></th>
										<th data-sortable="" style="width: 15%;"><a href="#"
											class="dataTable-sorter">작성일</a></th>
										<th data-sortable="" style="width: 7%;"><a href="#"
											class="dataTable-sorter">노출</a></th>
										<th data-sortable="" style="width: 10%;"><a href="#"
											class="dataTable-sorter">상태변경</a></th>
									</tr>
								</thead>

								<tbody>
									<c:forEach var="reviewList" items="${reviewList }" varStatus="vs">
										<tr>
											<td>${vs.count }</td>
											<td>${reviewList.o_code }</td>
	
											<td>${reviewList.ur_content }</td>
											<td>${reviewList.ur_star / 10 }</td>
											<td>${reviewList.u_name }</td>
											<td>${reviewList.ur_regdate }</td>
											<c:if test="${reviewList.ur_open eq true }">
												<td>공개</td>
											</c:if>
											<c:if test="${reviewList.ur_open eq false }">
												<td>비공개</td>
											</c:if>
											<td><a data-toggle="modal" href="#myModal${vs.count }"
												class="btn btn-success btn-xs"><i class="fa fa-eye"></i></a>
												<button class="btn btn-primary btn-xs">
													<i class="fa fa-pencil"></i>
												</button>
												<button type="button" onclick="javascript:deleteAlert();"
													class="btn btn-danger btn-xs">
													<i class="fa fa-trash-o "></i>
												</button></td>
										</tr>



										<!-- Modal -->
										<div aria-hidden="true" aria-labelledby="myModalLabel"
											role="dialog" tabindex="-1" id="myModal${vs.count }" class="modal fade"
											style="margin: 20px auto 0;">
											<form method="post" name="reviewForm" action="/updateReview.admin">
												<div class="modal-dialog store">
													<div class="modal-content">
														<div class="modal-header_store">
															<button type="button" class="close" data-dismiss="modal"
																aria-hidden="true">&times;</button>
															<h4 class="modal-title">리뷰 보기</h4>
														</div>
														<!-- 정보시작 -->
														<div class="modal_wrapbody">
														
															<div class="modal-body" style="padding-bottom: 0;">
																<p style="margin-bottom: 2px;">주문번호
																<p></p>
																<input type="text" id="o_code" name="o_code"
																	value="${reviewList.o_code }" class="form-control" readonly>
															</div>
															<div class="modal-body" style="padding-bottom: 0;">
																<p style="margin-bottom: 2px;">작성자</p>
																<input type="text" id="u_id" name="u_id"
																	style="width: 30%; display: inline-block;"
																	value="${reviewList.u_name }" class="form-control" readonly>
																<input type="text" id="u_name" name="u_name"
																	style="width: 30%; display: inline-block;"
																	value="${reviewList.u_id }" class="form-control" readonly>
																<input type="text" id="u_tel" name="u_tel"
																	style="width: 30%; display: inline-block;"
																	value="${reviewList.u_tel }" class="form-control" readonly>
															</div>
															<div class="modal-body" style="padding-bottom: 0;">
																<p style="margin-bottom: 2px;">제품</p>
																<c:set var="text" value=""></c:set>
																<c:set var="menus" value="${fn:split(reviewList.o_list_detail,',,,')}" />
																<c:forEach var="menu_all" items="${menus}" varStatus="vs">
																		<c:set var="text" value="${(text  += ' ' += menu_all) }"></c:set>
																	</c:forEach>
																<textarea rows="3" id="menu_all" name="menu_all" class="form-control" readonly>${text }</textarea>
															</div>
															<div class="modal-body" style="padding-bottom: 0;">
																<p style="margin-bottom: 2px;" readonly>리뷰 내용</p>
																<textarea rows="3" id="ur_content" name="ur_content" class="form-control" readonly>${reviewList.ur_content }</textarea>
															</div>
															
															<div class="modal-body" style="padding-bottom: 0;">
																<p style="margin-bottom: 2px;">금액</p>
																<input type="text" id="o_total_price" name="o_total_price" value="${reviewList.o_total_price }"
																	class="form-control"
																	style="width: 30%; display: inline-block;" readonly> 원
															</div>
															<div class="modal-body" style="padding-bottom: 0;">
																<p style="margin-bottom: 2px;">매장명</p>
																<input type="text" id="si_name" name="si_name" value="${reviewList.si_name }${reviewList.si_loc }"
																	class="form-control" readonly>
															</div>
															<div class="modal-body" style="padding-bottom: 0;">
																<p style="margin-bottom: 2px;">공개 여부</p>	
																<c:set var="opens" value=""></c:set>
																<c:if test="${reviewList.ur_open eq true }">
																	<c:set var="opens" value="checked"></c:set>
																</c:if>
																<label class="switch-button">	
																	<input type="checkbox" id="ur_open" name="ur_open" onclick="ur_open(this)" ${opens }/>
																    <span class="onoff-switch"></span>
																</label>
															</div>
															
															<!-- 마지막 정보는 아래 패딩 유지 -->
															<div class="modal-body">
																<p style="margin-bottom: 2px;">시간</p>
																<input type="text" name="email"
																	value="${reviewList.ur_regdate }" class="form-control" readonly>
															</div>
															
															<input type="hidden" id="ur_seq" name="ur_seq" value="${reviewList.ur_seq }">
														</div>
														<div class="modal-footer">
															<button data-dismiss="modal" class="btn btn-default"
																type="button">확인</button>
															<button type="submit" class="btn btn-theme">수정</button>
														</div>
													</div>
												</div>
											</form>
										</div>
										
										<!-- modal -->


									</c:forEach>
								</tbody>
							</table>

						</div>
					</div>
				</div>
				<!-- /row -->
				

			</section>
			<!-- /wrapper -->
		</section>
		<!-- /MAIN CONTENT -->
		<!--main content end-->



		<!-- 푸더 import -->
		<%@ include file="../inc/admin_footer.jsp" %>
		<!--footer end-->
	</section>
	<!-- js placed at the end of the document so the pages load faster -->
	
	<!--common script for all pages-->
	
	<!--script for this page-->
	
	<script>
		function ur_open(element) {
			console.log(element.checked);
		}
	</script>

	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@3.2.0/dist/umd/simple-datatables.js"></script>
	<script
		src="resources/assets/js/admin/datatable/datatables-simple-demo.js"></script>
</body>

</html>