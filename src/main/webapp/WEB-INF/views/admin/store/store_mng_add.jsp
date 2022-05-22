<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
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
<script src="https://sdk.amazonaws.com/js/aws-sdk-2.891.0.min.js"></script>

<!-- 테이블용 css -->
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<style>
.tel_form, .email_form, .regName_label,.regRepName_label,.regCode_label{
	display:none;
}
.tel_form.active, .email_form.active, .regName_label.active,.regRepName_label.active,.regCode_label.active{
	display: block;
	padding-left: 5px;
	color: red;
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
			<section class="wrapper site-min-height">
				<h3 style="margin-bottom: 5px;">
					<i class="fa fa-angle-right"></i> 매장 등록
				</h3>
				<label style="font-size: 11px;">자동등록 오류가 있을 경우만 이용해주세요</label>
				<div class="row mt" style="margin-top: 5px;">
					<!-- 왼쪽 영역 시작 -->
					<div class="col-lg-7" style="min-width: 500px;">
						<div class="card-header" style="font-size: 16px;">
							<i class="fa fa-plus-circle" style="font-size: 14px;"></i> 매장 정보
						</div>
						<div class="form-panel"
							style="margin-top: 0; padding-bottom: 38px; border-radius: 0 0 10px 10px;">
							<form name="storeRegForm" action="/regisStore.admin" class="form-horizontal style-form" method="post">
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">매장명</label>
									<div class="col-sm-6">
										<input class="form-control" id="si_name" name="si_name" type="text" placeholder="매장명">
										<p class="regName_label">이름 이상</p>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">코드</label>
									<div class="col-sm-4">
										<input class="form-control" id="si_code" name="si_code" type="text" placeholder="사업자번호">
										<p class="regCode_label">사업자번호는 10자리입니다</p>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">대표자 성함</label>
									<div class="col-sm-4">
										<input class="form-control" id="rep_name" name="sa_rep_name"
											type="text" placeholder="대표자 성함">
											<p class="regRepName_label">이름 이상</p>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">비밀번호</label>
									<div class="col-sm-4">
										<input class="form-control" type="password" placeholder=""
											value="" name="sa_password">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">주소</label>
									<div class="col-sm-2">
										<input class="form-control" name="si_zipcode" id="post__code" type="text"
											placeholder="우편번호">
									</div>
									<div class="col-sm-6">
										<input class="form-control" name="si_address" id="road__Address" type="text"
											placeholder="서울시 종로구 삼일대로28길 14">
									</div>
									<div class="col-sm-2" style="margin-top: 2px;">
										<input class="grey__button" type="button"
											onclick="getPostCode()" value="검색">
									</div>
									<div class="col-sm-2">&nbsp;</div>
									<div class="col-sm-2">&nbsp;</div>
									<div class="col-sm-3">
										<input class="form-control" name="si_addr_road" id="extra__Address" type="text"
											placeholder="동">
									</div>
									<div class="col-sm-4">
										<input class="form-control" name="si_addr_detail" id="detail__Address" type="text"
											placeholder="상세주소">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">전화번호</label>
									<div class="col-sm-4">
										<input class="form-control" type="text" name="si_tel" id="si_tel"
											placeholder="0212345678">
										<p class="tel_form">전화번호 형식을 맞춰주세요</p>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">이메일</label>
									<div class="col-sm-5">
										<input class="form-control" type="email" name="sa_email" id="sa_email"
											placeholder="walking@walking.com">
										<p class="email_form">이메일 형식을 맞춰주세요</p>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label"
										style="padding: 25px 15px;">서류</label>
									<div class="col-sm-2"
										style="margin-top: 2px; padding: 0 0 0 15px;">
										<input class="grey__button" type="button" onclick=""
											value="사업자등록증" style="margin-right: 5px;">
									</div>
									<div class="col-lg-4" style="padding: 0;">
									
<!-- 수정해야될곳 --><!-- 수정해야될곳 --><!-- 수정해야될곳 --><!-- 수정해야될곳 --><!-- 수정해야될곳 --><!-- 수정해야될곳 -->
										<input id="businessreg" type="file" class="grey__button" accept="image/*"
											name="sa_business_registration_image">
											
									</div>
									<div class="col-sm-4">&nbsp;</div>
									<div class="col-sm-4">&nbsp;</div>
									<div class="col-sm-2"
										style="margin-top: 2px; padding: 0 0 0 15px;">
										<input class="grey__button" type="button" onclick=""
											value="통장사본">
									</div>
									<div class="col-lg-4" style="padding: 0;">
									
<!-- 수정해야될곳 --><!-- 수정해야될곳 --><!-- 수정해야될곳 --><!-- 수정해야될곳 --><!-- 수정해야될곳 --><!-- 수정해야될곳 -->
										<input id="bankcopy" type="file" class="grey__button" accept="image/*"
											name="sa_bankbook_image">
											
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">영업시간</label>
									<div class="col-sm-10">
										<input class="form-control round-form" name="si_open" type="time"
											value="09:00"
											style="width: 20%; display: inline-block; margin-right: 10px;">
										~ <input class="form-control round-form" name="si_close" type="time"
											value="21:00"
											style="width: 20%; display: inline-block; margin-left: 10px;">
									</div>
								</div>


								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">주차여부</label>
									<div class="col-sm-10" style="padding: 0;">
										<div class="col-sm-7">
											<label class="radio-inline"> <input type="radio"
												name="si_parking_able" id="inlineRadio1" value="true"> 가능
											</label> <label class="radio-inline"> <input type="radio"
												name="si_parking_able" id="inlineRadio2" value="false" checked>
												불가
											</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">매장사용</label>
									<div class="col-sm-10" style="padding: 0;">
										<div class="col-sm-7">
											<label class="radio-inline"> <input type="radio"
												name=""si_usestore" id="inlineRadio3" value="true"> 가능
											</label> <label class="radio-inline"> <input type="radio"
												name="si_usestore" id="inlineRadio4" value="false" checked>
												불가
											</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">특이사항</label>
									<div class="col-sm-8">
										<input class="form-control" id="si_referinfo" name="si_referinfo" type="text" placeholder="">
									</div>
								</div>



								<button type="button" onclick="window.history.back()"
									class="btn btn-theme" style="float: right; margin-left: 10px;">뒤로</button>
								<button type="button" onclick="finalCheck()" class="btn btn-theme" style="float: right;">추가</button>
								<!-- onclick="location.href='store_mng.html'" -->
							</form>
						</div>
					</div>
					<!-- 왼쪽영역 끝 -->

					<!-- 오른쪽 사진 영역 시작 -->
					<div class="col-lg-3" style="min-width: 450px; padding: 0;">
						<div class="card-header" style="font-size: 16px;">
							<i class="fa fa-plus-circle" style="font-size: 14px;"></i> 매장 정보
						</div>
						<div class="form-panel"
							style="margin-top: 0; padding-bottom: 38px; border-radius: 0 0 10px 10px;">
							<form class="form-horizontal style-form" method="get">
								<div class="row mt">
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
										<div class="project-wrapper">
											<div class="project">
												<div class="photo-wrapper_">
													<div class="photo store_image_small">
														<img class="img-responsive"
															src="resources/assets/images/admin/upload-photo-icon.png"
															alt=""></a>
													</div>
													<div class="overlay"></div>
												</div>
											</div>
										</div>
										<div class="row" style="padding: 7px 15px">
											<div class="col-lg-7" style="padding: 0;">
												<input id="" type="file" class="cut__side" value="수정"
													name="">

											</div>
											<div class="col-lg-5">
												<input id="" type="button" class="cut__side" value="제거">

											</div>
										</div>
									</div>
									<!-- col-lg-4 -->
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
										<div class="project-wrapper">
											<div class="project">
												<div class="photo-wrapper_">
													<div class="photo store_image_small">
														<img class="img-responsive"
															src="resources/assets/images/admin/upload-photo-icon.png"
															alt=""></a>
													</div>
													<div class="overlay"></div>
												</div>
											</div>
											<div class="row" style="padding: 7px 15px">
												<div class="col-lg-7" style="padding: 0;">
													<input id="" type="file" class="cut__side" value="수정"
														name="">

												</div>
												<div class="col-lg-5">
													<input id="" type="button" class="cut__side" value="제거">

												</div>
											</div>
										</div>

									</div>
									<!-- col-lg-4 -->
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
										<div class="project-wrapper">
											<div class="project">
												<div class="photo-wrapper_">
													<div class="photo store_image_small">
														<img class="img-responsive center-block"
															src="resources/assets/images/admin/upload-photo-icon.png"
															alt=""></a>
													</div>
													<div class="overlay"></div>
												</div>
											</div>
										</div>
										<div class="row" style="padding: 7px 15px">
											<div class="col-lg-7" style="padding: 0;">
												<input id="" type="file" class="cut__side" value="수정"
													name="">

											</div>
											<div class="col-lg-5">
												<input id="" type="button" class="cut__side" value="제거">

											</div>
										</div>
									</div>
									<!-- col-lg-4 -->
								</div>



								<button type="button" onclick="" class="btn btn-theme"
									style="float: right;">수정</button>
							</form>
						</div>
						<!-- /여기까지 -->
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
	<!-- 다음 지도 api -->
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	var code = "";
		var fileInput = document.getElementsByClassName("ex_file");

		for( var i=0; i<fileInput.length; i++ ){
			if( fileInput[i].files.length > 0 ){
				for( var j = 0; j < fileInput[i].files.length; j++ ){
					console.log(fileInput[i].files[j].name); // 파일명 출력
				}
			}
		}

	}
	 // 사업자등록증 업로드 
    uploadImgbusinessreg = () => {
        AWS.config.update({
            region: 'ap-northeast-2',
            credentials: new AWS.CognitoIdentityCredentials({
                IdentityPoolId: '<spring:eval expression='@config.getProperty("S3_POOL_ID")'/>',
            })
        })

        let files = document.getElementById('businessreg').files;
        let file = files[0];
        let fileNamebusinessreg = file.name;
        fileNamebusinessreg = code + fileNamebusinessreg;

        let upload = new AWS.S3.ManagedUpload({
            params: {
                Bucket: 'walkingorder/businessreg',
                Key: fileNamebusinessreg,
                ContentType : "image/jpeg",
                Body: file
            }
        })

        const promise = upload.promise();
        
    }

    // 통장사본 업로드 
    uploadImgbankcopy = () => {
        AWS.config.update({
            region: 'ap-northeast-2',
            credentials: new AWS.CognitoIdentityCredentials({
                IdentityPoolId: '<spring:eval expression='@config.getProperty("S3_POOL_ID")'/>',
            })
        })

        let files = document.getElementById('bankcopy').files;
        let file = files[0];
        let fileNamebankcopy = file.name;
        fileNamebankcopy = code + fileNamebankcopy;

        let upload = new AWS.S3.ManagedUpload({
            params: {
                Bucket: 'walkingorder/bankcopy',
                Key: fileNamebankcopy,
                ContentType : "image/jpeg",
                Body: file
            }
        })

        const promise = upload.promise();
        
    }
    
    function getPostCode() {
      new daum.Postcode({
        oncomplete: function (data) {
          // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

          // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
          // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
          var roadAddr = data.roadAddress; // 도로명 주소 변수
          var extraRoadAddr = ''; // 참고 항목 변수

          // 법정동명이 있을 경우 추가한다. (법정리는 제외)
          // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
          if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
            extraRoadAddr += data.bname;
          }
          // 건물명이 있고, 공동주택일 경우 추가한다.
          if (data.buildingName !== '' && data.apartment === 'Y') {
            extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
          }
          // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
          if (extraRoadAddr !== '') {
            extraRoadAddr = ' (' + extraRoadAddr + ')';
          }

          // 우편번호와 주소 정보를 해당 필드에 넣는다.
          document.getElementById('post__code').value = data.zonecode;
          document.getElementById("road__Address").value = roadAddr;

          // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
          if (roadAddr !== '') {
            document.getElementById("extra__Address").value = extraRoadAddr;
          } else {
            document.getElementById("extra__Address").value = '';
          }

          document.getElementById("detail__Address").focus();
        }
      }).open();
    }

    var ch1, ch2, ch3, ch4, ch5, ch6, ch7, ch8;
	ch1 = false;//특이사항
// 	ch2 = false;//우편 
 	ch3 = false;//대표이름
	ch4 = false;//매장명
	ch5 = false;//phone authentication
	ch6 = false;//regEmail
	ch7 = false;//regCode
	
	var regRepName = /^[a-zA-Z가-힣\s]+$/;
	var regName = /^[a-zA-Z0-9가-힣\s\'\"]+$/;
	var regCode = /^[0-9]{10}$/;
	var regPhone = /^0([0-9]{7,11})$/;
	var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
	
	jQuery(document).ready(
			function() {
				$("#si_referinfo").on("propertychange change keyup paste input",
						function(){
					var referinfo = $("#si_referinfo").val();
					if(referinfo == ""){ch1 = false;}
					else {ch1=true;}
				});
				$("#si_name").on(
						"propertychange change keyup paste input",
						function() {
							var name = $("#si_name").val();

							if (regName.test(name) == false) {
								$(".regName_label").addClass('active');
								ch4 = false;
							} else {
								$(".regName_label").removeClass('active');
								ch4 = true;
							}
						});
				$("#si_code").on(
						"propertychange change keyup paste input",
						function() {
							code = $("#si_code").val();
							if (regCode.test(code) == false) {
								$(".regCode_label").addClass('active');
								ch7 = false;
							} else {
								$(".regCode_label").removeClass('active');
								ch7 = true;
							}
						});
				$("#rep_name").on(
						"propertychange change keyup paste input",
						function() {
							var rep_name = $("#rep_name").val();

							if (regRepName.test(rep_name) == false) {
								$(".regRepName_label").addClass('active');
								ch3 = false;
							} else {
								$(".regRepName_label").removeClass('active');
								ch3 = true;
							}
						});
				$("#si_tel").on("propertychange change keyup paste input",
		                  function() {
		                     var tel = $("#si_tel").val();
		                     if(tel.indexOf('-')!=-1){
		                        $(".tel_form").addClass('active');
		                        ch5 = false;
		                     }else if (tel.length > 7 && regPhone.test(tel) == false) {
		                    	 $(".tel_form").addClass('active');
		                        ch5 = false;
		                     } else {
		                    	 $(".tel_form").removeClass('active');
		                        ch5 = true;
		                     }
		                  });


				$("#sa_email").on(
						"propertychange change keyup paste input",
						function() {
							var email = $("#sa_email").val();

							if (email.length > 7
									&& regEmail.test(email) == false) {
								$(".email_form").addClass('active');
								ch6 = false;
							} else {
								$(".email_form").removeClass('active');
								ch6 = true;
							}
						});

			});

	
	function finalCheck(){
	if(ch1 && ch5 && ch6 && $("#post__code").val()!=''&& $("#road__Address").val()!=''	) {
		uploadImgbusinessreg();
		uploadImgbankcopy();
		document.storeRegForm.submit();
	}else{
		Swal.fire({
			icon:"error",
			text:"어딘가 잘못 작성"
		});
	}
}
    
    
  </script>
  
</body>

</html>