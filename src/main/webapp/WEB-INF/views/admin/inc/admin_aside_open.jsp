<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!--sidebar start-->
<aside>
	<div id="sidebar" class="nav-collapse ">
		<!-- sidebar menu start-->
		<ul class="sidebar-menu" id="nav-accordion">
			<p class="centered">
				<a><img src="resources/assets/images/admin/doggy.jpg"
					class="img-circle" width="80"></a>
			</p>
			<h5 class="centered">${adminSession.a_name}</h5>
			<p class="sidebar-title">설정</p>
			<li class="sub-menu"><a href="index.admin"> <i
					class="fa fa-h-square"></i> <span>Home</span>
			</a></li>
			<li class="sub-menu"><a id="testid"
				class="dcjq-parent testjirong" href="javacript:;"> <i
					class="fa fa-navicon"></i> <span>All Menu</span>
			</a></li>
<!-- 			<li class="sub-menu dcjq-parent-li"> -->
<!--             <a id="user-manage" class="active dcjq-parent" href="javascript:void(0);"> -->
			<p class="sidebar-title">마이 메뉴</p>
			<li class="sub-menu dcjq-parent-li"><a id="user-manage" href="javascript:;">
					<i class="fa fa-user" style="font-size: 15px;""></i> <span>&nbsp;회원
						관리</span>
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
					<li><a id="store-pending" href="store_pending.admin">승인 대기</a></li>
					<li><a id="join-inq" href="join_inq.admin">입점 문의</a></li>
				</ul></li>
			<li class="sub-menu"><a id="order-manage" href="javascript:;">
					<i class="fa fa-shopping-cart"></i> <span>주문 관리</span>
			</a>
				<ul class="sub">
					<li><a id="total-order" href="total_order.admin">전체 주문 관리</a></li>
					<li><a id="store-order" href="store_order.admin">매장별 주문 관리</a></li>
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
					
					
					<li><a id="mess-send" href="mess_send.admin">문자 전송</a></li>
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
					 
					<li><a id="store-sales" href="store_sales.admin">매장별 매출 통계</a></li>
					
					<li><a id="by-chart" href="by_chart.admin">표로 확인</a></li>
					<li><a id="by-graph" href="by_graph.admin">그래프로 확인</a></li>
				</ul></li>


		</ul>
		<!-- sidebar menu end-->
	</div>
</aside>
