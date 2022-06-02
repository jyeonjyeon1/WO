<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <title>워킹오더 FAQ 관리</title>

  <!-- Favicons -->
  <link href="resources/assets/images/admin/logo/logo_only.svg" rel="icon">
  <!-- 테이블용 css -->
  <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />

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
          <p class="sidebar-title" >설정</p>
          <li class="sub-menu">
            <a href="../index.admin">
              <i class="fa fa-h-square"></i>
              <span>Home</span>
              </a>
          </li>
          <li class="sub-menu">
            <a id= "testid" class="dcjq-parent testjirong" href="javacript:;">
              <i class="fa fa-navicon"></i>
              <span>All Menu</span>
              </a>
          </li>
          <p class="sidebar-title" >마이 메뉴</p>
          <li class="sub-menu">
            <a id="user-manage" href="javascript:void(0);">
              <i class="fa fa-user" style="font-size: 15px;""></i>
              <span>&nbsp;회원 관리</span>
              </a>
            <ul class="sub">
              <li><a id="user-mng" href="user_mng.admin">회원 관리</a></li>
              <li><a id="coupon-mng" href="coupon_mng.admin">쿠폰 관리</a></li>
              <li><a id="point-mng" href="point_mng.admin">포인트 관리</a></li>
              <li><a id="connect-hist" href="connect_hist.admin">접속 이력</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a id="store-manage" href="javascript:;">
              <i class="fa fa-group" style="font-size: 12px;"></i>
              <span>매장 관리</span>
              </a>
            <ul class="sub">
              <li><a id="store-mng" href="store_mng.admin">매장 관리</a></li>
              <li><a id="store-menu" href="pending_menuimg.admin">매장 메뉴 관리</a></li>
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
              
            </ul>
          </li>
          <li class="sub-menu dcjq-parent-li">
            <a id="board-manage" class="active dcjq-parent" href="javascript:;">
              <i class="fa fa-pencil-square-o" style="font-size: 13px;"></i>
              <span>보드 관리</span>
              </a>
            <ul class="sub">
              <li><a id="notices" href="notices.admin">공지사항</a></li>
              <li class="active"><a id="faq-mng" href="faq_mng.admin">FAQ 관리</a></li>
              
              <li><a id="review-mng" href="review_mng.admin">리뷰 관리</a></li>
              <li><a id="inquiry" href="inquiry.admin">1:1 문의</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a id="page-manage" href="javascript:;">
              <i class="fa fa-sticky-note"></i>
              <span>페이지 관리</span>
              </a>
            <ul class="sub">
              <li><a id="banner-mng" href="banner_mng.admin">배너 관리</a></li>
              <li><a id="banner-mng" href="drink_recom.admin">오늘의 음료</a></li>
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
              
              
              <li><a id="mess-send" href="mess_send.admin">문자 전송</a></li>
              <li><a id="mess-send-group" href="mess_send_group.admin">단체 문자 전송</a></li>
              <li><a id="mess-hist" href="mess_hist.admin">문자 전송 이력</a></li>
            </ul>
          </li>
          
          <li class="sub-menu">
            <a id="statistics" href="javascript:;">
              <i class=" fa fa-bar-chart-o"></i>
              <span>통계</span>
              </a>
            <ul class="sub">
               
              <li><a id="store-sales" href="store_sales.admin">매장별 매출 통계</a></li>
              
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
<%@ include file="../inc/admin_allmenu.jsp" %> 
<!--     allmenu import -->
<%--      --%>
      <section class="wrapper site-min-height">
        <h3 style="margin-bottom: 5px;"><i class="fa fa-angle-right"></i> FAQ 관리</h3>
        <div class="row mt" style="margin-top: 5px;">
          <!-- 영역 시작 -->

          <div class="col-lg-11" style="min-width: 500px;">
            <div class="card-header" style="font-size: 16px;">
              <i class="fa fa-plus-circle" style="font-size: 14px;"></i>
              FAQ 관리
            </div>

            <div class="form-panel" style="margin-top:0;  border-radius: 0 0 10px 10px;">
                 <a type="button" class="grey__button btn"
                   style="margin:0px 0px 10px 11px" data-toggle="modal" href="#addModal">질문 추가</a>
<!-- Modal -->
<div aria-hidden="true" aria-labelledby="myModalLabel"
	role="dialog" tabindex="-1" id="addModal"
	class="modal fade" style="margin: 20px auto 0;">
	<form method="post" action="insertFaq.admin" name="insertFaq">
	<div class="modal-dialog store">
		<div class="modal-content">
			<div class="modal-header_store">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title"> 자주 묻는 질문 추가하기</h4>
			</div>
			<!-- 	정보시작 -->
			<div class="modal_wrapbody" style="height:300px">
				<div class="modal-body" style="padding-bottom: 0;">
					<p style="margin-bottom: 2px;">FAQ 제목</p>
					<input type="text" name="fac_title" class="form-control">
				</div>
				
				<div class="modal-body" style="padding-bottom: 0;">
				<p style="margin-bottom: 2px;">FAQ 유형</p>
<!-- 					<label style="margin-bottom: 2px;margin-left:20px;">FAQ 유형</label> -->
					<select name="fac_type" class="form-control">
						<option value="order" selected="selected">주문 및 결제</option>
						<option value="cancel">취소 및 환불</option>
						<option value="user">회원</option>
						<option value="point">포인트 및 쿠폰</option>
						<option value="etc">기타</option>
					</select>
				</div>
				
				<!-- 마지막 정보는 아래 패딩 유지 -->
				<div class="modal-body">
					<p style="margin-bottom: 2px;">FAQ 내용</p>
					<textarea rows="5" name="fac_content" class="form-control"></textarea>
				</div>
			</div>
			<div class="modal-footer">
				<button
					class="btn btn-theme" type="button" onclick="newFaqAdd()">등록</button>
					<button data-dismiss="modal" class="btn btn-default"
					type="button">취소</button>
			</div>
		</div>
	</div>
	</form>
</div>
<script>
function newFaqAdd(){
	Swal.fire({
        icon: "success",
        title: "FAQ 등록 완료",
        showConfirmButton: false,
        timer: 1500
    });
	document.insertFaq.submit();
}
</script>
<!-- Modal END -->
              <form class="form-horizontal style-form" method="get">
                <div class="row content-panel" style="border: none; box-shadow: none;padding: 0;margin:0 5px">
                  
                  <!-- /panel-heading -->
                  <div class="panel-body col-lg-12" style="padding: 0 0px 11px 0px;">
                    <div class="tab-content">
                      <!-- 메뉴관리 -->
                      <div id="menu" class="tab-pane active no-padding">
                        <div class="row content-panel" style="border: none; box-shadow: none;padding: 0;margin:0 5px">
                          <!--  / 옵션편집 / 대표메뉴 / 메뉴모음컷 / 주문안내 -->
                          <div class="panel-heading col-lg-12 col-md-12 col-sm-12 no-padding"
                            style="margin-bottom: 5px;">
                            <ul class="nav nav-tabs nav-justified">
                              <li class="active">
                                <a data-toggle="tab" href="#faq__111">주문 및 결제</a>
                              </li>
                              <li>
                                <a data-toggle="tab" href="#faq__222">취소 및 환불</a>
                              </li>
                              <li>
                                <a data-toggle="tab" href="#faq__333">회원</a>
                              </li>
                              <li>
                                <a data-toggle="tab" href="#faq__444">포인트 및 쿠폰</a>
                              </li>
                              <li>
                                <a data-toggle="tab" href="#faq__555">기타</a>
                              </li>
                            </ul>
                          </div>
                          <!-- /panel-heading -->
                          <div class="panel-body col-lg-12">
                            <div class="tab-content">
                              <!-- 메뉴편집 -->
                              <div id="faq__111" class="tab-pane active">
                                

                                <div class="row">
                                  <div class="col-md-12 no-padding">
                                    <div class="accordion" id="accordion11">
<c:forEach var="faqList" items="${faqList}" varStatus="vs">
                      <c:if test="${faqList.fac_type eq 'order' || faqList.fac_type eq 'payment'}">
                                      <!-- 열리기1 -->
                                      <div class="accordion-group" id="deletePay${vs.index}">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" style="border-top: 0;display: inline-block;margin-right: 20px;"
                                            data-toggle="collapse" data-parent="#accordion11" href="#collapse11${vs.index }">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>
                                            ${faqList.fac_title}
                                          </a>
                                          <input type="hidden" id="f_seq${vs.index }" value="${faqList.fac_seq}"/>
                                          <input type="text" id="faq__update__ta_pay${vs.index }" value="${faqList.fac_title}" class="faq__update__ta form-control round-form" style="margin-right:10px;width:200px;height:30px;">
                                          <a type="button" id="zzzz${vs.index }" class="btn btn-primary btn-xs" onclick="updatepay${vs.index}()" style="margin-right: 10px;"><i id="faq__update__btn${vs.index }" class="fa fa-pencil"></i></a>
                                          <a type="button" id="faq__delete__btn${vs.index }" class="btn btn-danger btn-xs" onclick="deletepay${vs.index}()"><i class="fa fa-trash"></i></a>
                                        </div>
                                        <div id="collapse11${vs.index }" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <textarea rows="3" id="faq__update__co_pay${vs.index }" class="form-control round-form"
>${faqList.fac_content}</textarea>
                                          </div>
                                        </div>
                                      </div>
<script>
function deletepay${vs.index}(){
	var seq = $("#f_seq${vs.index }").val();
	var title = $("#faq__update__ta_pay${vs.index }").val();
	var content = $("#faq__update__co_pay${vs.index }").val();
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
		    	    url: "/deleteFaq.admin",
		    	    data: JSON.stringify({"fac_seq": parseInt(seq), "fac_title":title,"fac_content":content}),
		    	    dataType: "json",
		    	    contentType: "application/json",
		    	    success: function (data) {
		    	        if (data == 1) {
			    	        Swal.fire({
			    	            icon: "success",
			    	            title: "FAQ 삭제 완료",
			    	            showConfirmButton: false,
			    	            timer: 1500
			    	        });
		    	        }else if(data == 0){
		    	        	Swal.fire({
			    	            icon: "warning",
			    	            title: "FAQ 삭제 실패",
			    	            showConfirmButton: false,
			    	            timer: 1500
			    	        });
		    	        }
		    	    },
		    	    error: function (data) {
		    	        console.log("FAQ 삭제 통신에러");
		    	    }
		 		});//ajax end  
			  
	        $("#deletePay${vs.index}").remove();
		  }//if (result.isConfirmed)
		})//then((result)
}

function updatepay${vs.index}(){
// 	Swal.fire({
//         icon: "success",
//         title: "FAQ 삭제 완료",
//         showConfirmButton: false,
//         timer: 1500
//     });
     if ($("#faq__update__ta_pay${vs.index }").hasClass('active')==false) {
       $("#faq__update__ta_pay${vs.index }").addClass("active");
       $("#faq__update__btn${vs.index }").removeClass("fa-pencil");
       $("#faq__update__btn${vs.index }").addClass("fa-check");
       $("#zzzz${vs.index }").removeClass("btn-primary");
       $("#zzzz${vs.index }").addClass("btn-success");
       $("#collapse11${vs.index }").addClass("in");
     }else{
    	 var seq = $("#f_seq${vs.index }").val();
    	 var title = $("#faq__update__ta_pay${vs.index }").val();
    	 var content = $("#faq__update__co_pay${vs.index }").val();
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
   			$.ajax({
	    	    type: "POST",
	    	    url: "/updateFaq.admin",
	    	    data: JSON.stringify({"fac_seq": parseInt(seq), "fac_title":title,"fac_content":content}), 
	    	    dataType: "json",
	    	    contentType: "application/json",
	    	    success: function (data) {
	    	        if (data == 1) {
		    	        Swal.fire({
		    	            icon: "success",
		    	            title: "수정 완료",
		    	            showConfirmButton: false,
		    	            timer: 1500
		    	        });
	    	        }else if(data == 0){
	    	        	Swal.fire({
		    	            icon: "warning",
		    	            title: "수정 실패",
		    	            showConfirmButton: false,
		    	            timer: 1500
		    	        });
	    	        }
	    	    },
	    	    error: function (data) {
	    	        console.log("FAQ 삭제 통신에러");
	    	    }
	 		});//ajax end  
   		  }//if (result.isConfirmed)
   		})//then((result)
   	}
     
     //화면
    	 $("#faq__update__ta_pay${vs.index }").removeClass("active");
         $("#faq__update__btn${vs.index }").addClass("fa-pencil");
         $("#faq__update__btn${vs.index }").removeClass("fa-check");
         $("#zzzz${vs.index }").addClass("btn-primary");
         $("#zzzz${vs.index }").removeClass("btn-success");
         $("#collapse11${vs.index }").removeClass("in");
     
}


</script>                                      
</c:if>
</c:forEach>


                                    </div>
                                    <!-- end accordion -->
                                  </div>
                                  <!-- /col-md-6 -->
                                </div>
                                <!-- /메뉴관리 -->
                              </div>
                              <!-- /tab-pane -->
                              <!-- 옵션편집 -->
                              <div id="faq__222" class="tab-pane">
                                <div class="row">
                                  <div class="col-md-12 no-padding">
                                    <div class="accordion" id="accordion12">
                                      <c:forEach var="faqList" items="${faqList}" varStatus="vs">
                      <c:if test="${faqList.fac_type eq 'cancel' || faqList.fac_type eq 'refund'}">
                                      <!-- 열리기1 -->
                                      <div class="accordion-group" id="deleteCancel${vs.index}">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" style="border-top: 0;display: inline-block;margin-right: 20px;"
                                            data-toggle="collapse" id="cancelTitle${vs.index }" data-parent="#accordion12" href="#collapse12${vs.index }">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>
                                            ${faqList.fac_title}
                                          </a>
                                          <input type="hidden" id="f_seqcancel${vs.index }" value="${faqList.fac_seq}"/>
                                          <input type="text" id="faq__update__ta_Cancel${vs.index }" value="${faqList.fac_title}" class="faq__update__ta form-control round-form" style="margin-right:10px;width:200px;height:30px;">
                                          <a type="button" id="zzzzcancel${vs.index }" class="btn btn-primary btn-xs" onclick="updateCancel${vs.index}()" style="margin-right: 10px;"><i id="faq__update__btncancel${vs.index }" class="fa fa-pencil"></i></a>
                                          <a type="button" id="faq__delete__btncancel${vs.index }" class="btn btn-danger btn-xs" onclick="deleteCancel${vs.index}()"><i class="fa fa-trash"></i></a>
                                        </div>
                                        <div id="collapse12${vs.index }" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <textarea rows="3" id="faq__update__co_Cancel${vs.index }" class="form-control round-form"
>${faqList.fac_content}</textarea>
                                          </div>
                                        </div>
                                      </div>
<script>
function deleteCancel${vs.index}(){
	var seq = $("#f_seqcancel${vs.index }").val();
	 var title = $("#faq__update__ta_Cancel${vs.index }").val();
	 var content = $("#faq__update__co_Cancel${vs.index }").val();
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
		    	    url: "/deleteFaq.admin",
		    	    data: JSON.stringify({"fac_seq": parseInt(seq), "fac_title":title,"fac_content":content}),
		    	    dataType: "json",
		    	    contentType: "application/json",
		    	    success: function (data) {
		    	        if (data == 1) {
			    	        Swal.fire({
			    	            icon: "success",
			    	            title: "FAQ 삭제 완료",
			    	            showConfirmButton: false,
			    	            timer: 1500
			    	        });
			    	        
		    	        }else if(data == 0){
		    	        	Swal.fire({
			    	            icon: "warning",
			    	            title: "FAQ 삭제 실패",
			    	            showConfirmButton: false,
			    	            timer: 1500
			    	        });
		    	        }
		    	    },
		    	    error: function (data) {
		    	        console.log("FAQ 삭제 통신에러");
		    	    }
		 		});//ajax end  
			  
	        $("#deleteCancel${vs.index}").remove();
		  }//if (result.isConfirmed)
		})//then((result)
}

function updateCancel${vs.index}(){
// 	Swal.fire({
//         icon: "success",
//         title: "FAQ 삭제 완료",
//         showConfirmButton: false,
//         timer: 1500
//     });
     if ($("#faq__update__ta_Cancel${vs.index }").hasClass('active')==false) {
       $("#faq__update__ta_Cancel${vs.index }").addClass("active");
       $("#faq__update__btncancel${vs.index }").removeClass("fa-pencil");
       $("#faq__update__btncancel${vs.index }").addClass("fa-check");
       $("#zzzzcancel${vs.index }").removeClass("btn-primary");
       $("#zzzzcancel${vs.index }").addClass("btn-success");
       $("#collapse12${vs.index }").addClass("in");
     }else{
    	 var seq = $("#f_seqcancel${vs.index }").val();
    	 var title = $("#faq__update__ta_Cancel${vs.index }").val();
    	 var content = $("#faq__update__co_Cancel${vs.index }").val();
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
   			$.ajax({
	    	    type: "POST",
	    	    url: "/updateFaq.admin",
	    	    data: JSON.stringify({"fac_seq": parseInt(seq), "fac_title":title,"fac_content":content}), 
	    	    dataType: "json",
	    	    contentType: "application/json",
	    	    success: function (data) {
	    	        if (data == 1) {
		    	        Swal.fire({
		    	            icon: "success",
		    	            title: "수정 완료",
		    	            showConfirmButton: false,
		    	            timer: 1500
		    	        });
		    	        document.getElementById("cancelTitle${vs.index }").innerText = title;
	    	        }else if(data == 0){
	    	        	Swal.fire({
		    	            icon: "warning",
		    	            title: "수정 실패",
		    	            showConfirmButton: false,
		    	            timer: 1500
		    	        });
	    	        }
	    	    },
	    	    error: function (data) {
	    	        console.log("FAQ 삭제 통신에러");
	    	    }
	 		});//ajax end  
   		  }//if (result.isConfirmed)
   		})//then((result)
   				
   	 //화면
   	 $("#faq__update__ta_Cancel${vs.index }").removeClass("active");
        $("#faq__update__btncancel${vs.index }").addClass("fa-pencil");
        $("#faq__update__btncancel${vs.index }").removeClass("fa-check");
        $("#zzzzcancel${vs.index }").addClass("btn-primary");
        $("#zzzzcancel${vs.index }").removeClass("btn-success");
        $("#collapse12${vs.index }").removeClass("in");
   				
   	}
     
    
     
}


</script>                                      
</c:if>
</c:forEach>

                                    </div>
                                    <!-- end accordion -->
                                  </div>
                                  
                                  <!-- /col-md-6 -->
                                </div>
                                <!-- /row -->
                              </div>
                              <!-- /tab-pane -->
                              <!-- 대표메뉴 -->
                              <div id="faq__333" class="tab-pane">
                                <div class="row">
                                  <div class="col-md-12 no-padding">
                                    <div class="accordion" id="accordion13">
                                      <!-- 열리기1 -->
<c:forEach var="faqList" items="${faqList}" varStatus="vs">
 <c:if test="${faqList.fac_type eq 'user'}">
                                      <!-- 열리기1 -->
                                      <div class="accordion-group" id="deleteUser${vs.index}">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" style="border-top: 0;display: inline-block;margin-right: 20px;"
                                            data-toggle="collapse" id="UserTitle${vs.index }" data-parent="#accordion13" href="#collapse13${vs.index }">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>
                                            ${faqList.fac_title}
                                          </a>
                                          <input type="hidden" id="f_seqUser${vs.index }" value="${faqList.fac_seq}"/>
                                          <input type="text" id="faq__update__ta_User${vs.index }" value="${faqList.fac_title}" class="faq__update__ta form-control round-form" style="margin-right:10px;width:200px;height:30px;">
                                          <a type="button" id="zzzzUser${vs.index }" class="btn btn-primary btn-xs" onclick="updateUser${vs.index}()" style="margin-right: 10px;"><i id="faq__update__btnUser${vs.index }" class="fa fa-pencil"></i></a>
                                          <a type="button" id="faq__delete__btnUser${vs.index }" class="btn btn-danger btn-xs" onclick="deleteUser${vs.index}()"><i class="fa fa-trash"></i></a>
                                        </div>
                                        <div id="collapse13${vs.index }" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <textarea rows="3" id="faq__update__co_User${vs.index }" class="form-control round-form"
>${faqList.fac_content}</textarea>
                                          </div>
                                        </div>
                                      </div>
<script>
function deleteUser${vs.index}(){
	var seq = $("#f_seqUser${vs.index }").val();
	 var title = $("#faq__update__ta_User${vs.index }").val();
	 var content = $("#faq__update__co_Cancel${vs.index }").val();
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
		    	    url: "/deleteFaq.admin",
		    	    data: JSON.stringify({"fac_seq": parseInt(seq), "fac_title":title,"fac_content":content}),
		    	    dataType: "json",
		    	    contentType: "application/json",
		    	    success: function (data) {
		    	        if (data == 1) {
			    	        Swal.fire({
			    	            icon: "success",
			    	            title: "FAQ 삭제 완료",
			    	            showConfirmButton: false,
			    	            timer: 1500
			    	        });
			    	        
		    	        }else if(data == 0){
		    	        	Swal.fire({
			    	            icon: "warning",
			    	            title: "FAQ 삭제 실패",
			    	            showConfirmButton: false,
			    	            timer: 1500
			    	        });
		    	        }
		    	    },
		    	    error: function (data) {
		    	        console.log("FAQ 삭제 통신에러");
		    	    }
		 		});//ajax end  
			  
	        $("#deleteUser${vs.index}").remove();
		  }//if (result.isConfirmed)
		})//then((result)
}

function updateUser${vs.index}(){
// 	Swal.fire({
//         icon: "success",
//         title: "FAQ 삭제 완료",
//         showConfirmButton: false,
//         timer: 1500
//     });
     if ($("#faq__update__ta_User${vs.index }").hasClass('active')==false) {
       $("#faq__update__ta_User${vs.index }").addClass("active");
       $("#faq__update__btnUser${vs.index }").removeClass("fa-pencil");
       $("#faq__update__btnUser${vs.index }").addClass("fa-check");
       $("#zzzzUser${vs.index }").removeClass("btn-primary");
       $("#zzzzUser${vs.index }").addClass("btn-success");
       $("#collapse13${vs.index }").addClass("in");
     }else{
    	 var seq = $("#f_seqUser${vs.index }").val();
    	 var title = $("#faq__update__ta_User${vs.index }").val();
    	 var content = $("#faq__update__co_User${vs.index }").val();
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
   			$.ajax({
	    	    type: "POST",
	    	    url: "/updateFaq.admin",
	    	    data: JSON.stringify({"fac_seq": parseInt(seq), "fac_title":title,"fac_content":content}), 
	    	    dataType: "json",
	    	    contentType: "application/json",
	    	    success: function (data) {
	    	        if (data == 1) {
		    	        Swal.fire({
		    	            icon: "success",
		    	            title: "수정 완료",
		    	            showConfirmButton: false,
		    	            timer: 1500
		    	        });
		    	        document.getElementById("UserTitle${vs.index }").innerText = title;
	    	        }else if(data == 0){
	    	        	Swal.fire({
		    	            icon: "warning",
		    	            title: "수정 실패",
		    	            showConfirmButton: false,
		    	            timer: 1500
		    	        });
	    	        }
	    	    },
	    	    error: function (data) {
	    	        console.log("FAQ 삭제 통신에러");
	    	    }
	 		});//ajax end  
   		  }//if (result.isConfirmed)
   		})//then((result)
   				
   	 //화면
   	 $("#faq__update__ta_User${vs.index }").removeClass("active");
        $("#faq__update__btnUser${vs.index }").addClass("fa-pencil");
        $("#faq__update__btnUser${vs.index }").removeClass("fa-check");
        $("#zzzzUser${vs.index }").addClass("btn-primary");
        $("#zzzzUser${vs.index }").removeClass("btn-success");
        $("#collapse13${vs.index }").removeClass("in");
   				
   	}
     
    
     
}


</script>                                      
</c:if>
</c:forEach>
                                    </div>
                                    <!-- end accordion -->
                                  </div>
                                  <!-- /col-md-6 -->
                                </div>
                                <!-- /메뉴관리 -->
                              </div>
                              <!-- /tab-pane -->
                              <!-- 메뉴모음컷 -->
                              <div id="faq__444" class="tab-pane">
                                <div class="row">
                                  <div class="col-md-12 no-padding">
                                    <div class="accordion" id="accordion14">
                                      <!-- 열리기1 -->
 <c:forEach var="faqList" items="${faqList}" varStatus="vs">
 <c:if test="${faqList.fac_type eq 'point'}">
                                      <!-- 열리기1 -->
                                      <div class="accordion-group" id="deletePoint${vs.index}">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" style="border-top: 0;display: inline-block;margin-right: 20px;"
                                            data-toggle="collapse" id="PointTitle${vs.index }" data-parent="#accordion14" href="#collapse14${vs.index }">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>
                                            ${faqList.fac_title}
                                          </a>
                                          <input type="hidden" id="f_seqPoint${vs.index }" value="${faqList.fac_seq}"/>
                                          <input type="text" id="faq__update__ta_Point${vs.index }" value="${faqList.fac_title}" class="faq__update__ta form-control round-form" style="margin-right:10px;width:200px;height:30px;">
                                          <a type="button" id="zzzzPoint${vs.index }" class="btn btn-primary btn-xs" onclick="updatePoint${vs.index}()" style="margin-right: 10px;"><i id="faq__update__btnPoint${vs.index }" class="fa fa-pencil"></i></a>
                                          <a type="button" id="faq__delete__btnPoint${vs.index }" class="btn btn-danger btn-xs" onclick="deletePoint${vs.index}()"><i class="fa fa-trash"></i></a>
                                        </div>
                                        <div id="collapse14${vs.index }" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <textarea rows="3" id="faq__update__co_Point${vs.index }" class="form-control round-form"
>${faqList.fac_content}</textarea>
                                          </div>
                                        </div>
                                      </div>
<script>
function deletePoint${vs.index}(){
	var seq = $("#f_seqPoint${vs.index }").val();
	 var title = $("#faq__update__ta_Point${vs.index }").val();
	 var content = $("#faq__update__co_Cancel${vs.index }").val();
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
		    	    url: "/deleteFaq.admin",
		    	    data: JSON.stringify({"fac_seq": parseInt(seq), "fac_title":title,"fac_content":content}),
		    	    dataType: "json",
		    	    contentType: "application/json",
		    	    success: function (data) {
		    	        if (data == 1) {
			    	        Swal.fire({
			    	            icon: "success",
			    	            title: "FAQ 삭제 완료",
			    	            showConfirmButton: false,
			    	            timer: 1500
			    	        });
			    	        
		    	        }else if(data == 0){
		    	        	Swal.fire({
			    	            icon: "warning",
			    	            title: "FAQ 삭제 실패",
			    	            showConfirmButton: false,
			    	            timer: 1500
			    	        });
		    	        }
		    	    },
		    	    error: function (data) {
		    	        console.log("FAQ 삭제 통신에러");
		    	    }
		 		});//ajax end  
			  
	        $("#deletePoint${vs.index}").remove();
		  }//if (result.isConfirmed)
		})//then((result)
}

function updatePoint${vs.index}(){
// 	Swal.fire({
//         icon: "success",
//         title: "FAQ 삭제 완료",
//         showConfirmButton: false,
//         timer: 1500
//     });
     if ($("#faq__update__ta_Point${vs.index }").hasClass('active')==false) {
       $("#faq__update__ta_Point${vs.index }").addClass("active");
       $("#faq__update__btnPoint${vs.index }").removeClass("fa-pencil");
       $("#faq__update__btnPoint${vs.index }").addClass("fa-check");
       $("#zzzzPoint${vs.index }").removeClass("btn-primary");
       $("#zzzzPoint${vs.index }").addClass("btn-success");
       $("#collapse14${vs.index }").addClass("in");
     }else{
    	 var seq = $("#f_seqPoint${vs.index }").val();
    	 var title = $("#faq__update__ta_Point${vs.index }").val();
    	 var content = $("#faq__update__co_Point${vs.index }").val();
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
   			$.ajax({
	    	    type: "POST",
	    	    url: "/updateFaq.admin",
	    	    data: JSON.stringify({"fac_seq": parseInt(seq), "fac_title":title,"fac_content":content}), 
	    	    dataType: "json",
	    	    contentType: "application/json",
	    	    success: function (data) {
	    	        if (data == 1) {
		    	        Swal.fire({
		    	            icon: "success",
		    	            title: "수정 완료",
		    	            showConfirmButton: false,
		    	            timer: 1500
		    	        });
		    	        document.getElementById("PointTitle${vs.index }").innerText = title;
	    	        }else if(data == 0){
	    	        	Swal.fire({
		    	            icon: "warning",
		    	            title: "수정 실패",
		    	            showConfirmButton: false,
		    	            timer: 1500
		    	        });
	    	        }
	    	    },
	    	    error: function (data) {
	    	        console.log("FAQ 삭제 통신에러");
	    	    }
	 		});//ajax end  
   		  }//if (result.isConfirmed)
   		})//then((result)
   				
   	 //화면
   	 $("#faq__update__ta_Point${vs.index }").removeClass("active");
        $("#faq__update__btnPoint${vs.index }").addClass("fa-pencil");
        $("#faq__update__btnPoint${vs.index }").removeClass("fa-check");
        $("#zzzzPoint${vs.index }").addClass("btn-primary");
        $("#zzzzPoint${vs.index }").removeClass("btn-success");
        $("#collapse14${vs.index }").removeClass("in");
   				
   	}
     
    
     
}


</script>                                      
</c:if>
</c:forEach>
                                    </div>
                                    <!-- end accordion -->
                                  </div>
                                  
                                  <!-- /col-md-6 -->
                                </div>
                                <!-- /메뉴관리 -->
                              </div>
                              <!-- /tab-pane -->
                              <!-- 옵션편집 -->
                              <div id="faq__555" class="tab-pane">
                                <div class="row">
                                  <div class="col-md-12 no-padding">
                                    <div class="accordion" id="accordion15">
                                      <!-- 열리기1 -->
<c:forEach var="faqList" items="${faqList}" varStatus="vs">
 <c:if test="${faqList.fac_type eq 'etc'}">
                                      <!-- 열리기1 -->
                                      <div class="accordion-group" id="deleteETC${vs.index}">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" style="border-top: 0;display: inline-block;margin-right: 20px;"
                                            data-toggle="collapse" id="ETCTitle${vs.index }" data-parent="#accordion15" href="#collapse15${vs.index }">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>
                                            ${faqList.fac_title}
                                          </a>
                                          <input type="hidden" id="f_seqETC${vs.index }" value="${faqList.fac_seq}"/>
                                          <input type="text" id="faq__update__ta_ETC${vs.index }" value="${faqList.fac_title}" class="faq__update__ta form-control round-form" style="margin-right:10px;width:200px;height:30px;">
                                          <a type="button" id="zzzzETC${vs.index }" class="btn btn-primary btn-xs" onclick="updateETC${vs.index}()" style="margin-right: 10px;"><i id="faq__update__btnETC${vs.index }" class="fa fa-pencil"></i></a>
                                          <a type="button" id="faq__delete__btnETC${vs.index }" class="btn btn-danger btn-xs" onclick="deleteETC${vs.index}()"><i class="fa fa-trash"></i></a>
                                        </div>
                                        <div id="collapse15${vs.index }" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <textarea rows="3" id="faq__update__co_ETC${vs.index }" class="form-control round-form"
>${faqList.fac_content}</textarea>
                                          </div>
                                        </div>
                                      </div>
<script>
function deleteETC${vs.index}(){
	var seq = $("#f_seqETC${vs.index }").val();
	 var title = $("#faq__update__ta_ETC${vs.index }").val();
	 var content = $("#faq__update__co_Cancel${vs.index }").val();
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
		    	    url: "/deleteFaq.admin",
		    	    data: JSON.stringify({"fac_seq": parseInt(seq), "fac_title":title,"fac_content":content}),
		    	    dataType: "json",
		    	    contentType: "application/json",
		    	    success: function (data) {
		    	        if (data == 1) {
			    	        Swal.fire({
			    	            icon: "success",
			    	            title: "FAQ 삭제 완료",
			    	            showConfirmButton: false,
			    	            timer: 1500
			    	        });
			    	        
		    	        }else if(data == 0){
		    	        	Swal.fire({
			    	            icon: "warning",
			    	            title: "FAQ 삭제 실패",
			    	            showConfirmButton: false,
			    	            timer: 1500
			    	        });
		    	        }
		    	    },
		    	    error: function (data) {
		    	        console.log("FAQ 삭제 통신에러");
		    	    }
		 		});//ajax end  
			  
	        $("#deleteETC${vs.index}").remove();
		  }//if (result.isConfirmed)
		})//then((result)
}

function updateETC${vs.index}(){
// 	Swal.fire({
//         icon: "success",
//         title: "FAQ 삭제 완료",
//         showConfirmButton: false,
//         timer: 1500
//     });
     if ($("#faq__update__ta_ETC${vs.index }").hasClass('active')==false) {
       $("#faq__update__ta_ETC${vs.index }").addClass("active");
       $("#faq__update__btnETC${vs.index }").removeClass("fa-pencil");
       $("#faq__update__btnETC${vs.index }").addClass("fa-check");
       $("#zzzzETC${vs.index }").removeClass("btn-primary");
       $("#zzzzETC${vs.index }").addClass("btn-success");
       $("#collapse15${vs.index }").addClass("in");
     }else{
    	 var seq = $("#f_seqETC${vs.index }").val();
    	 var title = $("#faq__update__ta_ETC${vs.index }").val();
    	 var content = $("#faq__update__co_ETC${vs.index }").val();
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
   			$.ajax({
	    	    type: "POST",
	    	    url: "/updateFaq.admin",
	    	    data: JSON.stringify({"fac_seq": parseInt(seq), "fac_title":title,"fac_content":content}), 
	    	    dataType: "json",
	    	    contentType: "application/json",
	    	    success: function (data) {
	    	        if (data == 1) {
		    	        Swal.fire({
		    	            icon: "success",
		    	            title: "수정 완료",
		    	            showConfirmButton: false,
		    	            timer: 1500
		    	        });
		    	        document.getElementById("ETCTitle${vs.index }").innerText = title;
	    	        }else if(data == 0){
	    	        	Swal.fire({
		    	            icon: "warning",
		    	            title: "수정 실패",
		    	            showConfirmButton: false,
		    	            timer: 1500
		    	        });
	    	        }
	    	    },
	    	    error: function (data) {
	    	        console.log("FAQ 삭제 통신에러");
	    	    }
	 		});//ajax end  
   		  }//if (result.isConfirmed)
   		})//then((result)
   				
   	 //화면
   	 $("#faq__update__ta_ETC${vs.index }").removeClass("active");
        $("#faq__update__btnETC${vs.index }").addClass("fa-pencil");
        $("#faq__update__btnETC${vs.index }").removeClass("fa-check");
        $("#zzzzETC${vs.index }").addClass("btn-primary");
        $("#zzzzETC${vs.index }").removeClass("btn-success");
        $("#collapse15${vs.index }").removeClass("in");
   				
   	}
     
    
     
}


</script>                                      
</c:if>
</c:forEach>
                                    </div>
                                    <!-- end accordion -->
                                  </div>
                                  
                                  <!-- /col-md-6 -->
                                </div>
                                <!-- /메뉴관리 -->
                              </div>
                              <!-- /tab-pane -->
                            </div>
                            <!-- /tab-content -->
                          </div>
                        </div>

                        <!-- /메뉴관리 -->
                      </div>
                      <!-- /tab-pane -->
                      
                    </div>
                    <!-- /tab-content -->
                  </div>
                </div>


              </form>
            </div>
          </div>
          <!-- /row -->
        </div>
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
  <script>
  
  </script>
  
  
</body>

</html>
