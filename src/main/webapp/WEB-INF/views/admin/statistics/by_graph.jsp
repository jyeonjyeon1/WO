<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  
  
  <title>워킹오더 통계 그래프</title>

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
               
              <li><a id="store-sales" href="store_sales.admin">매장별 매출 통계</a></li>
              
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
<%@ include file="../inc/admin_allmenu.jsp" %>
    <!-- allmenu import -->
    
      <section class="wrapper site-min-height">
        <h3><i class="fa fa-angle-right"></i> 그래프로 확인</h3>
        
        <!--CUSTOM CHART START -->
            <div class="border-head" >
              <h3>이용자 수</h3>
            </div>
            <div class="col-6-lg">
            <div class="custom-bar-chart">
              <ul class="y-axis">
                <li><span>1000</span></li>
                <li><span>800</span></li>
                <li><span>600</span></li>
                <li><span>400</span></li>
                <li><span>200</span></li>
                <li><span>0</span></li>
              </ul>
              <c:forEach var="visHisCount" items="${visHisCount }">
              <div class="bar" style="margin: 0 0 0 1%;width:2%;">
                <div class="title" style="font-size:9px;"><fmt:formatDate value="${visHisCount.u_regdate }" pattern="MM-dd"></fmt:formatDate></div>
                <div class="value tooltips" data-original-title="${visHisCount.u_seq}" data-toggle="tooltip" data-placement="top">${visHisCount.u_seq/10 }%</div>
              </div>
              </c:forEach>
              <!-- <div class="bar">
                <div class="title">1월</div>
                <div class="value tooltips" data-original-title="8.500" data-toggle="tooltip" data-placement="top">85%</div>
              </div>
              <div class="bar ">
                <div class="title">2월</div>
                <div class="value tooltips" data-original-title="5.000" data-toggle="tooltip" data-placement="top">50%</div>
              </div>
              <div class="bar ">
                <div class="title">3월</div>
                <div class="value tooltips" data-original-title="6.000" data-toggle="tooltip" data-placement="top">60%</div>
              </div>
              <div class="bar ">
                <div class="title">4월</div>
                <div class="value tooltips" data-original-title="4.500" data-toggle="tooltip" data-placement="top">45%</div>
              </div>
              <div class="bar">
                <div class="title">5월</div>
                <div class="value tooltips" data-original-title="3.200" data-toggle="tooltip" data-placement="top">32%</div>
              </div>
              <div class="bar ">
                <div class="title">6월</div>
                <div class="value tooltips" data-original-title="6.200" data-toggle="tooltip" data-placement="top">62%</div>
              </div>
              <div class="bar">
                <div class="title">7월</div>
                <div class="value tooltips" data-original-title="7.500" data-toggle="tooltip" data-placement="top">75%</div>
              </div>
              <div class="bar">
                <div class="title">8월</div>
                <div class="value tooltips" data-original-title="8.500" data-toggle="tooltip" data-placement="top">85%</div>
              </div>
              <div class="bar ">
                <div class="title">9월</div>
                <div class="value tooltips" data-original-title="5.000" data-toggle="tooltip" data-placement="top">50%</div>
              </div>
              <div class="bar ">
                <div class="title">10월</div>
                <div class="value tooltips" data-original-title="6.000" data-toggle="tooltip" data-placement="top">60%</div>
              </div>
              <div class="bar ">
                <div class="title">11월</div>
                <div class="value tooltips" data-original-title="4.500" data-toggle="tooltip" data-placement="top">45%</div>
              </div>
              <div class="bar">
                <div class="title">12월</div>
                <div class="value tooltips" data-original-title="3.200" data-toggle="tooltip" data-placement="top">2%</div>
              </div> -->
              
            </div>
            </div>
            <!--custom chart end-->
        
        
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
									<div id="hero-bar" class="graph"
										style="position: relative; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
										<svg height="342" version="1.1" width="555"
											xmlns="http://www.w3.org/2000/svg"
											style="overflow: hidden; position: relative; left: -0.545436px; top: -0.193177px;">
											<desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël 2.1.0</desc>
											<defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs>
											<text x="41.56249809265137" y="273.165955899193"
												text-anchor="end" font="10px &quot;Arial&quot;"
												stroke="none" fill="#888888"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;"
												font-size="12px" font-family="sans-serif"
												font-weight="normal">
											<tspan dy="4.090938446953032"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">0</tspan></text>
											<path fill="none" stroke="#aaaaaa"
												d="M54.06249809265137,273.5H530" stroke-width="0.5"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
											<text x="41.56249809265137" y="211.12446692439477"
												text-anchor="end" font="10px &quot;Arial&quot;"
												stroke="none" fill="#888888"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;"
												font-size="12px" font-family="sans-serif"
												font-weight="normal">
											<tspan dy="4.090907602037589"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">500</tspan></text>
											<path fill="none" stroke="#aaaaaa"
												d="M54.06249809265137,211.5H530" stroke-width="0.5"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
											<text x="41.56249809265137" y="149.0829779495965"
												text-anchor="end" font="10px &quot;Arial&quot;"
												stroke="none" fill="#888888"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;"
												font-size="12px" font-family="sans-serif"
												font-weight="normal">
											<tspan dy="4.0909225334893335"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">1,000</tspan></text>
											<path fill="none" stroke="#aaaaaa"
												d="M54.06249809265137,149.5H530" stroke-width="0.5"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
											<text x="41.56249809265137" y="87.04148897479826"
												text-anchor="end" font="10px &quot;Arial&quot;"
												stroke="none" fill="#888888"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;"
												font-size="12px" font-family="sans-serif"
												font-weight="normal">
											<tspan dy="4.090914576757484"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">1,500</tspan></text>
											<path fill="none" stroke="#aaaaaa"
												d="M54.06249809265137,87.5H530" stroke-width="0.5"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
											<text x="41.56249809265137" y="25" text-anchor="end"
												font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font: 12px sans-serif;"
												font-size="12px" font-family="sans-serif"
												font-weight="normal">
											<tspan dy="4.090909481048584"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2,000</tspan></text>
											<path fill="none" stroke="#aaaaaa"
												d="M54.06249809265137,25.5H530" stroke-width="0.5"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
											<text x="490.33854150772095" y="285.665955899193"
												text-anchor="middle" font="10px &quot;Arial&quot;"
												stroke="none" fill="#888888"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;"
												font-size="12px" font-family="sans-serif"
												font-weight="normal"
												transform="matrix(0.8192,-0.5736,0.5736,0.8192,-94.364,352.8758)">
											<tspan dy="4.090938446953032"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">iPhone 5</tspan></text>
											<text x="411.01562452316284" y="285.665955899193"
												text-anchor="middle" font="10px &quot;Arial&quot;"
												stroke="none" fill="#888888"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;"
												font-size="12px" font-family="sans-serif"
												font-weight="normal"
												transform="matrix(0.8192,-0.5736,0.5736,0.8192,-111.3797,309.2479)">
											<tspan dy="4.090938446953032"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">iPhone 4S</tspan></text>
											<text x="331.69270753860474" y="285.665955899193"
												text-anchor="middle" font="10px &quot;Arial&quot;"
												stroke="none" fill="#888888"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;"
												font-size="12px" font-family="sans-serif"
												font-weight="normal"
												transform="matrix(0.8192,-0.5736,0.5736,0.8192,-123.2658,262.2597)">
											<tspan dy="4.090938446953032"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">iPhone 4</tspan></text>
											<text x="252.36979055404663" y="285.665955899193"
												text-anchor="middle" font="10px &quot;Arial&quot;"
												stroke="none" fill="#888888"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;"
												font-size="12px" font-family="sans-serif"
												font-weight="normal"
												transform="matrix(0.8192,-0.5736,0.5736,0.8192,-143.5205,220.6681)">
											<tspan dy="4.090938446953032"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">iPhone 3GS</tspan></text>
											<text x="173.04687356948853" y="285.665955899193"
												text-anchor="middle" font="10px &quot;Arial&quot;"
												stroke="none" fill="#888888"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;"
												font-size="12px" font-family="sans-serif"
												font-weight="normal"
												transform="matrix(0.8192,-0.5736,0.5736,0.8192,-155.1955,173.3005)">
											<tspan dy="4.090938446953032"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">iPhone 3G</tspan></text>
											<text x="93.72395658493042" y="285.665955899193"
												text-anchor="middle" font="10px &quot;Arial&quot;"
												stroke="none" fill="#888888"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font: 12px sans-serif;"
												font-size="12px" font-family="sans-serif"
												font-weight="normal"
												transform="matrix(0.8192,-0.5736,0.5736,0.8192,-161.6577,122.2829)">
											<tspan dy="4.090938446953032"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">iPhone</tspan></text>
											<rect x="63.97786271572113" y="256.2906708980479"
												width="59.49218773841858" height="16.87528500114513" r="0"
												rx="0" ry="0" fill="#ac92ec" stroke="none" fill-opacity="1"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
											<rect x="143.30077970027924" y="256.1665879200983"
												width="59.49218773841858" height="16.9993679790947" r="0"
												rx="0" ry="0" fill="#ac92ec" stroke="none" fill-opacity="1"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
											<rect x="222.62369668483734" y="239.043136963054"
												width="59.49218773841858" height="34.122818936139026" r="0"
												rx="0" ry="0" fill="#ac92ec" stroke="none" fill-opacity="1"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
											<rect x="301.94661366939545" y="226.01442427834635"
												width="59.49218773841858" height="47.15153162084667" r="0"
												rx="0" ry="0" fill="#ac92ec" stroke="none" fill-opacity="1"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
											<rect x="381.26953065395355" y="191.8916053422073"
												width="59.49218773841858" height="81.27435055698572" r="0"
												rx="0" ry="0" fill="#ac92ec" stroke="none" fill-opacity="1"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect>
											<rect x="460.59244763851166" y="78.2315975403769"
												width="59.49218773841858" height="194.93435835881613" r="0"
												rx="0" ry="0" fill="#ac92ec" stroke="none" fill-opacity="1"
												style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></rect></svg>
										<div class="morris-hover morris-default-style"
											style="left: 0px; top: 174px; display: block;">
											<div class="morris-hover-row-label">iPhone 5</div>
											<div class="morris-hover-point" style="color: #ac92ec">
												Geekbench: 1,571</div>
										</div>
									</div>
								</div>
							</div>
            </div>
          </div>
        </div>
        <!-- page end-->
      </section>
    <!--main content end-->

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
