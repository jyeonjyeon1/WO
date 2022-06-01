<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">


<title>워킹오더 공지 등록</title>

<!-- Favicons -->
<link href="resources/assets/images/admin/logo/logo_only.svg" rel="icon">

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
					<i class="fa fa-angle-right"></i> 공지사항 등록
				</h3>
				<div class="row mt">
					<div class="col-lg-8" style="min-width: 400px;">
						<div class="card-header" style="font-size: 16px;">
							<i class="fa fa-pencil-square-o" style="font-size: 14px;"></i> 공지
							등록
						</div>
						<div class="form-panel"
							style="margin-top: 0; padding-bottom: 38px; border-radius: 0 0 10px 10px;">
							<form class="form-horizontal style-form" method="post"
								action="/insertNotice.admin">
								<div class="form-group">

									<label class="col-sm-2 col-sm-2 control-label">글번호</label>
									<div class="col-sm-4 col-sm-4 col-sm-4">
										<input type="text" name="n_seq" id="n_seq"
											class="form-control round-form" value="${getNextNoticeSeq}"
											readonly>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">공지 종류</label>
									<div class="col-sm-4">
										<label class="radio-inline"> <input type="radio"
											name="n_type" id="n_type1" value="notice" checked> 공지
										</label> <label class="radio-inline"> <input type="radio"
											name="n_type" id="n_type1" value="event" checked> 이벤트
										</label>
									</div>
									<label class="col-sm-2 col-sm-2 control-label">상단고정</label>
									<div class="col-sm-4">
										<label class="radio-inline"> <input type="radio"
											name="n_fix" id="fixed1" value="true"> 고정
										</label> <label class="radio-inline"> <input type="radio"
											name="n_fix" id="fixed2" value="false" checked> 노고정
										</label>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">글제목</label>
									<div class="col-sm-6">
										<input class="form-control" name="n_title" type="text"
											placeholder="제목을 입력해주세요">
									</div>
								</div>
                                <div class="form-group">
                                    <div class="col-lg-12">
                                            <textarea name="n_content" id="smarteditor" rows="20" cols="10"
                                                placeholder="내용을 입력해주세요" style="width: 100%;"></textarea>
                                    </div>
                                    </div>
								<div class="form-group">
									<div class="col-sm-8">
										<input class="form-control grey__button" name="n_file_url" type="file" id="input-imagee">
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">노출상태</label>
									<div class="col-sm-10">

										<label class="radio-inline"> <input type="radio"
											name="n_status" id="inlineRadio1" value="true"> 공개
										</label> <label class="radio-inline"> <input type="radio"
											name="n_status" id="inlineRadio2" value="false" checked>
											비노출
										</label>
									</div>
								</div>

								<!-- <div class="form-group">
									<label class="col-sm-2 col-sm-2 control-label">등록시간</label>
									<div class="col-sm-10">
										<label>시간조정</label> <input type="checkbox" checked
											style="display: inline-block; margin-right: 10px;"> <input
											class="form-control round-form" type="datetime-local"
											value="2022-04-16T10:00"
											style="width: 30%; display: inline-block; margin-right: 10px;">
										~ <input class="form-control round-form" type="datetime-local"
											value="2022-04-30T23:59"
											style="width: 30%; display: inline-block; margin-left: 10px;">

									</div>
								</div> -->

								<button type="button" onclick="window.history.back()"
									class="btn btn-theme"
									style="width: 70px; float: right; margin-left: 10px;">뒤로</button>
								<button type="submit" class="btn btn-theme" onclick="updateImagee()"
									style="width: 70px; float: right;">등록</button>
							</form>
						</div>


					</div>
				</div>
				<!-- 테이블 -->

			</section>
			<!-- /wrapper -->
		</section>
		<!--main content end-->



		<!-- 푸더 import -->
		<%@ include file="../inc/admin_footer.jsp"%>
		<!--footer end-->
	</section>

	<!--script for this page-->

	<!-- 네이버 스마트에디터 -->
	<script type="text/javascript"
		src="resources/assets/js/admin/smarteditor2-2.8.2.3/js/HuskyEZCreator.js"
		charset="utf-8"></script>
	<script>
		let oEditors = []

		smartEditor = function() {
			console.log("Naver SmartEditor")
			nhn.husky.EZCreator
					.createInIFrame({
						oAppRef : oEditors,
						elPlaceHolder : "n_content",
						sSkinURI : "resources/assets/js/admin/smarteditor2-2.8.2.3/SmartEditor2Skin.html",
						fCreator : "createSEditor2"
					})
		}

		$(document).ready(function() {
			smartEditor();
		})
		
		
	//이미지 업로드 실제 S3로 
    updateImagee = () => {
    	AWS.config.update({
            region: 'ap-northeast-2',
            credentials: new AWS.CognitoIdentityCredentials({
                IdentityPoolId: '<spring:eval expression='@config.getProperty("S3_POOL_ID")'/>',
            })
        })
		let files = document.getElementById('input-imagee').files;
        let file = files[0];
        
        let noticeFile = "";
        let n_seq = $("#n_seq").val();
        if(file != null){
        	
            storeImagefile = file.name;
            storeImagefile = n_seq+"___"+ storeImagefile;

            let upload = new AWS.S3.ManagedUpload({
                params: {
                    Bucket: 'walkingorder/notice',
                    Key: storeImagefile,
                    ContentType : "image/jpeg",
                    Body: file
                }
            })

            const promise = upload.promise();
        }
    }
	</script>


	<script
		src="https://cdn.jsdelivr.net/npm/simple-datatables@3.2.0/dist/umd/simple-datatables.js"></script>
	<script
		src="resources/assets/js/admin/datatable/datatables-simple-demo.js"></script>
		<script src="https://sdk.amazonaws.com/js/aws-sdk-2.891.0.min.js"></script>
</body>

</html>