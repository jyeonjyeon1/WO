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
<link href="resources/assets/images/admin/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- 테이블용 css -->
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
  <script>
  
  $(document).ready(function(){
		
		 $( 'input[name="dateOneday2"]' ).change( function() {
			 console.log("fff");
			 var si_code = $("#input_siCode").val();
			 console.log(si_code);
			 var dateOneday = $("#dateOneday").val();
			 var dateOneday2 = $("#dateOneday2").val();
		
	        
	         $.ajax({
	 	        url : "datePeriodAdmin.admin?dateOneday=" + dateOneday +"&dateOneday2="+dateOneday2 + "&si_code="+si_code,	
	 	        dataType: "html",	// 이 부분이 반환 타입을 핸들링하는 곳이다.
	 	        type: "get",
	 	        success: function(data) {
	 	        	console.log("성공");
	 	        	
	 	          $("#datatablesSimple tbody").html(data); // forprepend
	 	        
	 	        },
	 	        error: function (){alert("실패");}
	 	    });
		 });

	});
  </script>
  
  <style>
    .table15_2 thead th {
        font-size: 15px;
        font-weight:bold;
        background-color:#d8d8d8;
        color:#202020;
        border: 1px solid #d8d8d8;
        border-width:1px
    }
    .table15_2,.table15_2 th,.table15_2 td {  
        text-align:center;
        padding:4px;
        border-collapse:collapse;
    }
    
    .table15_2 tbody td {
        border: 1px solid #d8d8d8;
        border-width:1px
    }
    .table15_2 tbody tr {
        border: 1px solid #ffffff;
    }
    .table15_2 tbody tr:nth-child(odd){
        background-color:#f7f7f7;
    }
    .table15_2 tbody tr:nth-child(even){
        background-color:#ffffff;
    }
    </style>

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
          
          <li class="sub-menu dcjq-parent-li">
            <a id="statistics" class="active dcjq-parent" href="javascript:;">
              <i class=" fa fa-bar-chart-o"></i>
              <span>통계</span>
              </a>
            <ul class="sub">
               
              <li class="active"><a id="store-sales" href="store_sales.admin">매장별 매출 통계</a></li>
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
     <section class="wrapper" style="height: 1500px;">
       

  
      <div class="card-header" style="font-size: 16px;">
        <i class="fa fa-plus-circle" style="font-size: 14px; margin-bottom: 15px; "></i>지난주문 관리
        
        <div class="row" style="margin-bottom:20px;">
        <h4 style="margin:10px 0 0 15px;">매장코드를 입력해 주세요 :)</h4>
        <div class="col-lg-4">
        <input class="form-control" type="text" id="input_siCode" placeholder="매장코드">
        </div>
        </div>
        
        <div class="row">
        <h4 style="margin:10px 0 0 15px;">기간을 설정해 주세요 :)</h4>
        <div class="col-lg-3" style="margin-bottom: 20px;"> 
<input id="dateOneday" name="dateOneday" class="form-control round-form" type="date" value="년.월.일" style="width: 70%; display: inline-block; float:left;"> 
                        
</div>
<div class="col-lg-3" style="margin-bottom: 20px;"> 
<input id="dateOneday2" name="dateOneday2" class="form-control round-form" type="date" value="년.월.일" style="width: 70%; display: inline-block; float:left;"> 
                        
</div>
        
      </div>

    
      
          <div class="row content-panel" style="border: none; box-shadow: none;padding: 40px; margin:0 5px">
            
 
                                           
  <div class="row">

    <div class="col-lg-12" >
      <table id="datatablesSimple">
      <thead>
          <tr>
            <th>주문번호</th>
            <th>주문시간</th>
            <th>주문내역</th>
            <th>결제금액</th>
            <th>닉네임</th>
            <th>내역 확인</th>
              
          </tr>
      </thead>
      <tfoot>
        <tr>
          <th>주문번호</th>
          <th>주문시간</th>
          <th>주문내역</th>
          <th>결제금액</th>
          <th>닉네임</th>
          <th>내역 확인</th>
      </tr>
      </tfoot>
      <tbody>
      		
        
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
		<%@ include file="../inc/admin_footer.jsp" %>
    <!--footer end-->
  </section>
 
 <script
		src="https://cdn.jsdelivr.net/npm/simple-datatables@3.2.0/dist/umd/simple-datatables.js"></script>
	<script
		src="resources/assets/js/admin/datatable/datatables-simple-demo.js"></script>
	
</body>

</html>
