<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<title>워킹오더 관리자 페이지</title>

<!-- Favicons -->
<link href="resources/assets/images/admin/logo/logo_only.svg" rel="icon">
<link href="resources/assets/images/admin/apple-touch-icon.png"
	rel="apple-touch-icon">
<style>
.modal_password{
	color: grey;
	height: 40px;
	padding: 10px;
	border: none;
	vertical-align: middle;
}
</style>

<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />

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
					<li class="sub-menu dcjq-parent-li"><a id="store-manage"
						class="active dcjq-parent" href="javascript:;"> <i
							class="fa fa-group" style="font-size: 12px;"></i> <span>매장
								관리</span>
					</a>
						<ul class="sub">
							<li class="active"><a id="store-mng" href="store_mng.admin">매장
									관리</a></li>
							<li><a id="store-menu" href="store_menu.admin">매장 메뉴 관리</a></li>
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
							<li><a id="refund-order" href="refund_order.admin">환불 주문
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
							<li><a id="ka-tmplt" href="ka_tmplt.admin">알림톡 템플릿</a></li>
							<li><a id="ka-hist" href="ka_hist.admin">알림톡 전송이력</a></li>
							<li><a id="mess-send" href="mess_send.admin">문자 전송</a></li>
							<li><a id="mess-send-group" href="mess_send_group.admin">단체
									문자 전송</a></li>
							<li><a id="mess-hist" href="mess_hist.admin">문자 전송 이력</a></li>
						</ul></li>
					<li class="sub-menu"><a id="settlement" href="javascript:;">
							<i class=" fa fa-krw"></i> <span>정산</span>
					</a>
						<ul class="sub">
							<li><a id="pg-comm" href="pg_comm.admin">PG 수수료</a></li>
							<li><a id="pg-stlmt" href="pg_stlmt.admin">PG 정산</a></li>
							<li><a id="store-rev" href="store_rev.admin">매장별 수익</a></li>
							<li><a id="store-stlmt" href="store_stlmt.admin">매장별 정산</a></li>
							<li><a id="stlmt-hist" href="stlmt_hist.admin">정산 내역</a></li>
						</ul></li>
					<li class="sub-menu"><a id="statistics" href="javascript:;">
							<i class=" fa fa-bar-chart-o"></i> <span>통계</span>
					</a>
						<ul class="sub">
							<li><a id="order-period" href="order_period.admin">기간별
									주문 통계</a></li>
							<li><a id="store-sales" href="store_sales.admin">매장별 매출
									통계</a></li>
							<li><a id="user-sales" href="user_sales.admin">사용자별 매출
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
			<!-- allmenu import -->
			<%@ include file="../inc/admin_allmenu.jsp"%>
			<section class="wrapper">
				<h3>
					<i class="fa fa-angle-right"></i> 매장 관리
				</h3>
				<!-- BASIC FORM ELELEMNTS -->
				<div class="row mt">
					<div class="col-lg-12">
						<div class="card-header" style="font-size: 16px;">
							<i class="fa fa-search" style="font-size: 14px;"></i> 매장 검색
						</div>
						<div class="form-panel"
							style="margin-top: 0; padding-bottom: 38px;">
							<form class="form-horizontal style-form" method="get">
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">매장명</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="메가커피"
											style="width: 30%;">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">코드</label>
									<div class="col-sm-10">
										<input type="text" class="form-control"
											placeholder="8868500662 " style="width: 30%;">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">구역</label>
									<div class="col-sm-2 dropthebeat">
										<div class="dataTable-dropdown">
											<select class="dataTable-selector">
												<option value="id">서울시</option>
												<option value="name">아이디</option>
												<option value="nick">닉네임</option>
												<option value="all">전체</option>
											</select>
										</div>
									</div>
									<div class="col-sm-2 dropthebeat">
										<div class="dataTable-dropdown">
											<select class="dataTable-selector">
												<option value="id">서초구</option>
												<option value="name">아이디</option>
												<option value="nick">닉네임</option>
												<option value="all">전체</option>
											</select>
										</div>
									</div>
									<div class="col-sm-4">
										<input type="text" class="form-control round-form"
											placeholder="동" style="width: 35%;">
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">매장상태</label>
									<div class="col-sm-10">
										<label class="checkbox-inline"> <input type="checkbox"
											id="inlineCheckbox1" value="option1"> 전체
										</label> <label class="checkbox-inline"> <input
											type="checkbox" id="inlineCheckbox2" value="option2" checked>
											영업중
										</label> <label class="checkbox-inline"> <input
											type="checkbox" id="inlineCheckbox2" value="option2">
											영업종료
										</label> <label class="checkbox-inline"> <input
											type="checkbox" id="inlineCheckbox2" value="option2">
											준비중
										</label> <label class="checkbox-inline"> <input
											type="checkbox" id="inlineCheckbox2" value="option2">
											폐점
										</label>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">신규여부</label>
									<div class="col-sm-10">
										<label class="radio-inline"> <input type="radio"
											name="inRad" id="inlineRadio1" value="option1" checked>
											전체
										</label> <label class="radio-inline"> <input type="radio"
											name="inRad" id="inlineRadio2" value="option2"> 신규
										</label> <label class="radio-inline"> <input type="radio"
											name="inRad" id="inlineRadio3" value="option3"> 신규아님
										</label>
									</div>
								</div>
								<button type="button" onclick="" class="btn btn-theme"
									style="font-size: 12px; width: 80px; float: left;">
									엑셀다운</button>
								<button type="button"
									onclick="location.href='store_mng_add.admin'"
									class="btn btn-theme"
									style="width: 70px; float: right; margin-left: 10px;">등록</button>
								<button type="submit" class="btn btn-theme"
									style="width: 70px; float: right;">검색</button>
							</form>
						</div>
					</div>
				</div>

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
											class="dataTable-sorter">매장명</a></th>
										<th data-sortable="" style="width: 10%;"><a href="#"
											class="dataTable-sorter">코드</a></th>
<!-- 										<th data-sortable="" style="width: 10%;"><a href="#" -->
<!-- 											class="dataTable-sorter">비번</a></th> -->
										<th data-sortable="" style="width: 10%;"><a href="#"
											class="dataTable-sorter">주소</a></th>
										<th data-sortable="" style="width: 11%;"><a href="#"
											class="dataTable-sorter">전화번호</a>
										<th data-sortable="" style="width: 10%;"><a href="#"
											class="dataTable-sorter">상태</a></th>
										<th data-sortable="" style="width: 15%;"><a href="#"
											class="dataTable-sorter">등록일</a></th>
										<th data-sortable="" style="width: 10%;"><a href="#"
											class="dataTable-sorter">수정</a></th>
									</tr>
								</thead>

								<tbody>
									<c:forEach var="storeList" items="${storeList}" varStatus="vs">
										<tr>
											<td>${vs.index +1}</td>
											<td>${storeList.si_name}</td>
											<td><a class="password_see" href="store_mng_update.admin?si_code=${storeList.si_code}">${storeList.si_code}</a></td>
<%-- 											<td><a data-toggle="modal" href="#passModal${vs.index}"><i class="password_see fa fa-eye"></i></a></td> --%>
											<td>${storeList.si_addr_road}, 
												${storeList.si_addr_detail}</td>
											<td>${storeList.si_tel}</td>
											<td><c:choose>
													<c:when test="${storeList.si_status eq 'true'}">영업중</c:when>
													<c:otherwise>영업준비중</c:otherwise>
												</c:choose></td>
											<td>${storeList.si_reg_date}</td>
											<td><a data-toggle="modal" href="#myModal${vs.index}"
												class="btn btn-success btn-xs"><i class="fa fa-eye"></i></a>
												<button onclick="location.href='store_mng_update.admin?si_code=${storeList.si_code}'"
													class="btn btn-primary btn-xs">
													<i class="fa fa-pencil"></i>
												</button>
												<button type="button" onclick="javascript:deleteAlert();"
													class="btn btn-danger btn-xs">
													<i class="fa fa-trash-o "></i>
												</button></td>
										</tr>
			<div aria-hidden="true" aria-labelledby="myModalLabel"
				role="dialog" tabindex="-1" id="myModal${vs.index}"
				class="modal fade" style="margin: 20px auto 0;">
				<div class="modal-dialog store">
					<div class="modal-content">
						<div class="modal-header_store">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title">${storeList.si_name}매장정보</h4>
						</div>
						<!-- 	정보시작 -->
						<div class="modal_wrapbody">
							<div class="modal-body" style="padding-bottom: 0;">
								<p style="margin-bottom: 2px;">매장명</p>
								<input type="text" id="" value="${storeList.si_name}"
									class="form-control">
							</div>
							<div class="modal-body" style="padding-bottom: 0;">
								<p style="margin-bottom: 2px;">매장코드</p>
								<input type="text" id="" value="${storeList.si_code}"
									class="form-control">
							</div>
							<div class="modal-body" style="padding-bottom: 0;">
								<p style="margin-bottom: 2px;">대표자 이름</p>
								<input type="text" id="" value="${storeList.sa_rep_name}"
									class="form-control">
							</div>
							<div class="modal-body" style="padding-bottom: 0;">
								<p style="margin-bottom: 2px;">주소</p>
								<input type="text" id=""
									value="${storeList.si_address} ${storeList.si_addr_detail}"
									class="form-control">
							</div>
							<div class="modal-body" style="padding-bottom: 0;">
								<p style="margin-bottom: 2px;">전화번호</p>
								<input type="text" id="" value="${storeList.si_tel}"
									class="form-control">
							</div>
							<div class="modal-body" style="padding-bottom: 0;">
								<p style="margin-bottom: 2px;">이메일</p>
								<input type="text" id="" value="${storeList.sa_email}"
									class="form-control">
							</div>
							<div class="modal-body" style="padding-bottom: 0;">
								<p style="margin-bottom: 2px;">서류</p>
								<a href="${storeList.sa_business_registration_image}" style="display:inline-block;">
									<input class="img-responsive grey__button" type="button"
									value="사업자등록증" style="margin-right: 5px;"></a> 
								<a href="${storeList.sa_bankbook_image}" style="display:inline-block;">
									<input class="img-responsive grey__button" type="button" 
									value="통장사본">
								</a>
							</div>

							<div class="modal-body" style="padding-bottom: 0;">
								<p style="margin-bottom: 2px;">영업시간</p>
								<input class="form-control round-form" type="time"
									value="${storeList.si_openA}"
									style="width: 20%; display: inline-block; margin-right: 10px;">
								~ <input class="form-control round-form" type="time"
									value="${storeList.si_closeA}"
									style="width: 20%; display: inline-block; margin-left: 10px;">
							</div>
							<div class="modal-body" style="padding-bottom: 0;">
								<p style="margin-bottom: 2px;">주차여부</p>

								<c:choose>
									<c:when test="${storeList.si_parking_able eq 'true'}">
										<label class="radio-inline"> <input
											type="radio" name="${vs.index}1" id="inlineRadio1"
											value="option1" checked> 가능
										</label>
										<label class="radio-inline"> <input
											type="radio" name="${vs.index}1" id="inlineRadio2"
											value="option2"> 불가
										</label>
									</c:when>
									<c:otherwise>
										<label class="radio-inline"> <input
											type="radio" name="${vs.index}2" id="inlineRadio1"
											value="option1"> 가능
										</label>
										<label class="radio-inline"> <input
											type="radio" name="${vs.index}2" id="inlineRadio2"
											value="option2" checked> 불가
										</label>
									</c:otherwise>
								</c:choose>
							</div>
							<div class="modal-body" style="padding-bottom: 0;">
								<p style="margin-bottom: 2px;">매장이용</p>
								<c:choose>
									<c:when test="${storeList.si_usestore eq 'true'}">
										<label class="radio-inline"> <input
											type="radio" name="${vs.index}3" id="inlineRadio3"
											value="option1" checked> 가능
										</label>
										<label class="radio-inline"> <input
											type="radio" name="${vs.index}3" id="inlineRadio4"
											value="option2"> 불가
										</label>
									</c:when>
									<c:otherwise>
										<label class="radio-inline"> <input
											type="radio" name="${vs.index}4" id="inlineRadio3"
											value="option1"> 가능
										</label>
										<label class="radio-inline"> <input
											type="radio" name="${vs.index}4" id="inlineRadio4"
											value="option2" checked> 불가
										</label>
									</c:otherwise>
								</c:choose>
							</div>
							<!-- 마지막 정보는 아래 패딩 유지 -->
							<div class="modal-body">
								<p style="margin-bottom: 2px;">특이사항</p>
								<input type="text" name="email"
									value="${storeList.si_referinfo}"
									class="form-control">
							</div>
						</div>
						<div class="modal-footer">
							<button data-dismiss="modal" class="btn btn-default"
								type="button">확인</button>
							<button onclick="location.href='store_mng_update.admin?si_code=${storeList.si_code}'"
								class="btn btn-theme" type="button">수정</button>
						</div>
					</div>
				</div>
			</div>
			<div aria-hidden="true" aria-labelledby="myModalLabel"
				role="dialog" tabindex="-1" id="passModal${vs.index}"
				class="modal fade" style="margin: 200px auto 0;">
				<div class="modal-dialog store">
					<div class="modal-content">
						<div class="modal_password">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" style="color:gray;">${storeList.sa_password}</h4>
						</div>
						<!-- 	정보시작 -->
						
					</div>
				</div>
			</div>
		</c:forEach>
									
								</tbody>
							</table>

						</div>
					</div>
				</div>
				<!-- /row -->


				<!-- /row -->
			</section>
			<!-- /wrapper -->
		</section>
		<!-- /MAIN CONTENT -->
		<!--main content end-->



		<!-- 푸더 import -->
		<%@ include file="../inc/admin_footer.jsp"%>
		<!--footer end-->
	</section>
	<!-- js placed at the end of the document so the pages load faster -->
	
	<!--common script for all pages-->
	
	<!--script for this page-->
	

	<script
		src="https://cdn.jsdelivr.net/npm/simple-datatables@3.2.0/dist/umd/simple-datatables.js"></script>
	<script
		src="resources/assets/js/admin/datatable/datatables-simple-demo.js"></script>
</body>

</html>