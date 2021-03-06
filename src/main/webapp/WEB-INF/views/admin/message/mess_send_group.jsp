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
<title>워킹오더 관리자 페이지</title>

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
<style>
input::-webkit-inner-spin-button {
	appearance: none;
	-moz-appearance: none;
	-webkit-appearance: none;
}

.sms, .lms {
	display: none;
}

.sms.active {
	display: inline-block;
}

.lms.active {
	display: inline-block;
	color: red;
}

.sms_size {
	border: none;
	text-align: right;
	width: 50px;
	margin-right: 5px;
}
</style>
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
					<li class="sub-menu dcjq-parent-li"><a id="mess"
						class="active dcjq-parent" href="javascript:;"> <i
							class="fa fa-envelope-open-o" style="font-size: 13px;"></i> <span>메세지
								관리</span>
					</a>
						<ul class="sub">
							<li><a id="ka-tmplt" href="ka_tmplt.admin">알림톡 템플릿</a></li>
							<li><a id="ka-hist" href="ka_hist.admin">알림톡 전송이력</a></li>
							<li><a id="mess-send" href="mess_send.admin">문자 전송</a></li>
							<li class="active"><a id="mess-send-group"
								href="mess_send_group.admin">단체 문자 전송</a></li>
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
					<i class="fa fa-angle-right"></i> 단체 문자 전송
				</h3>
				<div class="row mt">
					<div class="col-lg-8" style="min-width: 400px;">
						<div class="card-header" style="font-size: 16px;">
							<i class="fa fa-envelope-o" style="font-size: 14px;"></i> 단체 문자
							전송
						</div>
						<div class="form-panel"
							style="margin-top: 0; padding-bottom: 38px; border-radius: 0 0 10px 10px;">
							<form class="form-horizontal style-form" method="post" name="sendGroupMessageForm"
								action="groupSMS.admin">
								<div class="form-group">
									<label class="col-sm-2 control-label">발신번호</label> <label
										class="col-sm-5 col-sm-5 control-label">010-2776-4122</label>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">문자종류</label>
									<div class="col-sm-10">
										<label class="radio-inline"> <input type="radio"
											name="sms_ad" id="sms_ad1" value="false"> 일반
										</label> <label class="radio-inline"> <input type="radio"
											name="sms_ad" id="sms_ad2" value="true" checked> 광고
											(광고용 메세지 발송시 어쩌구 정보통신망법)
										</label>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">수신</label>
									<div class="col-sm-10">
										<label class="radio-inline"> <input type="radio"
											name="sms_who" id="sms_who1" value="all" disabled> 전체
										</label> <label class="radio-inline"> <input type="radio"
											name="sms_who" id="sms_who2" value="sms_usable" checked>
											마케팅수신동의
										</label> 
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-2 control-label"> 내용 <span
										class="sms active">(SMS)</span> <span class="lms">(LMS)</span>
									</label>
									<div class="col-sm-10">
										<textarea class="form-control" id="sms_text" name="sms_text"
											rows="5" style="width: 98%; font-size: 14px;"
											placeholder="내용을 입력하세요"></textarea>
									</div>
									<label class="col-12" style="float: right; margin-right: 25px;">
										<input type="text" class="sms_size" id="sms_size"
										name="sms_size" value="0"> Bytes
									</label>
								</div>
								<input type="hidden" id="sms_type" name="sms_type">
								<button type="reset" class="btn grey__button"
									style="width: 70px; float: right; margin-left: 10px;">초기화</button>
								<button type="button" onclick="sendGroupMessage()" class="btn btn-theme"
									style="width: 70px; float: right; margin-left: 10px; height: 30px; font-size: 12px;">
									전송</button>

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
	<!-- js placed at the end of the document so the pages load faster -->
	
	<!--common script for all pages-->
	
	<!--script for this page-->
	
	<script>
	var ch1,ch2;
	ch1=false;ch2=false;
	var regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
	function sendGroupMessage(){
		if(ch2){
			document.sendGroupMessageForm.submit();
		}else if(!ch2){
			alert("내용문제");
		}
	}
	
	jQuery(document).ready(
			//LMS SMS 변환
		function() {
			$("textarea[name=sms_text]").on("propertychange change keyup paste input",
					function(){
				var text_length = $(this).val().getBytes();
				$("#sms_size").val = text_length;
				$("input[name='sms_size']").val(text_length);
				if(text_length > 0){ch2=true;}else if(text_length == 0){ch2=false;}
				if(text_length > 79){
					$(".sms").removeClass("active");
					$(".lms").addClass("active");
					$("input[name='sms_type']").val("LMS");
				}else{
					$(".lms").removeClass("active");
					$(".sms").addClass("active");
					$("input[name='sms_type']").val("SMS");
				}
			});//end textarea 
	});

	//바이트로
	String.prototype.getBytes = function() {
	    const content = this;
	    let str_char;
	    let int_char_count = 0;
	    let int_content_length = content.length;

	    for (k = 0; k < int_content_length; k++) {
	        str_char = content.charAt(k);
	        if (escape(str_char).length > 4)
	            int_char_count += 2;
	        else
	            int_char_count++;
	    }
	    return int_char_count;
	}
	</script>
	</body>

	</html>
