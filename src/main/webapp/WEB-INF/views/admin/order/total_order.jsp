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
<title>워킹오더 관리자 페이지</title>

<!-- Favicons -->
<link href="resources/assets/images/admin/logo/logo_only.svg" rel="icon">

<!-- 테이블용 css -->
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
						<ul class="sub">
							<li><a id="user-mng" href="user_mng.admin">회원 관리</a></li>
							<li><a id="coupon-mng" href="coupon_mng.admin">쿠폰 관리</a></li>
							<li><a id="point-mng" href="point_mng.admin">포인트 관리</a></li>
							<li><a id="connect-hist" href="connect_hist..admin">접속
									이력</a></li>
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
					<li class="sub-menu dcjq-parent-li"><a id="order-manage"
						class="active dcjq-parent" href="javascript:;"> <i
							class="fa fa-shopping-cart"></i> <span>주문 관리</span>
					</a>
						<ul class="sub">
							<li class="active"><a id="total-order"
								href="total_order.admin">전체 주문 관리</a></li>
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
			<!-- allmenu import -->
			
			<section class="wrapper">
				<h3>
					<i class="fa fa-angle-right"></i> 전체 주문 관리
				</h3>
				<a type="button" class="btn btn-theme" href="#"
        style="margin-left:20px;margin-top:10px;width:100px;float: left;">엑셀다운</a>
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
										<th data-sortable="" style="width: 8%;"><a href="#"
											class="dataTable-sorter">주문번호</a></th>
										<th data-sortable="" style="width: 8%;"><a href="#"
											class="dataTable-sorter">아이디</a></th>
										<th data-sortable="" style="width: 6%;"><a href="#"
											class="dataTable-sorter">이름</a></th>
										<th data-sortable="" style="width: 8%;"><a href="#"
											class="dataTable-sorter">전화번호</a></th>
										<th data-sortable="" style="width: 10%;"><a href="#"
											class="dataTable-sorter">제품</a></th>
										<th data-sortable="" style="width: 10%;"><a href="#"
											class="dataTable-sorter">요청사항</a></th>
										<th data-sortable="" style="width: 6%;"><a href="#"
											class="dataTable-sorter">금액</a></th>
										<th data-sortable="" style="width: 8%;"><a href="#"
											class="dataTable-sorter">매장명</a></th>
										<th data-sortable="" style="width: 8%;"><a href="#"
											class="dataTable-sorter">상태</a></th>
										<th data-sortable="" style="width: 6%;"><a href="#"
											class="dataTable-sorter">결제</a></th>
										<th data-sortable="" style="width: 12%;"><a href="#"
											class="dataTable-sorter">시간</a></th>
										<!-- <th data-sortable="" style="width: 6%;"><a href="#"
											class="dataTable-sorter">수정</a></th> -->
									</tr>
								</thead>

								<tbody>
									<c:forEach var="orderList" items="${orderList}" varStatus="vs">
										<tr>
											<td>${vs.index +1}</td>
											<td>${orderList.o_code}</td>
											<td>${orderList.u_id}</td>
											<td>${orderList.u_name}</td>
											<td>${orderList.u_tel}</td>
											<td>${orderList.o_list}</td>
											<td>${orderList.o_request}</td>
											<td><fmt:formatNumber value="${orderList.o_total_price}"
													pattern="###,###" /></td>
											<td><a
												href="store_order.admin?si_code=${orderList.si_code}">${orderList.si_name}</a></td>
											<td>
												<div class="dataTable-dropdown">
													<select class="dataTable-selector"
														style="margin: 0; padding: 0; font-size: 11px; height: 20px;">
														<!-- 접수대기 준비중 준비완료 전달완료 -->
														<c:choose>
															<c:when test="${orderList.o_order_state eq '접수대기'}">
																<option value="주문접수" selected>접수대기</option>
																<option value="준비중">준비중</option>
																<option value="준비완료">준비완료</option>
																<option value="전달완료">전달완료</option>
																<option value="주문취소">주문취소</option>
															</c:when>
															<c:when test="${orderList.o_order_state eq '준비중'}">
																<option value="주문접수">접수대기</option>
																<option value="준비중" selected>준비중</option>
																<option value="준비완료">준비완료</option>
																<option value="전달완료">전달완료</option>
																<option value="주문취소">주문취소</option>
															</c:when>
															<c:when test="${orderList.o_order_state eq '준비완료'}">
																<option value="주문접수">접수대기</option>
																<option value="준비중">준비중</option>
																<option value="준비완료" selected>준비완료</option>
																<option value="전달완료">전달완료</option>
																<option value="주문취소">주문취소</option> 
															</c:when>
															<c:when test="${orderList.o_order_state eq '전달완료'}">
																<option value="주문접수">접수대기</option>
																<option value="준비중">준비중</option>
																<option value="준비완료">준비완료</option>
																<option value="전달완료" selected>전달완료</option>
																<option value="주문취소">주문취소</option>
															</c:when>
															<c:when test="${orderList.o_order_state eq '주문취소'}">
																<option value="주문접수">접수대기</option>
																<option value="준비중">준비중</option>
																<option value="준비완료">준비완료</option>
																<option value="전달완료">전달완료</option>
																<option value="주문취소"selected>주문취소</option>
															</c:when>
															<c:otherwise>부잉</c:otherwise>
														</c:choose>
													</select>
												</div>
											</td>
											<td>${orderList.o_payment_list}</td>
											<td><fmt:formatDate value="${orderList.o_order_date}" pattern="yy-MM-dd a hh:mm"/></td>
											<!-- <td><a data-toggle="modal" href="#myModal"
												class="btn btn-success btn-xs"><i class="fa fa-eye"></i></a>
											</td> -->
										</tr>
									</c:forEach>
									
									<tr>
										<td>1</td>
										<td>202204110001</td>
										<td>etgohome8</td>
										<td>홍민지</td>
										<td>010123456678</td>
										<td>요거트스무디 1</td>
										<td></td>
										<td>5,600</td>
										<td><a href="store_order.admin">워킹커피</a></td>
										<td>
											<div class="dataTable-dropdown">
												<select class="dataTable-selector"
													style="margin: 0; padding: 0; font-size: 11px; height: 20px;">
													<option value="all">주문접수</option>
													<option value="id" selected>준비중</option>
													<option value="name">준비완료</option>
													<option value="nick">전달완료</option>
													<option value="nick">주문취소</option>

												</select>
											</div></td>
										<td>카드</td>
										<td>2022.04.06 12:11:02</td>
										<td><a data-toggle="modal" href="#myModal"
											class="btn btn-success btn-xs"><i class="fa fa-eye"></i></a>
										</td>
									</tr>
									<tr>
										<td>1</td>
										<td>202204110001</td>
										<td>etgohome8</td>
										<td>홍민지</td>
										<td>010123456678</td>
										<td>요거트스무디 1</td>
										<td></td>
										<td>5,600</td>
										<td><a href="store_order.admin">워킹커피</a></td>
										<td>
											<div class="dataTable-dropdown">
												<select class="dataTable-selector"
													style="margin: 0; padding: 0; font-size: 11px; height: 20px;">
													<option value="all">주문접수</option>
													<option value="id" selected>준비중</option>
													<option value="name">준비완료</option>
													<option value="nick">전달완료</option>
													<option value="nick">주문취소</option>

												</select>
											</div></td>
										<td>카드</td>
										<td>2022.04.06 12:11:02</td>
										<td><a data-toggle="modal" href="#myModal"
											class="btn btn-success btn-xs"><i class="fa fa-eye"></i></a>
										</td>
									</tr>

								</tbody>
							</table>

						</div>
					</div>
				</div>
				</div>
				<!-- /row -->
				<!-- <!-- Modal -->
				<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog"
					tabindex="-1" id="myModal" class="modal fade"
					style="margin: 20px auto 0;">
					<div class="modal-dialog store">
						<div class="modal-content">
							<div class="modal-header_store">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title">주문 정보</h4>
							</div>
							정보시작
							<div class="modal_wrapbody">
								<div class="modal-body" style="padding-bottom: 0;">
									<a style="margin-bottom: 2px;">주문번호
										</p> <input type="text" id="" name="name" value="202204110225"
										class="form-control">
								</div>
								<div class="modal-body" style="padding-bottom: 0;">
									<p style="margin-bottom: 2px;">주문자</p>
									<input type="text" id="" name="name"
										style="width: 30%; display: inline-block;" value="홍길동"
										class="form-control"> <input type="text" id=""
										name="name" style="width: 30%; display: inline-block;"
										value="etgohome8" class="form-control"> <input
										type="text" id="" name="name"
										style="width: 30%; display: inline-block;" value="01012345678"
										class="form-control">
								</div>
								<div class="modal-body" style="padding-bottom: 0;">
									<p style="margin-bottom: 2px;">제품</p>
									<textarea rows="3" id="" name="name" class="form-control">요거트스무디 1
                  </textarea>
								</div>
								<div class="modal-body" style="padding-bottom: 0;">
									<p style="margin-bottom: 2px;">요청사항</p>
									<textarea rows="1" id="" name="name" value="8618501327"
										class="form-control"></textarea>
								</div>

								<div class="modal-body" style="padding-bottom: 0;">
									<p style="margin-bottom: 2px;">금액</p>
									<input type="text" id="" name="name" value="5,600"
										class="form-control"
										style="width: 30%; display: inline-block;"> 원
								</div>
								<div class="modal-body" style="padding-bottom: 0;">
									<p style="margin-bottom: 2px;">매장명</p>
									<input type="text" id="" name="name" value="워킹커피 종로점"
										class="form-control">
								</div>
								<div class="modal-body" style="padding-bottom: 0;">
									<p style="margin-bottom: 2px;">상태</p>
									<input type="text" id="" name="name" value="준비 중"
										class="form-control">
								</div>
								<div class="modal-body" style="padding-bottom: 0;">
									<p style="margin-bottom: 2px;">결제방법</p>
									<input type="text" id="" name="name" value="카드"
										class="form-control">
								</div>

								마지막 정보는 아래 패딩 유지
								<div class="modal-body">
									<p style="margin-bottom: 2px;">시간</p>
									<input type="text" name="email" value="2022.04.06 12:11:02"
										class="form-control">
								</div>
							</div>
							<div class="modal-footer">
								<button data-dismiss="modal" class="btn btn-default"
									type="button">확인</button>
								<button onclick="location.href=''" class="btn btn-theme" type="button">수정</button>
							</div>
						</div>
					</div>
				</div> -->
				
				<!-- modal -->

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


	<script
		src="https://cdn.jsdelivr.net/npm/simple-datatables@3.2.0/dist/umd/simple-datatables.js"></script>
	<script
		src="resources/assets/js/admin/datatable/datatables-simple-demo.js"></script>
</body>

</html>
