<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
  <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />

<link rel="stylesheet" type="text/css"
	href="resources/assets/js/admin/bootstrap-fileupload/bootstrap-fileupload.css" />

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
          <p class="centered"><a><img src="resources/assets/images/admin/doggy.jpg" class="img-circle" width="80"></a></p>
          <h5 class="centered">김 버터</h5>
          <p class="sidebar-title">설정</p>
          <li class="sub-menu">
            <a href="../index.admin">
              <i class="fa fa-h-square"></i>
              <span>Home</span>
            </a>
          </li>
          <li class="sub-menu">
            <a id="testid" class="dcjq-parent testjirong" href="javacript:;">
              <i class="fa fa-navicon"></i>
              <span>All Menu</span>
            </a>
          </li>
          <p class="sidebar-title">마이 메뉴</p>
          <li class="sub-menu">
            <a id="user-manage" href="javascript:void(0);">
              <i class="fa fa-user" style="font-size: 15px;""></i>
              <span>&nbsp;회원 관리</span>
              </a>
            <ul class=" sub">
          <li><a id="user-mng" href="user_mng.admin">회원 관리</a></li>
          <li><a id="coupon-mng" href="coupon_mng.admin">쿠폰 관리</a></li>
          <li><a id="point-mng" href="point_mng.admin">포인트 관리</a></li>
          <li><a id="connect-hist" href="connect_hist..admin">접속 이력</a></li>
        </ul>
        </li>
        <li class="sub-menu">
          <a id="store-manage" href="javascript:;">
            <i class="fa fa-group" style="font-size: 12px;"></i>
            <span>매장 관리</span>
          </a>
          <ul class="sub">
            <li><a id="store-mng" href="store_mng.admin">매장 관리</a></li>
            <li><a id="store-menu" href="store_menu.admin">매장 메뉴 관리</a></li>
            <li><a id="store-pending" href="store_pending.admin">승인 대기</a></li>
            <li><a id="join-inq" href="join_inq.admin">입점 문의</a></li>
          </ul>
        </li>
        <li class="sub-menu">
          <a id="order-manage" href="javascript:;">
            <i class="fa fa-shopping-cart"></i>
            <span>주문 관리</span>
          </a>
          <ul class="sub">
            <li><a id="total-order" href="total_order.admin">전체 주문 관리</a></li>
            <li><a id="store-order" href="store_order.admin">매장별 주문 관리</a></li>
            <li><a id="cancel-order" href="cancel_order.admin">취소 주문 관리</a></li>
            <li><a id="refund-order" href="refund_order.admin">환불 주문 관리</a></li>
          </ul>
        </li>
        <li class="sub-menu">
          <a id="board-manage" href="javascript:;">
            <i class="fa fa-pencil-square-o" style="font-size: 13px;"></i>
            <span>보드 관리</span>
          </a>
          <ul class="sub">
            <li><a id="notices" href="notices.admin">공지사항</a></li>
            <li><a id="faq-mng" href="faq_mng.admin">FAQ 관리</a></li>

            <li><a id="review-mng" href="review_mng.admin">리뷰 관리</a></li>
            <li><a id="inquiry" href="inquiry.admin">1:1 문의</a></li>
          </ul>
        </li>
        <li class="sub-menu dcjq-parent-li">
          <a id="page-manage" class="active dcjq-parent" href="javascript:;">
            <i class="fa fa-sticky-note"></i>
            <span>페이지 관리</span>
          </a>
          <ul class="sub">
            <li><a id="banner-mng" href="banner_mng.admin">배너 관리</a></li>
            <li class="active"><a id="banner-mng" href="drink_recom.admin">오늘의 음료</a></li>
            <li><a id="banner-mng" href="searchbar_mng.admin">검색어 관리</a></li>
            <li><a id="terms-mng" href="terms_mng.admin">약관 관리</a></li>
            <li><a id="policy-mng" href="policy_mng.admin">정책 관리</a></li>
            <li><a id="doc-form" href="doc_form.admin">증빙서류</a></li>
          </ul>
        </li>
        <li class="sub-menu">
          <a id="mess" href="javascript:;">
            <i class="fa fa-envelope-open-o" style="font-size: 13px;"></i>
            <span>메세지 관리</span>
          </a>
          <ul class="sub">
            <li><a id="ka-tmplt" href="ka_tmplt.admin">알림톡 템플릿</a></li>
            <li><a id="ka-hist" href="ka_hist.admin">알림톡 전송이력</a></li>
            <li><a id="mess-send" href="mess_send.admin">문자 전송</a></li>
            <li><a id="mess-send-group" href="mess_send_group.admin">단체 문자 전송</a></li>
            <li><a id="mess-hist" href="mess_hist.admin">문자 전송 이력</a></li>
          </ul>
        </li>
        <li class="sub-menu">
          <a id="settlement" href="javascript:;">
            <i class=" fa fa-krw"></i>
            <span>정산</span>
          </a>
          <ul class="sub">
            <li><a id="pg-comm" href="pg_comm.admin">PG 수수료</a></li>
            <li><a id="pg-stlmt" href="pg_stlmt.admin">PG 정산</a></li>
            <li><a id="store-rev" href="store_rev.admin">매장별 수익</a></li>
            <li><a id="store-stlmt" href="store_stlmt.admin">매장별 정산</a></li>
            <li><a id="stlmt-hist" href="stlmt_hist.admin">정산 내역</a></li>
          </ul>
        </li>
        <li class="sub-menu">
          <a id="statistics" href="javascript:;">
            <i class=" fa fa-bar-chart-o"></i>
            <span>통계</span>
          </a>
          <ul class="sub">
            <li><a id="order-period" href="order_period.admin">기간별 주문 통계</a></li>
            <li><a id="store-sales" href="store_sales.admin">매장별 매출 통계</a></li>
            <li><a id="user-sales" href="user_sales.admin">사용자별 매출 통계</a></li>
            <li><a id="by-chart" href="by_chart.admin">표로 확인</a></li>
            <li><a id="by-graph" href="by_graph.admin">그래프로 확인</a></li>
          </ul>
        </li>


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
    <%@ include file="../inc/admin_allmenu.jsp" %>
    
      <section class="wrapper site-min-height">
				<h3>
					<i class="fa fa-angle-right"></i> 오늘의 음료 관리
				</h3>
				<div class="row mt">
					<div class="col-lg-10" style="min-width: 400px;">
						<div class="card-header" style="font-size: 16px;">
							<i class="fa fa-picture-o" style="font-size: 14px;"></i> 오늘의 음료
						</div>
						<div class="form-panel"
							style="margin-top: 0; padding-bottom: 38px; border-radius: 0 0 10px 10px;">
							<form class="form-horizontal style-form" method="get">

							<c:forEach var="todayDrinkList" items="${todayDrinkList }" varStatus="vs">
								<div class="form-group" id="deleteTodayDrink${vs.index }">

									<div class="col-md-4" style="min-height: 160px;">
										<div class="fileupload fileupload-new"
											data-provides="fileupload">
											<div class="fileupload-new thumbnail"
												style="width: 100%; height: 180px;">
												<img
													src="${todayDrinkList.td_image }"
													alt="" />
											</div>
											<div class="fileupload-preview fileupload-exists thumbnail"
												style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
											<div>
												<span class="btn grey__button btn-file"> <span
													class="fileupload-new"><i class="fa fa-paperclip"></i>
														이미지 선택</span> <span class="fileupload-exists"><i
														class="fa fa-undo"></i> 변경</span> <input type="file"
													class="default" id="input-image${vs.index}"/>
												</span> <a href="#" class="btn btn-theme04 fileupload-exists"
													style="border-radius: 3px; font-size: 12px; height: 30px;"
													data-dismiss="fileupload"> <i class="fa fa-trash-o">

												</i> 제거
												</a>
											</div>
										</div>
									</div>
									<label class="control-label col-md-2">음료명</label>
									<div class="col-sm-6">
										<input class="form-control" type="text" id="td_name${vs.index}"
											placeholder="제목을 입력하세요" value="${todayDrinkList.td_name }" style="height: 30px; margin: 5px 0;">
									</div>
									<label class="control-label col-md-2">내용<br>(음료 설명)</label>
									<div class="col-sm-6">
										<textarea class="form-control" type="text" id="td_content${vs.index}"
											placeholder="내용 문구를 입력하세요" style="margin: 5px 0;">${todayDrinkList.td_content}</textarea>
									</div>
									<label class="control-label col-md-2">연결URL</label>
									<div class="col-sm-6">
										<input class="form-control" type="text" value="${todayDrinkList.td_url }"
										id="td_url${vs.index}"
											placeholder="URL을 입력하세요" style="height: 30px; margin: 5px 0 10px 0;">
									</div>

									<label class="col-sm-2 col-sm-2 control-label"> </label>
									<div class="col-sm-6">
										<%-- <input type="checkbox" id="b_settime${vs.index}"
											style="display: inline-block; margin-right: 10px;"> 
										<input
											class="form-control round-form" type="date" id="b_startdate${vs.index}"
											value=""
											style="width: 30%; display: inline-block; margin-right: 10px;">
										~ <input class="form-control round-form" type="date" id="b_enddate${vs.index}"
											value=""
											style="width: 30%; display: inline-block; margin-left: 10px;"> --%>
									<button type="button" class="btn btn-primary" onclick="updateTodayDrink${vs.index}()"
									style="padding:5px 5px;width: 55px; float: right; margin-left: 10px;">수정</button>
									<button type="button" class="btn btn-danger" onclick="deleteTodayDrink${vs.index}()"
									style="padding:5px 5px;width: 55px; float: right; margin-left: 10px;">
									삭제</button>
									</div>
<input type="hidden" id="td_seq${vs.index}" value="${todayDrinkList.td_seq}"/>
								</div>
<script type="text/javascript">
function deleteTodayDrink${vs.index}(){
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
		  $.ajax({
	    	    type: "POST",
	    	    url: "/deleteTodayDrink.admin",
	    	    data: JSON.stringify({"td_seq": $("#td_seq${vs.index}").val()}), 
	    	    dataType: "json",
	    	    contentType: "application/json",
	    	    success: function (data) {
	    	        if (data == 1) {
		    	        Swal.fire({
		    	            icon: "success",
		    	            title: "오늘의 음료 삭제 완료",
		    	            showConfirmButton: false,
		    	            timer: 1500
		    	        });
	    	        }else if(data == 0){
	    	        	Swal.fire({
		    	            icon: "warning",
		    	            title: "오늘의 음료 삭제 실패",
		    	            showConfirmButton: false,
		    	            timer: 1500
		    	        });
	    	        }
	    	    },
	    	    error: function (data) {
	    	        console.log("오늘의 음료 삭제 통신에러");
	    	    }
	 		});//ajax end  
		  
        $("#deleteTodayDrink${vs.index}").remove();
	  }//if (result.isConfirmed)
	})//then((result)
}

function updateTodayDrink${vs.index}(){
	nansu = Math.floor(Math.random() * 1000); //0~999 
	  Swal.fire({
		  title: "수정하시겠습니까??",
		  icon: "warning",
		  showCancelButton: true,
		  confirmButtonColor: "#3085d6",
		  cancelButtonColor: "#d33",
		  confirmButtonText: "수정",
			  cancelButtonText: "아니오"
		}).then((result) => {
		  if (result.isConfirmed) {
			  uploadImage${vs.index}();
		  }//if (result.isConfirmed)
		})//then((result)
	}

//이미지 업로드 실제 S3로 
uploadImage${vs.index} = () => {
    AWS.config.update({
        region: 'ap-northeast-2',
        credentials: new AWS.CognitoIdentityCredentials({
            IdentityPoolId: '<spring:eval expression='@config.getProperty("S3_POOL_ID")'/>',
        })
    })
    var td_seq = $("#td_seq${vs.index}").val();
	var td_name = $("#td_name${vs.index}").val();
	var td_url = $("#td_url${vs.index}").val();
	var td_content = $("#td_content${vs.index}").val();
	var td_image = "no";
    
    let files = document.getElementById("input-image${vs.index}").files;
    let file = files[0];
    if(file != null){
	    let fileName = file.name;
	    fileName = nansu +"___"+ fileName;
	    let upload = new AWS.S3.ManagedUpload({
	        params: {
	            Bucket: 'walkingorder/todaydrink',
	            Key: fileName,
	            ContentType : "image/jpeg",
	            Body: file
	        }
	    })
	    const promise = upload.promise();
	    td_image = "https://walkingorder.s3.ap-northeast-2.amazonaws.com/todaydrink/"+fileName;
	    if(td_image.indexOf("+") != -1){td_image = td_image.replace(/\+/g,"%2B");}
    }
  //ajax
	var param = {
		"td_seq" : parseInt(td_seq),    //int
		"td_name" : td_name,
		"td_image": td_image,
		"td_content" : td_content,
		"td_url" : td_url
	}
	$.ajax({
	    type: "POST",
	    url: "/updateTodayDrink.admin",
	    data: JSON.stringify(param), 
	    dataType: "json",
	    contentType: "application/json",
	    success: function (data) {
	        if (data == 1) {
    	        Swal.fire({
    	            icon: "success",
    	            title: "오늘의 음료 수정 완료",
    	            showConfirmButton: false,
    	            timer: 1500
    	        });
	        }else if(data == 0){
	        	Swal.fire({
    	            icon: "warning",
    	            title: "오늘의 음료 수정 실패",
    	            showConfirmButton: false,
    	            timer: 1500
    	        });
	        }
	    },
	    error: function (data) {
	        console.log("오늘의 음료 수정 통신에러");
	    }
	});//ajax end 
    
}
</script>
								</c:forEach>
								
								<!-- zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz -->
								<div id="addTodayDrink"></div>
								<!-- zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz -->
								<span class="label label-info">NOTE!</span> <span
									style="font-size: 11px;"> 최신버전의 브라우저에서만 미리보기가 가능합니다. </span>


								<button type="button" onclick="window.history.back()"
									class="btn btn-theme"
									style="width: 70px; float: right; margin-left: 10px;">뒤로</button>
								<button id="banner_add_btn" type="button" onclick="addTodayDrink()"
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
		<%@ include file="../inc/admin_footer.jsp" %>
    <!--footer end-->
  </section>
 
  <!--script for this page-->
  <script type="text/javascript"
		src="resources/assets/js/admin/bootstrap-fileupload/bootstrap-fileupload.js"></script>
<script src="resources/assets/js/admin/advanced-form-components.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/simple-datatables@3.2.0/dist/umd/simple-datatables.js"></script>
  <script src="resources/assets/js/admin/datatable/datatables-simple-demo.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://sdk.amazonaws.com/js/aws-sdk-2.891.0.min.js"></script>
	<script>
  function addTodayDrink(){
	  
	  $.ajax({
	        url : "addTodayDrink.admin",
	        dataType: "html",	// 이 부분이 반환 타입을 핸들링하는 곳이다.
	        type: "get",
	        success: function(data) {
	          $("#addTodayDrink").append(data); // 반환된 data를 body태그에 추가
	        },
	        error: function (){alert("실패");}
	    });
  }
  
 
  </script>
</body>

</html>