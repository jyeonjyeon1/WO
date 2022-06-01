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
<title>워킹오더 회원관리</title>

<!-- Favicons -->
<link href="resources/assets/images/admin/logo/logo_only.svg" rel="icon">
<link href="resources/assets/images/admin/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- 테이블용 css -->
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />

<!-- excel 다운로드 script -->
<script>
 function excelDownloadProcess() {
   let frm = $("#searchUser");
   frm.attr("action", "/UserExcelDownload.admin");
   frm.submit();
   console.log("dd");
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
					<li class="sub-menu"><a href="index.admin"> <i
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
							<li class="active"><a id="user-mng" href="user_mng.admin">회원
									관리</a></li>
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
							<li><a id="mess-send-group" href="mess_send_group.admin">단체 문자 전송</a></li>
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
			<section class="wrapper">
				<h3>
					<i class="fa fa-angle-right"></i> 회원 관리
				</h3>
				<a type="button" onclick="excelDownloadProcess()" class="btn btn-theme" 
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
										<th>번호</th>
										<th>아이디</th>
										<th>유형</th>
										<th>이름</th>
										<th>번호</th>
										<th>이메일</th>
										<th>수신설정</th>
										<th>상태</th>
										<th>가입일</th>
										<th>마지막로그인</th>
										<th>수정</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>번호</th>
										<th>아이디</th>
										<th>유형</th>
										<th>이름</th>
										<th>번호</th>
										<th>이메일</th>
										<th>수신설정</th>
										<th>상태</th>
										<th>가입일</th>
										<th>마지막로그인</th>
										<th>수정</th>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach var="userList" items="${userList}" varStatus="vs">
										<tr>
											<td>${vs.count}</td>
											<td>${userList.u_id}</td>
											<td><c:choose>
													<c:when test="${userList.u_type eq 'normal'}">일반</c:when>
													<c:when test="${userList.u_type eq 'google'}">구글</c:when>
													<c:when test="${userList.u_type eq 'kakao'}">카카오</c:when>
													<c:when test="${userList.u_type eq 'naver'}">네이버</c:when>
													<c:otherwise>부잉</c:otherwise>
												</c:choose></td>
											<td>${userList.u_name}</td>
											<td>${userList.u_tel}</td>
											<td>${userList.u_email}</td>

											<td><label class="checkbox-inline"> <input
													type="checkbox"
													<c:choose>
												<c:when test="${userList.u_sms_usable eq 'true'}"> checked</c:when>
												<c:otherwise></c:otherwise>
											</c:choose>>
													S
											</label> <label class="checkbox-inline"> <input
													type="checkbox"
													<c:choose>
												<c:when test="${userList.u_email_usable eq 'true'}"> checked</c:when>
												<c:otherwise></c:otherwise>
											</c:choose>>
													E
											</label></td>
											<td><c:choose>
													<c:when test="${userList.u_status eq 'true'}">활동</c:when>
													<c:otherwise>정지</c:otherwise>
												</c:choose></td>
											<td><fmt:formatDate value="${userList.u_regdate}" pattern="yy-MM-dd a hh:mm"/></td>
											<td><fmt:formatDate value="${userList.u_lastdate}" pattern="yy-MM-dd a hh:mm"/></td>
											<td><a data-toggle="modal" href="#myModal${vs.index}"
												class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></a>
											</td>
										</tr>
<!-- Modal -->
<div aria-hidden="true" aria-labelledby="myModalLabel"
	role="dialog" tabindex="-1" id="myModal${vs.index}"
	class="modal fade" style="margin: 20px auto 0;">
	<form method="post" action="updateUser.admin" name="updateform${vs.index}">
	<input type="hidden" name="u_id" value="${userList.u_id}"/>
	<div class="modal-dialog store">
		<div class="modal-content">
			<div class="modal-header_store">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title">${userList.u_id} 회원정보</h4>
			</div>
			<!-- 	정보시작 -->
			<div class="modal_wrapbody">
				<div class="modal-body" style="padding-bottom: 0;">
					<p style="margin-bottom: 2px;">회원 이름</p>
					<input type="text" name="u_name" value="${userList.u_name}"
						class="form-control">
				</div>
				<div class="modal-body" style="padding-bottom: 0;">
					<p style="margin-bottom: 2px;">회원 특이사항 기록용(관리자만 조회)</p>
					<textarea name="u_info" class="form-control">${userList.u_info}</textarea>
				</div>
				<div class="modal-body" style="padding-bottom: 0;">
					<p style="margin-bottom: 2px;">회원 비밀번호 변경</p>
					<input type="password" name="u_password" value=""
						class="form-control">
				</div>
				<div class="modal-body" style="padding-bottom: 0;">
					<p style="margin-bottom: 2px;">회원 유형</p>
					<input type="text" name="u_type" value="${userList.u_type}"
						class="form-control" readonly> 
				</div>
				
				<div class="modal-body" style="padding-bottom: 0;">
					<p style="margin-bottom: 2px;">전화번호</p>
					<input type="text" name="u_tel"
						value="${userList.u_tel}"
						class="form-control">
				</div>
				<div class="modal-body" style="padding-bottom: 0;">
					<p style="margin-bottom: 2px;">이메일</p>
					<input type="text" name="u_email" value="${userList.u_email}"
						class="form-control">
				</div>

				<div class="modal-body" style="padding-bottom: 0;">
					<p style="margin-bottom: 2px;">SMS 수신</p>

					<c:choose>
						<c:when test="${userList.u_sms_usable eq 'true'}">
							<label class="radio-inline"> <input
								type="radio" name="u_sms_usable" id="u_sms_ok${vs.index}"
								value="true" checked> 동의
							</label>
							<label class="radio-inline"> <input
								type="radio" name="u_sms_usable" id="u_sms_no${vs.index}"
								value="false"> 미동의
							</label>
						</c:when>
						<c:otherwise>
							<label class="radio-inline"> <input
								type="radio" name="u_sms_usable" id="u_sms_ok${vs.index}"
								value="true"> 동의
							</label>
							<label class="radio-inline"> <input
								type="radio" name="u_sms_usable" id="u_sms_no${vs.index}"
								value="false" checked> 미동의
							</label>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="modal-body" style="padding-bottom: 0;">
					<p style="margin-bottom: 2px;">Email 수신 동의</p>
					<c:choose>
						<c:when test="${userList.u_email_usable eq 'true'}">
							<label class="radio-inline"> <input
								type="radio" name="u_email_usable" id="u_email_yes${vs.index}"
								value="true" checked> 가능
							</label>
							<label class="radio-inline"> <input
								type="radio" name="u_email_usable" id="u_email_no${vs.index}"
								value="false"> 불가
							</label>
						</c:when>
						<c:otherwise>
							<label class="radio-inline"> <input
								type="radio" name="u_email_usable" id="u_email_yes${vs.index}"
								value="true"> 가능
							</label>
							<label class="radio-inline"> <input
								type="radio" name="u_email_usable" id="u_email_no${vs.index}"
								value="false" checked> 불가
							</label>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="modal-body" style="padding-bottom: 0;">
					<p style="margin-bottom: 2px;">회원 상태</p>
					<c:choose>
						<c:when test="${userList.u_status eq 'true'}">
							<label class="radio-inline"> <input
								type="radio" name="u_status" 
								value="true" checked> 활동
							</label>
							<label class="radio-inline"> <input
								type="radio" name="u_status" 
								value="false"> 정지
							</label>
						</c:when>
						<c:otherwise>
							<label class="radio-inline"> <input
								type="radio" name="u_status" 
								value="true"> 가능
							</label>
							<label class="radio-inline"> <input
								type="radio" name="u_status" 
								value="false" checked> 불가
							</label>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="modal-body" style="padding-bottom: 0;">
					<p style="margin-bottom: 2px;">회원 보유 포인트</p>
					<input type="number" name="u_point" 
						value="${userList.u_point}"
						class="form-control">
				</div>
				<div class="modal-body" style="padding-bottom: 0;">
					<p style="margin-bottom: 2px;">가입일</p>
					<input type="text" name=""
						value="<fmt:formatDate value="${userList.u_regdate}" pattern="yy-MM-dd a hh:mm"/>"
						class="form-control">
				</div>
				<!-- 마지막 정보는 아래 패딩 유지 -->
				<div class="modal-body">
					<p style="margin-bottom: 2px;">마지막 로그인</p>
					<input type="text" name=""
						value="<fmt:formatDate value="${userList.u_lastdate}" pattern="yy-MM-dd a hh:mm"/>"
						class="form-control">
				</div>
			</div>
			<div class="modal-footer">
				<button data-dismiss="modal" class="btn btn-default"
					type="button">확인</button>
				<button
					class="btn btn-theme" type="button" onclick="updateComp${vs.index}()">수정</button>
			</div>
		</div>
	</div>
	</form>
</div>
<script>
function updateComp${vs.index}(){
	Swal.fire({
        icon: "success",
        title: "회원 정보 수정 완료",
        showConfirmButton: false,
        timer: 1500
    });
	document.updateform${vs.index}.submit();
}
</script>
<!-- Modal END -->
									</c:forEach>

								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- /row -->
				<!-- /row -->
				<!-- INPUT MESSAGES -->

				<!-- /row -->
			</section>
			<!-- /wrapper -->

		</section>
		<!-- /MAIN CONTENT -->
		<!--main content end-->



		<!-- 푸더 import -->
		<%@ include file="../inc/admin_footer.jsp"%>
	</section>
	<script
		src="https://cdn.jsdelivr.net/npm/simple-datatables@3.2.0/dist/umd/simple-datatables.js"></script>
	<script
		src="resources/assets/js/admin/datatable/datatables-simple-demo.js"></script>
	<script>
	$(document).ready(function(){
		
	})
	</script>
</body>

</html>