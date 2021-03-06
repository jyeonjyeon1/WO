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
          <li class="sub-menu dcjq-parent-li">
            <a id="statistics" class="active dcjq-parent" href="javascript:;">
              <i class=" fa fa-bar-chart-o"></i>
              <span>통계</span>
              </a>
            <ul class="sub">
              <li><a id="order-period" href="order_period.admin">기간별 주문 통계</a></li>
              <li><a id="store-sales" href="store_sales.admin">매장별 매출 통계</a></li>
              <li><a id="user-sales" href="user_sales.admin">사용자별 매출 통계</a></li>
              <li><a id="by-chart" href="by_chart.admin">표로 확인</a></li>
              <li class="active"><a id="by-graph" href="by_graph.admin">그래프로 확인</a></li>
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
        <h3><i class="fa fa-angle-right"></i> 그래프로 확인(토끼)</h3>
        <!-- page start-->
        <div id="morris">
          <div class="row mt">
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> 차트 1</h4>
                <div class="panel-body">
                  <div id="hero-graph" class="graph" style="position: relative; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></div>
                  <svg height="342" version="1.1" width="100%" xmlns="http://www.w3.org/2000/svg" style="overflow: hidden; position: relative; left: -0.999995px; top: -0.193177px;"><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.1.0</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs><text x="42.47159004211426" y="306.54545497894287" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="4.090951442718506" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">0</tspan></text><path fill="none" stroke="#aaaaaa" d="M54.97159004211426,306.5H530" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="42.47159004211426" y="236.15909123420715" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="4.090924978256226" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">1,000</tspan></text><path fill="none" stroke="#aaaaaa" d="M54.97159004211426,236.5H530" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="42.47159004211426" y="165.77272748947144" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="4.09092903137207" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2,000</tspan></text><path fill="none" stroke="#aaaaaa" d="M54.97159004211426,165.5H530" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="42.47159004211426" y="95.38636374473575" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="4.090917825698881" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">3,000</tspan></text><path fill="none" stroke="#aaaaaa" d="M54.97159004211426,95.5H530" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="42.47159004211426" y="25" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="4.090909481048584" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">4,000</tspan></text><path fill="none" stroke="#aaaaaa" d="M54.97159004211426,25.5H530" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="475.03242684773033" y="319.04545497894287" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7.7273)"><tspan dy="4.090951442718506" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2011</tspan></text><text x="392.467965116955" y="319.04545497894287" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7.7273)"><tspan dy="4.090951442718506" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2010</tspan></text><text x="309.9035033861796" y="319.04545497894287" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7.7273)"><tspan dy="4.090951442718506" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2009</tspan></text><text x="227.11283765066236" y="319.04545497894287" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7.7273)"><tspan dy="4.090951442718506" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2008</tspan></text><text x="144.548375919887" y="319.04545497894287" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7.7273)"><tspan dy="4.090951442718506" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2007</tspan></text><text x="61.983914189111616" y="319.04545497894287" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7.7273)"><tspan dy="4.090951442718506" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2006</tspan></text><path fill="none" stroke="#ed5565" d="M220.100513503665,262.90590945720675C240.79817993754432,261.8325174100995,282.19351280530293,259.10571982941815,302.89117923918224,258.61234126877787C323.53229467187606,258.1203107369918,364.81452553726376,258.7883071781397,385.4556409699576,258.9642730875015C406.0967564026514,259.14023899686333,447.37898726803917,259.20134364231205,468.020102700733,260.02006854367255C473.1096928074246,260.22194591661076,483.2888730208079,262.7682306358159,488.3784631274995,263.0466821846962C493.58115523656204,263.3313215457738,503.9865394546872,262.64196059316396,509.18923156374973,262.2724321835041C514.3919236728123,261.9029037738443,524.7973078909374,260.63594922643904,530,260.0904549074173" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><path fill="none" stroke="#4ecdc4" d="M54.97159004211426,75.04470462250711C75.61270547480811,75.81895462369921,116.89493634019578,77.58741201278569,137.53605177288964,78.14170462727549C158.1771672055835,78.69599724176528,199.45939807097116,78.68828218376933,220.100513503665,79.47904553842548C240.79817993754432,80.27197536802589,282.19351280530293,83.99190913510145,302.89117923918224,84.4764773643017C323.53229467187606,84.95972163659157,364.81452553726376,84.1509404319823,385.4556409699576,83.35029554438594C406.0967564026514,82.54965065678957,447.37898726803917,79.45468102789843,468.020102700733,78.07131826353074C473.1096928074246,77.73021511615241,483.2888730208079,77.36610104216521,488.3784631274995,76.45243189740182C493.58115523656204,75.5184589938659,503.9865394546872,71.8949148449302,509.18923156374973,70.68075007033352C514.3919236728123,69.46658529573682,524.7973078909374,67.7245227930546,530,66.73911370062831" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><circle cx="220.100513503665" cy="262.90590945720675" r="4" fill="#ed5565" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="302.89117923918224" cy="258.61234126877787" r="4" fill="#ed5565" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="385.4556409699576" cy="258.9642730875015" r="4" fill="#ed5565" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="468.020102700733" cy="260.02006854367255" r="4" fill="#ed5565" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="488.3784631274995" cy="263.0466821846962" r="4" fill="#ed5565" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="509.18923156374973" cy="262.2724321835041" r="4" fill="#ed5565" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="530" cy="260.0904549074173" r="4" fill="#ed5565" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="54.97159004211426" cy="75.04470462250711" r="7" fill="#4ecdc4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="137.53605177288964" cy="78.14170462727549" r="4" fill="#4ecdc4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="220.100513503665" cy="79.47904553842548" r="4" fill="#4ecdc4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="302.89117923918224" cy="84.4764773643017" r="4" fill="#4ecdc4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="385.4556409699576" cy="83.35029554438594" r="4" fill="#4ecdc4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="468.020102700733" cy="78.07131826353074" r="4" fill="#4ecdc4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="488.3784631274995" cy="76.45243189740182" r="4" fill="#4ecdc4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="509.18923156374973" cy="70.68075007033352" r="4" fill="#4ecdc4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="530" cy="66.73911370062831" r="4" fill="#4ecdc4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle></svg>
                  <div class="morris-hover morris-default-style" style="left: 0px; top: 13px;"><div class="morris-hover-row-label">2006 Q4</div><div class="morris-hover-point" style="color: #689bc3">
                    Licensed:
                    3,245
                  </div><div class="morris-hover-point" style="color: #a2b3bf">
                    Off the road:
                    -
                  </div></div>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> 차트 2</h4>
                <div class="panel-body">
                  <div id="hero-bar" class="graph" style="position: relative; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><svg height="342" version="1.1" width="555" xmlns="http://www.w3.org/2000/svg" style="overflow: hidden; position: relative; left: -0.545436px; top: -0.193177px;"><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.1.0</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs><text x="41.56249809265137" y="273.165955899193" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="4.090938446953032" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">0</tspan></text><path fill="none" stroke="#aaaaaa" d="M54.06249809265137,273.5H530" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="41.56249809265137" y="211.12446692439477" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="4.090907602037589" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">500</tspan></text><path fill="none" stroke="#aaaaaa" d="M54.06249809265137,211.5H530" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="41.56249809265137" y="149.0829779495965" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="4.0909225334893335" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">1,000</tspan></text><path fill="none" stroke="#aaaaaa" d="M54.06249809265137,149.5H530" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="41.56249809265137" y="87.04148897479826" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="4.090914576757484" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">1,500</tspan></text><path fill="none" stroke="#aaaaaa" d="M54.06249809265137,87.5H530" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="41.56249809265137" y="25" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="4.090909481048584" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2,000</tspan></text><path fill="none" stroke="#aaaaaa" d="M54.06249809265137,25.5H530" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="490.33854150772095" y="285.665955899193" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(0.8192,-0.5736,0.5736,0.8192,-94.364,352.8758)"><tspan dy="4.090938446953032" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">iPhone 5</tspan></text><text x="411.01562452316284" y="285.665955899193" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(0.8192,-0.5736,0.5736,0.8192,-111.3797,309.2479)"><tspan dy="4.090938446953032" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">iPhone 4S</tspan></text><text x="331.69270753860474" y="285.665955899193" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(0.8192,-0.5736,0.5736,0.8192,-123.2658,262.2597)"><tspan dy="4.090938446953032" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">iPhone 4</tspan></text><text x="252.36979055404663" y="285.665955899193" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(0.8192,-0.5736,0.5736,0.8192,-143.5205,220.6681)"><tspan dy="4.090938446953032" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">iPhone 3GS</tspan></text><text x="173.04687356948853" y="285.665955899193" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(0.8192,-0.5736,0.5736,0.8192,-155.1955,173.3005)"><tspan dy="4.090938446953032" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">iPhone 3G</tspan></text><text x="93.72395658493042" y="285.665955899193" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(0.8192,-0.5736,0.5736,0.8192,-161.6577,122.2829)"><tspan dy="4.090938446953032" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">iPhone</tspan></text><rect x="63.97786271572113" y="256.2906708980479" width="59.49218773841858" height="16.87528500114513" r="0" rx="0" ry="0" fill="#ac92ec" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="143.30077970027924" y="256.1665879200983" width="59.49218773841858" height="16.9993679790947" r="0" rx="0" ry="0" fill="#ac92ec" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="222.62369668483734" y="239.043136963054" width="59.49218773841858" height="34.122818936139026" r="0" rx="0" ry="0" fill="#ac92ec" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="301.94661366939545" y="226.01442427834635" width="59.49218773841858" height="47.15153162084667" r="0" rx="0" ry="0" fill="#ac92ec" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="381.26953065395355" y="191.8916053422073" width="59.49218773841858" height="81.27435055698572" r="0" rx="0" ry="0" fill="#ac92ec" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect><rect x="460.59244763851166" y="78.2315975403769" width="59.49218773841858" height="194.93435835881613" r="0" rx="0" ry="0" fill="#ac92ec" stroke="none" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect></svg><div class="morris-hover morris-default-style" style="left: 0px; top: 174px; display: block;"><div class="morris-hover-row-label">iPhone 5</div><div class="morris-hover-point" style="color: #ac92ec">
  Geekbench:
  1,571
</div></div></div>
                </div>
              </div>
            </div>
          </div>
          <div class="row mt">
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> 차트 3</h4>
                <div class="panel-body">
                  <div id="hero-area" class="graph" style="position: relative; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><svg height="342" version="1.1" width="100%" xmlns="http://www.w3.org/2000/svg" style="overflow: hidden; position: relative; left: -0.999995px; top: -0.502825px;"><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.1.0</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs><text x="48.18181610107422" y="306.54545497894287" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="4.090951442718506" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">0</tspan></text><path fill="none" stroke="#aaaaaa" d="M60.68181610107422,306.5H530" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="48.18181610107422" y="236.15909123420715" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="4.090924978256226" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">7,500</tspan></text><path fill="none" stroke="#aaaaaa" d="M60.68181610107422,236.5H530" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="48.18181610107422" y="165.77272748947144" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="4.09092903137207" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">15,000</tspan></text><path fill="none" stroke="#aaaaaa" d="M60.68181610107422,165.5H530" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="48.18181610107422" y="95.38636374473572" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="4.0909178256988525" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">22,500</tspan></text><path fill="none" stroke="#aaaaaa" d="M60.68181610107422,95.5H530" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="48.18181610107422" y="25" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan dy="4.090909481048584" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">30,000</tspan></text><path fill="none" stroke="#aaaaaa" d="M60.68181610107422,25.5H530" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="443.32155048282294" y="319.04545497894287" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7.7273)"><tspan dy="4.090951442718506" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2012</tspan></text><text x="235.17922105012804" y="319.04545497894287" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7.7273)"><tspan dy="4.090951442718506" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2011</tspan></text><path fill="#cee1b5" stroke="none" d="M60.68181610107422,256.6837549021721C73.79763412012075,251.52208822755813,100.0292701582138,240.81045677167177,113.14508817726033,236.03708820371628C126.26090619630686,231.2637196357608,152.49254223439993,225.03132764694652,165.60836025344645,218.49680635852815C178.58161503315551,212.03331247541865,204.52812459257365,185.97365277170437,217.5013793722827,184.04502751760484C230.33207091265433,182.1375959476163,255.9934539933975,201.74987938469138,268.8241455337691,203.15257906217576C281.93996355281564,204.58644984360424,308.1715995909087,194.43640101845267,321.28741760995524,195.39130935325625C334.40323562900176,196.34621768805982,360.63487166709484,227.7426770467164,373.75068968614136,210.7918457406044C386.7239444658504,194.0252626008632,412.67045402526855,68.70054703698159,425.6437088049776,60.5216515698433C438.6169635846867,52.34275610270501,464.5634731441048,133.36821745034243,477.5367279238139,145.36068200349808C490.6525459428604,157.4849318814137,516.8841819809535,154.08155247147084,530,156.98850929412842L530,306.54545497894287L60.68181610107422,306.54545497894287Z" fill-opacity="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 0.5;"></path><path fill="none" stroke="#a9d86e" d="M60.68181610107422,256.6837549021721C73.79763412012075,251.52208822755813,100.0292701582138,240.81045677167177,113.14508817726033,236.03708820371628C126.26090619630686,231.2637196357608,152.49254223439993,225.03132764694652,165.60836025344645,218.49680635852815C178.58161503315551,212.03331247541865,204.52812459257365,185.97365277170437,217.5013793722827,184.04502751760484C230.33207091265433,182.1375959476163,255.9934539933975,201.74987938469138,268.8241455337691,203.15257906217576C281.93996355281564,204.58644984360424,308.1715995909087,194.43640101845267,321.28741760995524,195.39130935325625C334.40323562900176,196.34621768805982,360.63487166709484,227.7426770467164,373.75068968614136,210.7918457406044C386.7239444658504,194.0252626008632,412.67045402526855,68.70054703698159,425.6437088049776,60.5216515698433C438.6169635846867,52.34275610270501,464.5634731441048,133.36821745034243,477.5367279238139,145.36068200349808C490.6525459428604,157.4849318814137,516.8841819809535,154.08155247147084,530,156.98850929412842" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><circle cx="60.68181610107422" cy="256.6837549021721" r="5" fill="#a9d86e" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="113.14508817726033" cy="236.03708820371628" r="5" fill="#a9d86e" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="165.60836025344645" cy="218.49680635852815" r="5" fill="#a9d86e" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="217.5013793722827" cy="184.04502751760484" r="5" fill="#a9d86e" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="268.8241455337691" cy="203.15257906217576" r="5" fill="#a9d86e" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="321.28741760995524" cy="195.39130935325625" r="5" fill="#a9d86e" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="373.75068968614136" cy="210.7918457406044" r="5" fill="#a9d86e" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="425.6437088049776" cy="60.5216515698433" r="5" fill="#a9d86e" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="477.5367279238139" cy="145.36068200349808" r="5" fill="#a9d86e" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="530" cy="156.98850929412842" r="5" fill="#a9d86e" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><path fill="#f6c4c0" stroke="none" d="M60.68181610107422,281.5254488798141C73.79763412012075,275.8804625074863,100.0292701582138,263.89014544357065,113.14508817726033,258.94550339050295C126.26090619630686,254.00086133743525,152.49254223439993,244.67176422297212,165.60836025344645,241.96831245527267C178.58161503315551,239.2942460328743,204.52812459257365,239.6094100449774,217.5013793722827,237.43543063011168C230.33207091265433,235.2853410989258,255.9934539933975,227.68743490248224,268.8241455337691,224.67203667106628C281.93996355281564,221.5896295900633,308.1715995909087,212.916340819633,321.28741760995524,213.04420938043594C334.40323562900176,213.17207794123888,360.63487166709484,238.76048918489238,373.75068968614136,225.69498515748978C386.7239444658504,212.77149747821113,412.67045402526855,116.75097135338785,425.6437088049776,109.08824255371096C438.6169635846867,101.42551375403406,464.5634731441048,156.3487882755909,477.5367279238139,164.39315476007462C490.6525459428604,172.52592087625598,516.8841819809535,171.44586840729716,530,173.7967729563713L530,306.54545497894287L60.68181610107422,306.54545497894287Z" fill-opacity="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 0.5;"></path><path fill="none" stroke="#ff6c60" d="M60.68181610107422,281.5254488798141C73.79763412012075,275.8804625074863,100.0292701582138,263.89014544357065,113.14508817726033,258.94550339050295C126.26090619630686,254.00086133743525,152.49254223439993,244.67176422297212,165.60836025344645,241.96831245527267C178.58161503315551,239.2942460328743,204.52812459257365,239.6094100449774,217.5013793722827,237.43543063011168C230.33207091265433,235.2853410989258,255.9934539933975,227.68743490248224,268.8241455337691,224.67203667106628C281.93996355281564,221.5896295900633,308.1715995909087,212.916340819633,321.28741760995524,213.04420938043594C334.40323562900176,213.17207794123888,360.63487166709484,238.76048918489238,373.75068968614136,225.69498515748978C386.7239444658504,212.77149747821113,412.67045402526855,116.75097135338785,425.6437088049776,109.08824255371096C438.6169635846867,101.42551375403406,464.5634731441048,156.3487882755909,477.5367279238139,164.39315476007462C490.6525459428604,172.52592087625598,516.8841819809535,171.44586840729716,530,173.7967729563713" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><circle cx="60.68181610107422" cy="281.5254488798141" r="5" fill="#ff6c60" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="113.14508817726033" cy="258.94550339050295" r="5" fill="#ff6c60" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="165.60836025344645" cy="241.96831245527267" r="5" fill="#ff6c60" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="217.5013793722827" cy="237.43543063011168" r="5" fill="#ff6c60" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="268.8241455337691" cy="224.67203667106628" r="5" fill="#ff6c60" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="321.28741760995524" cy="213.04420938043594" r="5" fill="#ff6c60" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="373.75068968614136" cy="225.69498515748978" r="5" fill="#ff6c60" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="425.6437088049776" cy="109.08824255371096" r="5" fill="#ff6c60" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="477.5367279238139" cy="164.39315476007462" r="5" fill="#ff6c60" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="530" cy="173.7967729563713" r="5" fill="#ff6c60" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><path fill="#86aac8" stroke="none" d="M60.68181610107422,281.5254488798141C73.79763412012075,281.2626731218338,100.0292701582138,283.10914206407074,113.14508817726033,280.4743458478928C126.26090619630686,277.8395496317148,152.49254223439993,261.6136209471859,165.60836025344645,260.4470791503906C178.58161503315551,259.2932171557344,204.52812459257365,273.43158739907835,217.5013793722827,271.19273068208696C230.33207091265433,268.9784767861614,255.9934539933975,244.842525438386,268.8241455337691,242.63463669872283C281.93996355281564,240.37768376484493,308.1715995909087,250.99888292372225,321.28741760995524,253.33336398792267C334.40323562900176,255.66784505212308,360.63487166709484,272.40147865546646,373.75068968614136,261.31048521232606C386.7239444658504,250.3400460457415,412.67045402526855,171.97024681719543,425.6437088049776,165.08763354902268C438.6169635846867,158.20502028084994,464.5634731441048,198.50155327674014,477.5367279238139,206.24957906694414C490.6525459428604,214.0827479976998,516.8841819809535,222.12170409138204,530,227.41241243286134L530,306.54545497894287L60.68181610107422,306.54545497894287Z" fill-opacity="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 0.5;"></path><path fill="none" stroke="#4a8bc2" d="M60.68181610107422,281.5254488798141C73.79763412012075,281.2626731218338,100.0292701582138,283.10914206407074,113.14508817726033,280.4743458478928C126.26090619630686,277.8395496317148,152.49254223439993,261.6136209471859,165.60836025344645,260.4470791503906C178.58161503315551,259.2932171557344,204.52812459257365,273.43158739907835,217.5013793722827,271.19273068208696C230.33207091265433,268.9784767861614,255.9934539933975,244.842525438386,268.8241455337691,242.63463669872283C281.93996355281564,240.37768376484493,308.1715995909087,250.99888292372225,321.28741760995524,253.33336398792267C334.40323562900176,255.66784505212308,360.63487166709484,272.40147865546646,373.75068968614136,261.31048521232606C386.7239444658504,250.3400460457415,412.67045402526855,171.97024681719543,425.6437088049776,165.08763354902268C438.6169635846867,158.20502028084994,464.5634731441048,198.50155327674014,477.5367279238139,206.24957906694414C490.6525459428604,214.0827479976998,516.8841819809535,222.12170409138204,530,227.41241243286134" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><circle cx="60.68181610107422" cy="281.5254488798141" r="5" fill="#4a8bc2" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="113.14508817726033" cy="280.4743458478928" r="5" fill="#4a8bc2" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="165.60836025344645" cy="260.4470791503906" r="5" fill="#4a8bc2" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="217.5013793722827" cy="271.19273068208696" r="5" fill="#4a8bc2" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="268.8241455337691" cy="242.63463669872283" r="5" fill="#4a8bc2" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="321.28741760995524" cy="253.33336398792267" r="5" fill="#4a8bc2" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="373.75068968614136" cy="261.31048521232606" r="5" fill="#4a8bc2" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="425.6437088049776" cy="165.08763354902268" r="5" fill="#4a8bc2" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="477.5367279238139" cy="206.24957906694414" r="5" fill="#4a8bc2" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="530" cy="227.41241243286134" r="5" fill="#4a8bc2" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle></svg><div class="morris-hover morris-default-style" style="left: 0px; top: 142px; display: none;"><div class="morris-hover-row-label">2012 Q2</div><div class="morris-hover-point" style="color: #689bc3">
  iPhone:
  8,432
</div><div class="morris-hover-point" style="color: #a2b3bf">
  iPad:
  5,713
</div><div class="morris-hover-point" style="color: #64b764">
  iPod Touch:
  1,791
</div></div></div>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i> 차트 4</h4>
                <div class="panel-body">
                 <div id="hero-donut" class="graph"><svg height="342" version="1.1" width="100%" xmlns="http://www.w3.org/2000/svg" style="overflow: hidden; position: relative; left: -0.545436px; top: -0.502825px;"><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.1.0</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs><path fill="none" stroke="#3498db" d="M277.5,282.5A109,109,0,0,0,386.4999996638166,173.50856083997223" stroke-width="2" opacity="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); opacity: 0;"></path><path fill="#3498db" stroke="#ffffff" d="M277.5,285.5A112,112,0,0,0,389.49999965456385,173.508796459421L435.99999951114614,173.51244856087703A158.5,158.5,0,0,1,277.5,332Z" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><path fill="none" stroke="#2980b9" d="M386.4999996638166,173.50856083997223A109,109,0,0,0,191.12725385519667,107.01128875210951" stroke-width="2" opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); opacity: 1;"></path><path fill="#2980b9" stroke="#ffffff" d="M389.49999965456385,173.508796459421A112,112,0,0,0,188.75002230992686,105.18132422235105L147.940880782795,73.76693312816425A163.5,163.5,0,0,1,440.99999949572486,173.51284125995835Z" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><path fill="none" stroke="#34495e" d="M191.12725385519667,107.01128875210951A109,109,0,0,0,211.00450525756543,259.8675238672434" stroke-width="2" opacity="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); opacity: 0;"></path><path fill="#34495e" stroke="#ffffff" d="M188.75002230992686,105.18132422235105A112,112,0,0,0,209.17435402612227,262.2446116801033L180.8070099387534,299.0894727794319A158.5,158.5,0,0,1,151.9029333582447,76.81687401109501Z" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><path fill="none" stroke="#3498db" d="M211.00450525756543,259.8675238672434A109,109,0,0,0,277.46575664063926,282.49999462106564" stroke-width="2" opacity="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); opacity: 0;"></path><path fill="#3498db" stroke="#ffffff" d="M209.17435402612227,262.2446116801033A112,112,0,0,0,277.4648141628587,285.4999944730216L277.4502057572598,331.9999921783386A158.5,158.5,0,0,1,180.8070099387534,299.0894727794319Z" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="277.5" y="163.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 800 15px Arial;" font-size="15px" font-weight="800" transform="matrix(2.6032,0,0,2.6032,-445.2778,-278.9524)" stroke-width="0.38414634146341464"><tspan dy="6" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">오우맨</tspan></text><text x="277.5" y="183.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 14px Arial;" font-size="14px" transform="matrix(2.4296,0,0,2.4296,-396.7222,-251.6148)" stroke-width="0.41158536585365857"><tspan dy="4.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">40%</tspan></text></svg></div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- page end-->
      </section>
      <!-- /wrapper -->
      <section class="wrapper site-min-height">
        <main>
          <div class="container-fluid px-4" style="padding:0;">
              <h1 class="mt-4"> Charts(규진)</h1>
              
              <div class="cardd mb-4" style="height:fit-content;">
                  <div class="card-header">
                      <i class="fas fa-chart-area me-1"></i>
                      일일 이용자 수
                  </div>
                  <div class="card-body"><canvas id="myAreaChart" width="100%" height="30"></canvas></div>
                  <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
              </div>
              <div class="row">
                  <div class="col-lg-6">
                      <div class="cardd mb-4" style="height:fit-content;">
                          <div class="card-header">
                              <i class="fas fa-chart-bar me-1"></i>
                              Bar Chart Example
                          </div>
                          <div class="card-body"><canvas id="myBarChart" width="100%" height="50"></canvas></div>
                          <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                      </div>
                  </div>
                  <div class="col-lg-6">
                      <div class="cardd mb-4" style="height:fit-content;">
                          <div class="card-header">
                              <i class="fas fa-chart-pie me-1"></i>
                              Pie Chart Example
                          </div>
                          <div class="card-body"><canvas id="myPieChart" width="100%" height="50"></canvas></div>
                          <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                      </div>
                  </div>
              </div>
          </div>
      </main>
      </section>
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->

    <!-- //다른 방법 -->
    

    <!-- 푸더 import -->
		<%@ include file="../inc/admin_footer.jsp" %>
    <!--footer end-->
  </section>
 
  <!--script for this page-->
  
  <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" ></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="assets/demo/chart-pie-demo.js"></script>
</body>

</html>
