<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="java.util.Date" %> 
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
<title>워킹오더 관리자 페이지</title>

<!-- Favicons -->
<link href="resources/assets/images/admin/logo/logo_only.svg" rel="icon">


<!-- Bootstrap core CSS -->

<!--external css-->

<link rel="stylesheet" type="text/css"
	href="resources/assets/js/admin/bootstrap-fileupload/bootstrap-fileupload.css" />
<!-- Custom styles for this template -->


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
						<ul class=" sub">
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
					<li class="sub-menu dcjq-parent-li"><a id="page-manage"
						class="active dcjq-parent" href="javascript:;"> <i
							class="fa fa-sticky-note"></i> <span>페이지 관리</span>
					</a>
						<ul class="sub">
							<li class="active"><a id="banner-mng"
								href="banner_mng.admin">배너 관리</a></li>
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
			<section class="wrapper site-min-height">
				<h3>
					<i class="fa fa-angle-right"></i> 배너 관리
				</h3>
				<div class="row mt">
					<div class="col-lg-10" style="min-width: 400px;">
						<div class="card-header" style="font-size: 16px;">
							<i class="fa fa-picture-o" style="font-size: 14px;"></i> 배너배너
						</div>
						<div class="form-panel"
							style="margin-top: 0; padding-bottom: 38px; border-radius: 0 0 10px 10px;">
							<form class="form-horizontal style-form" method="get">

							<c:forEach var="bannerList" items="${bannerList }" varStatus="vs">
								<div class="form-group" id="deleteBanner${vs.index }">

									<div class="col-md-4" style="min-height: 160px;">
										<div class="fileupload fileupload-new"
											data-provides="fileupload">
											<div class="fileupload-new thumbnail"
												style="width: 100%; height: 180px;">
												<img
													src="${bannerList.b_image }"
													alt="" />
											</div>
											<div class="fileupload-preview fileupload-exists thumbnail"
												style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
											<div>
												<span class="btn grey__button btn-file"> <span
													class="fileupload-new"><i class="fa fa-paperclip"></i>
														이미지 선택</span> <span class="fileupload-exists"><i
														class="fa fa-undo"></i> 변경</span> <input type="file"
													class="default" />
												</span> <a href="#" class="btn btn-theme04 fileupload-exists"
													style="border-radius: 3px; font-size: 12px; height: 30px;"
													data-dismiss="fileupload"> <i class="fa fa-trash-o">

												</i> 제거
												</a>
											</div>
										</div>
									</div>
									<label class="control-label col-md-2">제목</label>
									<div class="col-sm-6">
										<input class="form-control" type="text"
											placeholder="제목을 입력하세요" value="${bannerList.b_title }" style="height: 30px; margin: 5px 0;">
									</div>
									<label class="control-label col-md-2">내용<br>(관리자 메모용)</label>
									<div class="col-sm-6">
										<textarea class="form-control" type="text"
											placeholder="내용 문구를 입력하세요" value="${bannerList.b_memo }" style="margin: 5px 0;"></textarea>
									</div>
									<label class="control-label col-md-2">연결URL</label>
									<div class="col-sm-6">
										<input class="form-control" type="text" value="${bannerList.b_click_url }"
											placeholder="URL을 입력하세요" style="height: 30px; margin: 5px 0 10px 0;">
									</div>

									<label class="col-sm-2 col-sm-2 control-label">시간조정</label>
									<div class="col-sm-6">
<%-- <fmt:parseDate var="enddate" value="${nowDate}" pattern="yyyy-MM-dd"></fmt:parseDate> --%>
<%-- <fmt:parseNumber var="endd" value="${enddate.time + 7*(1000*60*60*24) }"></fmt:parseNumber> --%>
<%-- <fmt:formatDate var="enddatee" value="${endd}" pattern="yyyy-MM-dd"/> --%>
<jsp:useBean id="javaDate" class="java.util.Date" />
<fmt:formatDate var="nowDatee" value="${javaDate}" pattern="yyyy-MM-dd"/>
<c:set var="sevenDayAfter" value="<%=new Date(new Date().getTime() + 60*60*24*1000*7)%>"/>
<fmt:formatDate value="${sevenDayAfter}" pattern="yyyy-MM-dd" var="sevenDayAfterStr"/>
										<input type="checkbox" <c:if test="${bannerList.b_settime eq true }">checked</c:if>
											style="display: inline-block; margin-right: 10px;"> <input
											class="form-control round-form" type="date"
											value=<c:choose>
											<c:when test="${bannerList.b_settime eq true }">"${bannerList.startdate }"</c:when>
											<c:otherwise>"${nowDatee}"</c:otherwise>
											</c:choose>
											style="width: 30%; display: inline-block; margin-right: 10px;">
										~ <input class="form-control round-form" type="date"
											value=<c:choose>
											<c:when test="${bannerList.b_settime eq true }">"${bannerList.enddate }"</c:when>
											<c:otherwise>"${sevenDayAfterStr}"</c:otherwise>
											</c:choose>
											style="width: 30%; display: inline-block; margin-left: 10px;">
									<button type="button" class="btn btn-primary" onclick="updateBanner${vs.index}()"
									style="padding:5px 5px;width: 55px; float: right; margin-left: 10px;">수정</button>
									<button type="button" class="btn btn-danger" onclick="deleteBanner${vs.index}()"
									style="padding:5px 5px;width: 55px; float: right; margin-left: 10px;">
									삭제</button>
									</div>

								</div>
<script type="text/javascript">
function deleteBanner${vs.index}(){
  Swal.fire({
	  title: "삭제하시겠습니까??",
	  icon: "warning",
	  showCancelButton: true,
	  confirmButtonColor: "#3085d6",
	  cancelButtonColor: "#d33",
	  confirmButtonText: "삭제",
		  cancelButtonText: "아니오"
	}).then((result) => {
	  if (result.isConfirmed) {
      $("#deleteBanner${vs.index}").remove();
	  }//if (result.isConfirmed)
	})//then((result)
}
</script>
								</c:forEach>
								
								<!-- zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz -->
								<div id="addBanner"></div>
								<!-- zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz -->
								<span class="label label-info">NOTE!</span> <span
									style="font-size: 11px;"> 최신버전의 브라우저에서만 미리보기가 가능합니다. </span>


								<button type="button" onclick="window.history.back()"
									class="btn btn-theme"
									style="width: 70px; float: right; margin-left: 10px;">뒤로</button>
								<button id="banner_add_btn" type="button" onclick="addBanner()"
									class="btn btn-theme"
									style="width: 70px; float: right; margin-left: 10px;">
									추가</button>
							</form>
						</div>


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


	<script type="text/javascript"
		src="resources/assets/js/admin/bootstrap-fileupload/bootstrap-fileupload.js"></script>
	<script src="resources/assets/js/admin/advanced-form-components.js"></script>
	<script>
let index_num = 1;
  function addBanner(){
	  
	  var param = {"index" : index_num};
	  $.ajax({
	        url : "bannerAdd.admin",
	        dataType: "html",	// 이 부분이 반환 타입을 핸들링하는 곳이다.
	        type: "get",
	        success: function(data) {
	          $("#addBanner").append(data); // 반환된 data를 body태그에 추가
			  index_num++;
	        },
	        error: function (){alert("실패");}
	    });
  }
  
 
  </script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://sdk.amazonaws.com/js/aws-sdk-2.891.0.min.js"></script>
</body>

</html>