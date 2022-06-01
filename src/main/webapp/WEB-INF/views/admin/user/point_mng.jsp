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
					<li class="sub-menu dcjq-parent-li"><a id="user-manage"
						class="active dcjq-parent" href="javascript:void(0);"> <i
							class="fa fa-user" style="font-size: 15px;""></i> <span>&nbsp;회원
								관리</span>
					</a>
						<ul class=" sub">
							<li><a id="user-mng" href="user_mng.admin">회원 관리</a></li>
							<li><a id="coupon-mng" href="coupon_mng.admin">쿠폰 관리</a></li>
							<li class="active"><a id="point-mng" href="point_mng.admin">포인트
									관리</a></li>
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



		<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section id="main-content">
<%@ include file="../inc/admin_allmenu.jsp" %>
			<!-- allmenu import -->
			
			<section class="wrapper site-min-height">
				<h3>
					<i class="fa fa-angle-right"></i> 포인트 관리
				</h3>
								<a href="javascript:;" class="btn btn-theme point_select"
									style="margin-left:20px;margin-top:10px;width:100px;float: left;"> 포인트 설정
								</a>
						<form action="/point_mng.admin" method="post">
						<c:if test="${point_use eq 'false'}">
		<c:set value="checked" var="checked" />
	</c:if>
							<div class="form-panel point_select_form">
								<div
									style="border-bottom: 1px dotted grey; padding-bottom: 3px; margin-bottom: 6px;">포인트
									설정</div>
								<div class="row">
									<div class="form-group">
										<label class="col-sm-4 col-sm-4 control-label">사용여부</label>
										<div class="col-sm-8">
											<label class="radio-inline"> 
											<input type="radio"
												name="point_use" id="point_use1" value="true" checked>
												사용
											</label> 
											<label class="radio-inline"> 
												<input type="radio"
												name="point_use" id="point_use2" value="false" ${checked}> 미사용
											</label>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="form-group">
										<label class="col-sm-4 col-sm-4 control-label">적립(%)</label>
										<div class="col-sm-8">
											<input id="point_percentage" name="point_percentage" 
											class="form-control round-form" type="number" value="${point_percentage}"
											max="30" oninput="maxLengthCheck(this)"
												style="height: 24px; width: 50%;">
										</div>
									</div>
								</div>
								<div class="row" style="text-align: center;">
									<button type="submit" class="btn btn-theme" onclick="changePointOption()"
										style="margin-top: 10px; width: 50px; height: 28px; padding: 0; font-size: 12px;">저장</button>
								</div>

							</div>
						</form>

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
												<th data-sortable="" style="width: 10%;"><a href="#"
													class="dataTable-sorter">번호</a></th>
												<th data-sortable="" style="width: 15%;"><a href="#"
													class="dataTable-sorter">날짜</a></th>
												<th data-sortable="" style="width: 10%;"><a href="#"
													class="dataTable-sorter">아이디</a></th>
												<th data-sortable="" style="width: 8%;"><a href="#"
													class="dataTable-sorter">이름</a></th>
												<th data-sortable="" style="width: 8%;"><a href="#"
													class="dataTable-sorter">유형</a></th>
												<th data-sortable="" style="width: 10%;"><a href="#"
													class="dataTable-sorter">내용</a></th>
												<th data-sortable="" style="width: 8%;"><a href="#"
													class="dataTable-sorter">처리자</a></th>
												<th data-sortable="" style="width: 7%;"><a href="#"
													class="dataTable-sorter">사용/적립 포인트</a></th>
												<th data-sortable="" style="width: 7%;"><a href="#"
													class="dataTable-sorter">잔여포인트</a></th>
											</tr>
										</thead>


										<tbody>
											<c:forEach var="pointList" items="${pointList}" varStatus="vs">
												<tr>
													<td>${vs.index +1}</td>
													<td>${(pointList.pt_regdate).substring(0,19)}</td>
													<td>${pointList.u_id}</td>
													<td>${pointList.u_name}</td>
													
													<td>${pointList.pt_type}</td>
													<td>${pointList.pt_description}</td>
													<td>${pointList.pt_handler}</td>
													<td><fmt:formatNumber
														value="${pointList.pt_amount}" pattern="###,###" /></td>
													<td><fmt:formatNumber
														value="${pointList.u_point}" pattern="###,###" /></td>
												</tr>
											</c:forEach>
											<tr>
												<td>1</td>
												<td>2022.04.16 00:00:00</td>
												<td><a href="#">tommy</a></td>
												<td>이승재</td>
												<td>적립</td>
												<td>뇌물</td>
												<td>관리자</td>
												<td>10,000</td>
											</tr>
											<tr>
												<td>2</td>
												<td>2022.04.16 00:00:00</td>
												<td><a href="#">etgohome8</a></td>
												<td>홍민지</td>
												<td>사용</td>

												<td>기간에 의한 소멸</td>
												<td>시스템</td>
												<td>1,000</td>
											</tr>
											<tr>
												<td>3</td>
												<td>2022.04.16 00:00:00</td>
												<td><a href="#">etgohome8</a></td>
												<td>홍민지</td>
												<td>적립</td>

												<td>가입 축하 포인트</td>
												<td>시스템</td>
												<td>1,000</td>
											</tr>
											<tr>
												<td>4</td>
												<td>2022.04.16 00:00:00</td>
												<td><a href="#">jhyun</a></td>
												<td>지마스터</td>
												<td>적립</td>
												<td>수고비</td>
												<td>관리자</td>
												<td>80,000</td>
											</tr>
											<tr>
												<td>5</td>
												<td>2022.04.16 00:00:00</td>
												<td><a href="#">yuki</a></td>
												<td>재우스</td>
												<td>적립</td>
												<td>그냥</td>
												<td>관리자</td>
												<td>100,000</td>
											</tr>
											<tr>
												<td>6</td>
												<td>2022.04.16 00:00:00</td>
												<td><a href="#">gyublin</a></td>
												<td>한규진희고</td>
												<td>적립</td>
												<td>횡령</td>
												<td>관리자</td>
												<td>1,000,000</td>
											</tr>
											<tr>
												<td>7</td>
												<td>2022.04.16 00:00:00</td>
												<td><a href="#">tommy</a></td>
												<td>이승재</td>
												<td>적립</td>
												<td>뇌물</td>
												<td>관리자</td>
												<td>10,000</td>
											</tr>
											<tr>
												<td>18</td>
												<td>2022.04.16 00:00:00</td>
												<td><a href="#">tommy</a></td>
												<td>이승재</td>
												<td>적립</td>
												<td>뇌물</td>
												<td>관리자</td>
												<td>10,000</td>
											</tr>
											<tr>
												<td>9</td>
												<td>2022.04.16 00:00:00</td>
												<td><a href="#">tommy</a></td>
												<td>이승재</td>
												<td>적립</td>
												<td>뇌물</td>
												<td>관리자</td>
												<td>10,000</td>
											</tr>
											<tr>
												<td>10</td>
												<td>2022.04.16 00:00:00</td>
												<td><a href="#">rabbit</a></td>
												<td>코끼</td>
												<td>사용</td>
												<td>커피</td>
												<td>시스템</td>
												<td>10,000</td>
											</tr>
										</tbody>
									</table>

								</div>
							</div>
						</div>
					</div>
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
	<script>
	function changePointOption(){
		//***********false 면 포인트 사용 true면 포인트 미사용*********
		var point_use = $('input:radio[id=point_use2]').is(':checked').toString(); //false 면 포인트 사용 //true면 포인트 미사용
		var point_percentage = $("#point_percentage").val();
		var param = {"point_use":point_use,"point_percentage":point_percentage};
		$.ajax({
            type: "POST",
            url: "/changePoint.admin",
            data: JSON.stringify(param),
            dataType: "json",
            contentType: "application/json",
         success:function(data){
        	 
         },
         error:function(data){
            console.log("포인트 설정 에러");
         }
      }); //ajax 끝
	}
	
	function maxLengthCheck(object){
		//30까지만
	    if (object.value > parseInt(object.max)){
	        object.value = parseInt(object.max);
	    }
		//음수 차단
	    if(object.value < 0){
	        object.value = 0;
	    }
	    
	}
	
	</script>
</body>

</html>