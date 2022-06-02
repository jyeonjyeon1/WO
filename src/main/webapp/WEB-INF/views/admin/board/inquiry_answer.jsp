<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  

</head>

<body>
	<script>
	 	function submit_no_sms() {
	 		document.postForm.submit();
	    }
	 	
	 	function submit_sms() {
	 		document.postForm.submit();
	    }
	</script>
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
          <h5 class="centered">${adminSession.a_name}</h5>
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
              <li><a id="faq-mng" href="faq_mng.admin">FAQ 관리</a></li>
              
              <li><a id="review-mng" href="review_mng.admin">리뷰 관리</a></li>
              <li class="active"><a id="inquiry" href="inquiry.admin">1:1 문의</a></li>
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
    <!-- allmenu import -->
    
      <section class="wrapper site-min-height">
        <h3><i class="fa fa-angle-right"></i> 1:1 답변 등록</h3>
        <div class="row mt">
          <div class="col-lg-8" style="min-width: 400px;">
            <div class="card-header" style="font-size: 16px;">
              <i class="fa fa-plus-circle" style="font-size: 14px;"></i>
              1:1 문의
            </div>
            
            <div class="form-panel" style="margin-top:0; padding-bottom: 38px; border-radius: 0 0 10px 10px;">
              <c:forEach var="adminanswerList" items="${adminanswerList}" varStatus="vs">
              <form name="getForm" class="form-horizontal style-form" method="get">
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">작성자</label>

                  <div class="col-sm-3 col-sm-4 col-sm-4">
                    <input type="text" class="form-control round-form" value="${adminanswerList.u_id}" readonly> 
                  </div>
                  <div class="col-sm-3 col-sm-4 col-sm-4">
                    <input type="text" class="form-control round-form" value="${adminanswerList.u_name}" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">전화번호</label>
                  <div class="col-sm-6">
                    <input class="form-control" type="text" value="${adminanswerList.u_tel}" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">문의 제목</label>
                  <div class="col-sm-6">
                    <input class="form-control" type="text" value="${adminanswerList.qa_title}" readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">문의 내용</label>
                  <div class="col-sm-10">
                   <textarea class="form-control" rows="10" style="width: 98%;" readonly>${adminanswerList.qa_content_q}
                  </textarea>
                  </div>
                </div>
                <div class="form-group" style="border-bottom: 5px solid #eaeaea;">
                  <label class="col-sm-2 col-sm-2 control-label">등록시간</label>
                  <div class="col-sm-10">
                    <input class="form-control round-form" type="text" value="${adminanswerList.qa_date_q.substring(0,19)}"
                      style="width: 30%;display: inline-block;margin-right: 10px; min-width: 173px;" readonly>

                  </div>
                </div>
            </form>
            
            
            <form name="postForm" class="form-horizontal style-form" method="post" action="/addanswer.admin">
                <!-- 답변 -->
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">답변</label>
                  <div class="col-sm-10">
                   <textarea class="form-control" rows="10" style="width: 98%;" id="qa_content_a" name="qa_content_a" placeholder="답변내용을 입력하세요">${adminanswerList.qa_content_a}</textarea>
                  </div>
                </div>
                <input type="hidden" class="form-control round-form" name="qa_seq" value="${adminanswerList.qa_seq }" readonly>
                <input type="hidden" class="form-control" name="u_tel" value="${adminanswerList.u_tel}" readonly>
				<input type="hidden" class="form-control" name="qa_title" value="${adminanswerList.qa_title}" readonly>

                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">답변일시</label>
                  <div class="col-sm-10">
                    <input class="form-control round-form" type="text" value="${adminanswerList.qa_date_a.substring(0,19)}"
                    style="width: 30%;display: inline-block;margin-right: 10px; "readonly> 

                  </div>
                </div>

                <button type="button" onclick="window.history.back()" class="btn grey__button"
                  style="width:70px;float: right; margin-left: 10px;">뒤로</button>
                <button type="button" onclick="submit_no_sms()" class="btn btn-theme"
                  style="width:130px;float: right;margin-left: 10px; height: 30px; font-size: 12px;">
                  완료 (문자 미발송)
                </button>
                <button type="button" onclick="submit_sms()" class="btn btn-theme"
                style="width:110px;float: right;margin-left: 10px; height: 30px; font-size: 12px;">
                  완료 (문자발송)
                </button>
                <button type="button" onclick="location.href='inquiry.html'" class="btn btn-theme"
                style="width:70px;float: right;margin-left: 10px; height: 30px; font-size: 12px;">
                  임시저장
                </button>
              </form>
              </c:forEach>
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
  
  
</body>

</html>
    