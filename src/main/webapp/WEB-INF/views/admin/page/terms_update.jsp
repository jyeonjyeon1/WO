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
  <title>워킹오더 약관 수정</title>

  <!-- Favicons -->
  <link href="resources/assets/images/admin/logo/logo_only.svg" rel="icon">
  <!-- 테이블용 css -->
  <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />

</head>

<script>
	function update() {
		var t_code = $("#t_code_input").val();
		var t_title = $("#t_title_input").val();
		var t_content = $("#t_content_input").val();
		var t_enfdate = $("#t_enfdate_input").val();
		var t_regdate = $("#t_regdate_input").val();
		
		param = {
			"t_code" : 	t_code,
			"t_title" : 	t_title,
			"t_content" : 	t_content,
			"t_enfdate" : 	t_enfdate,
			"t_regdate" : 	t_regdate
				
		}
		console.log(t_regdate);
		
		$.ajax({
	 	    	    type: "POST",
	 	    	    url: "/updateTerms.admin",
	 	    	    data: JSON.stringify(param), 
	 	    	    dataType: "json",
	 	    	    contentType: "application/json",
	 	    	    success: function (data) {
	 	    	        if (data == 1) {
	 	    	        	
	 		    	        Swal.fire({
	 		    	            icon: "success",
	 		    	            title: "약관수정 완료",
	 		    	            showConfirmButton: false,
	 		    	            timer: 1500
	 		    	        });
	 		    	        location.href="/terms_mng.admin";
	 		    	        
	 		    	  
	 	    	        }else{alert("통신은됨");}
	 	    	    },
	 	    	    error: function (data) {
	 	    	        console.log("품절 상태 변화 통신에러");
	 	    	    }
	 		});//ajax end
		
		
	}

</script>

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
              <li><a id="banner-mng" href="drink_recom.admin">오늘의 음료</a></li>
              <li><a id="banner-mng" href="searchbar_mng.admin">검색어 관리</a></li>
              <li class="active"><a id="terms-mng" href="terms_mng.admin">약관 관리</a></li>
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
        <h3><i class="fa fa-angle-right"></i> 약관 수정</h3>
        <div class="row mt">
          <div class="col-lg-8" style="min-width: 400px;">
            <div class="card-header" style="font-size: 16px;">
              <i class="fa fa-plus-circle" style="font-size: 14px;"></i>
              약관 수정
            </div>
            <div class="form-panel" style="margin-top:0; padding-bottom: 38px; border-radius: 0 0 10px 10px;">
              <form class="form-horizontal style-form" method="get">
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">약관코드</label>

                  <div class="col-sm-4 col-sm-4 col-sm-4">
                    <input type="text" id="t_code_input" class="form-control round-form" placeholder="약관코드" value="${termsOne.t_code }" disabled="disabled"/>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">약관명</label>
                  <div class="col-sm-6">
                    <input id = "t_title_input" class="form-control" type="text" placeholder="약관명" value="${termsOne.t_title }">
                    
                  </div>
                  <!--
                    id="focusedInput" 빨간 테두리
                    id="disabledInput" 못고치는거
                  -->
                </div>
                <div class="form-group">
                  <div class="col-lg-12">
                    <textarea rows="8" id="t_content_input" class="form-control" placeholder="약관내용을 입력하세요">
					${termsOne.t_content }
                      

                    </textarea>
                  </div>
                </div>


                <div class="form-group">
                  <label class="col-lg-3 control-label">등록날짜</label>
                  <div class="col-lg-9">
                    
                   
                    <input class="form-control round-form" id="t_regdate_input" type="date" value="<fmt:formatDate value="${termsOne.t_regdate }" pattern="yyyy-MM-dd"/>"
                      style="width: 30%;  ;display: inline-block;" > 
					
                  </div>
                </div>
                
                    <div class="form-group">
                  <label class="col-lg-3 control-label">마지막 수정날짜</label>
                  <div class="col-lg-9">
                    
                    
                    <input class="form-control round-form" type="date"  id="t_enfdate_input"  value="<fmt:formatDate value="${termsOne.t_enfdate }" pattern="yyyy-MM-dd"/>" 
                      style="width: 30%;display: inline-block;">

                  </div>


                  <!--
                    id="focusedInput" 빨간 테두리
                    id="disabledInput" 못고치는거
                  -->
                </div>

                <button type="button" onclick="window.history.back()" class="btn btn-theme"
                  style="width:70px;float: right; margin-left: 10px;" >뒤로</button>
                <button type="button" onclick="update()" class="btn btn-theme"
                  style="width:70px;float: right;">
                  수정
                </button>
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
  
  
</body>

</html>
