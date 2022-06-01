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
<title>워킹오더 공지관리</title>

<!-- Favicons -->
<link href="resources/assets/images/admin/logo/logo_only.svg" rel="icon">
<link href="resources/assets/images/admin/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Bootstrap core CSS -->

<!--external css-->

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
					<li class="sub-menu"><a href="index.admin"> <i
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
							<li class="active"><a id="notices" href="notices.admin">공지사항</a></li>
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
							<li><a >기간별
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
    <!-- allmenu import -->
    
			<section class="wrapper site-min-height">
				<h3>
					<i class="fa fa-angle-right"></i> 공지사항 관리
				</h3>
				<a type="button" class="btn btn-theme" href="notices_add.admin"
        style="margin-left:20px;margin-top:10px;width:100px;float: left;">공지작성</a>
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
										<th data-sortable="" style="width: 7%;"><a href="#"
											class="dataTable-sorter">번호</a></th>
										<th data-sortable="" style="width: 10%;"><a href="#"
											class="dataTable-sorter">구분</a></th>
										<th data-sortable="" style="width: 30%;"><a href="#"
											class="dataTable-sorter">제목</a></th>
										<th data-sortable="" style="width: 10%;"><a href="#"
											class="dataTable-sorter">작성자</a></th>
										<th data-sortable="" style="width: 10%;"><a href="#"
											class="dataTable-sorter">노출상태</a></th>
										<th data-sortable="" style="width: 20%;"><a href="#"
											class="dataTable-sorter">등록일</a></th>
										<th data-sortable="" style="width: 15%;"><a href="#"
											class="dataTable-sorter">수정</a></th>
									</tr>
								</thead>

								<tbody>
								<c:forEach var="noticeList" items="${noticeList}" varStatus="vs">
										<tr id="noticeRow${vs.index}">
											<td>${noticeList.n_seq}</td>
											<td><c:choose>
													<c:when test="${noticeList.n_type eq 'event'}">이벤트</c:when>
													<c:otherwise>공지</c:otherwise>
												</c:choose></td>
											<td>${noticeList.n_title}</td>
											<td>관리자 <input type="hidden" id="n_eq${vs.index }" value="${noticeList.n_seq}"></td>
											<td>
												<c:choose>
													<c:when test="${noticeList.n_status eq 'true'}">공개</c:when>
													<c:otherwise>비공개</c:otherwise>
												</c:choose>
											</td>
											<td><fmt:formatDate value="${noticeList.n_regdate}" pattern="yy-MM-dd a hh:mm:ss"/></td>
											<td><a data-toggle="modal" href="#myModal${vs.index}"
												class="btn btn-success btn-xs"><i class="fa fa-eye"></i></a>
												<button onclick="location.href='notices_update.admin?s=${noticeList.n_seq}'"
													class="btn btn-primary btn-xs">
													<i class="fa fa-pencil"></i>
												</button>
												<button type="button" onclick="deleteRow${vs.index}()"
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
								<h4 class="modal-title">공지사항 내용보기</h4>
							</div>
							<!-- 정보시작 -->
							<div class="modal_wrapbody">
								<div class="modal-body" style="padding-bottom: 0;">
									<p style="margin-bottom: 2px;">글번호</p>
									<input type="text" id="" name="name" value="${noticeList.n_seq}"
										class="form-control">
								</div>
								<div class="modal-body" style="padding-bottom: 0;">
									<p style="margin-bottom: 2px;">제목</p>
									<input type="text" id="" name="name" value="${noticeList.n_title}"
										class="form-control">
								</div>
								<div class="modal-body" style="padding-bottom: 0;">
									<p style="margin-bottom: 2px;">내용</p>
									<textarea rows="8" id="" name="name" class="form-control">${noticeList.n_content}</textarea>
								</div>
								<c:if test="${!empty noticeList.n_file_url}">
									<div class="modal-body" style="padding-bottom: 0;">
										<a href="${noticeList.n_file_url}" style="display:inline-block;">
										<input class="img-responsive grey__button" type="button" 
										value="파일">
									</a>
									</div>
								</c:if>

								<div class="modal-body" style="padding-bottom: 0;">
									<p style="margin-bottom: 2px;">등록</p>

									<input class="form-control round-form" type="text"
										value="<fmt:formatDate value="${noticeList.n_regdate}" pattern="yy-MM-dd a hh:mm:ss"/>"
										style="width: 40%; display: inline-block; margin-right: 10px;">
								</div>
								<!-- 마지막 정보는 아래 패딩 유지 -->
								<div class="modal-body">
									<p style="margin-bottom: 2px;">노출상태</p>
									<input type="text" id="" name="name" value="<c:choose><c:when test="${noticeList.n_status eq true}">공개</c:when><c:otherwise>비공개</c:otherwise></c:choose>"
										class="form-control" style="width:30%">
								</div>

							</div>
							<div class="modal-footer">
								<button data-dismiss="modal" class="btn btn-default"
									type="button">확인</button>
								<button onclick="location.href='notices_update.admin?s=${noticeList.n_seq}'"
									class="btn btn-theme" type="button">수정</button>
							</div>
						</div>
					</div>
				</div>
				<!-- /modal -->
<script>
function deleteRow${vs.index}(){
	  Swal.fire({
		    title: "정말 삭제하시겠습니까?",
		    text: "삭제시 복구할 수 없습니다.",
		    icon: "warning",
		    showCancelButton: true,
		    confirmButtonColor: "#3085d6",
		    cancelButtonColor: "#d33",
		    confirmButtonText: "네",
		    cancelButtonText: "아니오"
	  }).then((result) => {
	    if (result.isConfirmed) {
	    	//DB에서 삭제
			let n_seq = parseInt($("#n_seq${vs.index}").val());
	    	$.ajax({
	             type: "POST",
	             url: "/deleteNotice.admin",
	             data: JSON.stringify({"n_seq":n_seq}),
	             dataType: "json",
	             contentType: "application/json",
	          success:function(data){
	        	//화면에서 삭제
	        	  document.getElementById("noticeRow${vs.index}").style.display = "none"
	          },
	          error:function(data){
	             console.log("확인");
	          }
	       }); //ajax 끝 
	      Swal.fire(
	        "삭제완료",
	        "삭제되었습니다.",
	        "success"
	      );
	    }
	  });
}
</script>
		</c:forEach>
								
									<tr>
										<td>1</td>
										<td>이벤트</td>
										<td>워킹오더 5월 이벤트</td>
										<td>홍길동</td>
										<td>노출</td>
										<td>2022.04.06 12:11:02</td>
										<td><a data-toggle="modal" href="#myModal"
											class="btn btn-success btn-xs"><i class="fa fa-eye"></i></a>
											<button onclick="location.href='notices_update.admin'"
												class="btn btn-primary btn-xs">
												<i class="fa fa-pencil"></i>
											</button>
											<button type="button" onclick="javascript:deleteAlert();"
												class="btn btn-danger btn-xs">
												<i class="fa fa-trash-o "></i>
											</button></td>
									</tr>
									<tr>
										<td>1</td>
										<td>공지사항</td>
										<td>5월 점검안내</td>
										<td>홍길동</td>
										<td>노출</td>
										<td>2022.04.06 12:11:02</td>
										<td><a data-toggle="modal" href="#myModal"
											class="btn btn-success btn-xs"><i class="fa fa-eye"></i></a>
											<button onclick="location.href='notices_update.admin'"
												class="btn btn-primary btn-xs">
												<i class="fa fa-pencil"></i>
											</button>
											<button type="button" onclick="javascript:deleteAlert();"
												class="btn btn-danger btn-xs">
												<i class="fa fa-trash-o "></i>
											</button></td>
									</tr>
									<tr>
										<td>1</td>
										<td>이벤트</td>
										<td>워킹오더 5월 이벤트</td>
										<td>홍길동</td>
										<td>노출</td>
										<td>2022.04.06 12:11:02</td>
										<td><a data-toggle="modal" href="#myModal"
											class="btn btn-success btn-xs"><i class="fa fa-eye"></i></a>
											<button onclick="location.href='notices_update.admin'"
												class="btn btn-primary btn-xs">
												<i class="fa fa-pencil"></i>
											</button>
											<button type="button" onclick="javascript:deleteAlert();"
												class="btn btn-danger btn-xs">
												<i class="fa fa-trash-o "></i>
											</button></td>
									</tr>
									<tr>
										<td>1</td>
										<td>이벤트</td>
										<td>워킹오더 5월 이벤트</td>
										<td>홍길동</td>
										<td>노출</td>
										<td>2022.04.06 12:11:02</td>
										<td><a data-toggle="modal" href="#myModal"
											class="btn btn-success btn-xs"><i class="fa fa-eye"></i></a>
											<button onclick="location.href='notices_update.admin'"
												class="btn btn-primary btn-xs">
												<i class="fa fa-pencil"></i>
											</button>
											<button type="button" onclick="javascript:deleteAlert();"
												class="btn btn-danger btn-xs">
												<i class="fa fa-trash-o "></i>
											</button></td>
									</tr>
									<tr>
										<td>1</td>
										<td>이벤트</td>
										<td>워킹오더 5월 이벤트</td>
										<td>홍길동</td>
										<td>노출</td>
										<td>2022.04.06 12:11:02</td>
										<td><a data-toggle="modal" href="#myModal"
											class="btn btn-success btn-xs"><i class="fa fa-eye"></i></a>
											<button onclick="location.href='notices_update.admin'"
												class="btn btn-primary btn-xs">
												<i class="fa fa-pencil"></i>
											</button>
											<button type="button" onclick="javascript:deleteAlert();"
												class="btn btn-danger btn-xs">
												<i class="fa fa-trash-o "></i>
											</button></td>
									</tr>
								</tbody>
							</table>

						</div>
					</div>
				</div>
				<!-- /row -->
				<!-- Modal -->
				<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog"
					tabindex="-1" id="myModal" class="modal fade"
					style="margin: 20px auto 0;">
					<div class="modal-dialog store">
						<div class="modal-content">
							<div class="modal-header_store">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title">공지사항 내용보기</h4>
							</div>
							<!-- 정보시작 -->
							<div class="modal_wrapbody">
								<div class="modal-body" style="padding-bottom: 0;">
									<p style="margin-bottom: 2px;">글번호</p>
									<input type="text" id="" name="name" value="12"
										class="form-control">
								</div>
								<div class="modal-body" style="padding-bottom: 0;">
									<p style="margin-bottom: 2px;">제목</p>
									<input type="text" id="" name="name" value="워킹오더 5월 이벤트"
										class="form-control">
								</div>
								<div class="modal-body" style="padding-bottom: 0;">
									<p style="margin-bottom: 2px;">내용</p>
									<textarea rows="8" id="" name="name" class="form-control">
부잉부잉부잉~
부부잉잉 부부부부~
배고파
                  </textarea>
								</div>
								<div class="modal-body" style="padding-bottom: 0;">
									<input class="grey__button" type="file" onclick=""
										style="margin-right: 5px;">
								</div>

								<div class="modal-body" style="padding-bottom: 0;">
									<p style="margin-bottom: 2px;">공개 기간</p>

									<input class="form-control round-form" type="datetime-local"
										value="2022-04-16T10:00"
										style="width: 40%; display: inline-block; margin-right: 10px;">
									~ <input class="form-control round-form" type="datetime-local"
										value="2022-04-30T23:59"
										style="width: 40%; display: inline-block; margin-left: 10px;">
								</div>
								<!-- 마지막 정보는 아래 패딩 유지 -->
								<div class="modal-body" style="padding-bottom: 0;">
									<p style="margin-bottom: 2px;">노출상태</p>
									<label class="radio-inline"> <input type="radio"
										name="inRad4" id="inlineRadio1" value="option1"> 노출
									</label> <label class="radio-inline"> <input type="radio"
										name="inRad4" id="inlineRadio2" value="option2" checked>
										비노출
									</label> <label class="radio-inline"> <input type="radio"
										name="inRad4" id="inlineRadio3" value="option3" checked>
										예약
									</label> <label class="radio-inline"> 2022.04.16 09:00:00 </label>
								</div>
								<div class="modal-body">
									<p style="margin-bottom: 2px;">조회수</p>
									<input class="form-control round-form" type="number"
										value="234"
										style="width: 22%; display: inline-block; margin-right: 5px;">
								</div>

							</div>
							<div class="modal-footer">
								<button data-dismiss="modal" class="btn btn-default"
									type="button">확인</button>
								<button onclick="location.href='notices_update.admin'"
									class="btn btn-theme" type="button">수정</button>
							</div>
						</div>
					</div>
				</div>
				<!-- /modal -->
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
	
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@3.2.0/dist/umd/simple-datatables.js"></script>
	<script
		src="resources/assets/js/admin/datatable/datatables-simple-demo.js"></script>
</body>

</html>
