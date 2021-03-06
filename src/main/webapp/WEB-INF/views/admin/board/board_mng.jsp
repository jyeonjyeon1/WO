<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>워킹오더 관리자 페이지</title>

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
            <a href="../index.html">
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
              <li><a id="user-mng" href="../user/user_mng.html">회원 관리</a></li>
              <li><a id="coupon-mng" href="../user/coupon_mng.html">쿠폰 관리</a></li>
              <li><a id="point-mng" href="../user/point_mng.html">포인트 관리</a></li>
              <li><a id="connect-hist" href="../user/connect_hist.html">접속 이력</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a id="store-manage" href="javascript:;">
              <i class="fa fa-group" style="font-size: 12px;"></i>
              <span>매장 관리</span>
              </a>
            <ul class="sub">
              <li><a id="store-mng" href="../store/store_mng.html">매장 관리</a></li>
              <li><a id="store-menu" href="../store/store_menu.html">매장 메뉴 관리</a></li>
              <li><a id="store-pending" href="../store/store_pending.html">승인 대기</a></li>
              <li><a id="join-inq" href="../store/join_inq.html">입점 문의</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a id="order-manage" href="javascript:;">
              <i class="fa fa-shopping-cart"></i>
              <span>주문 관리</span>
              </a>
            <ul class="sub">
              <li><a id="total-order" href="../order/total_order.html">전체 주문 관리</a></li>
              <li><a id="store-order" href="../order/store_order.html">매장별 주문 관리</a></li>
              <li><a id="cancel-order" href="../order/cancel_order.html">취소 주문 관리</a></li>
              <li><a id="refund-order" href="../order/refund_order.html">환불 주문 관리</a></li>
            </ul>
          </li>
          <li class="sub-menu dcjq-parent-li">
            <a id="board-manage" class="active dcjq-parent" href="javascript:;">
              <i class="fa fa-pencil-square-o" style="font-size: 13px;"></i>
              <span>보드 관리</span>
              </a>
            <ul class="sub">
              <li><a id="notices" href="../board/notices.html">공지사항</a></li>
              <li><a id="faq-mng" href="../board/faq_mng.html">FAQ 관리</a></li>
              <li class="active"><a id="board-mng" href="../board/board_mng.html">게시판 관리</a></li>
              <li><a id="review-mng" href="../board/review_mng.html">리뷰 관리</a></li>
              <li><a id="inquiry" href="../board/inquiry.html">1:1 문의</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a id="page-manage" href="javascript:;">
              <i class="fa fa-sticky-note"></i>
              <span>페이지 관리</span>
              </a>
            <ul class="sub">
              <li><a id="banner-mng" href="../page/banner_mng.html">배너 관리</a></li>
              <li><a id="banner-mng" href="../page/drink_recom.html">오늘의 음료</a></li>
              <li><a id="banner-mng" href="../page/searchbar_mng.html">검색어 관리</a></li>
              <li><a id="terms-mng" href="../page/terms_mng.html">약관 관리</a></li>
              <li><a id="policy-mng" href="../page/policy_mng.html">정책 관리</a></li>
              <li><a id="doc-form" href="../page/doc_form.html">증빙서류</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a id="mess" href="javascript:;">
              <i class="fa fa-envelope-open-o" style="font-size: 13px;"></i>
              <span>메세지 관리</span>
              </a>
            <ul class="sub">
              <li><a id="ka-tmplt" href="../message/ka_tmplt.html">알림톡 템플릿</a></li>
              <li><a id="ka-hist" href="../message/ka_hist.html">알림톡 전송이력</a></li>
              <li><a id="mess-send" href="../message/mess_send.html">문자 전송</a></li>
              <li><a id="mess-send-group" href="../message/mess_send_group.html">단체 문자 전송</a></li>
              <li><a id="mess-hist" href="../message/mess_hist.html">문자 전송 이력</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a id="settlement" href="javascript:;">
              <i class=" fa fa-krw"></i>
              <span>정산</span>
              </a>
            <ul class="sub">
              <li><a id="pg-comm" href="../settlement/pg_comm.html">PG 수수료</a></li>
              <li><a id="pg-stlmt" href="../settlement/pg_stlmt.html">PG 정산</a></li>
              <li><a id="store-rev" href="../settlement/store_rev.html">매장별 수익</a></li>
              <li><a id="store-stlmt" href="../settlement/store_stlmt.html">매장별 정산</a></li>
              <li><a id="stlmt-hist" href="../settlement/stlmt_hist.html">정산 내역</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a id="statistics" href="javascript:;">
              <i class=" fa fa-bar-chart-o"></i>
              <span>통계</span>
              </a>
            <ul class="sub">
              <li><a id="order-period" href="../statistics/order_period.html">기간별 주문 통계</a></li>
              <li><a id="store-sales" href="../statistics/store_sales.html">매장별 매출 통계</a></li>
              <li><a id="user-sales" href="../statistics/user_sales.html">사용자별 매출 통계</a></li>
              <li><a id="by-chart" href="../statistics/by_chart.html">표로 확인</a></li>
              <li><a id="by-graph" href="../statistics/by_graph.html">그래프로 확인</a></li>
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
        <h3><i class="fa fa-angle-right"></i> 게시판</h3>
        <div class="row mt">
          <div class="col-lg-12">
            <p>아 맞다 이거 안하기로 했지?</p>
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
 
  <!--script for this page-->
  
  
</body>

</html>