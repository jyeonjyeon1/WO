<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Walking Order</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="resources/assets/images/logo/logo_only.svg" rel="icon" />

</head>

<body>
  <section id="container">
    <!-- 헤더 import -->
    <%@ include file="inc/admin_header.jsp" %>
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
            <a class="active" href="index.admin">
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
          <li class="sub-menu">
            <a id="board-manage" href="javascript:;">
              <i class="fa fa-pencil-square-o" style="font-size: 13px;"></i>
              <span>보드 관리</span>
              </a>
            <ul class="sub">
              <li><a id="notices" href="notices.admin">공지사항</a></li>
              <li><a id="faq-mng" href="faq_mng.admin">FAQ 관리</a></li>
              <li><a id="board-mng" href="board_mng.admin">게시판 관리</a></li>
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
<!--                -->
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
    <!-- allmenu import -->
    <%@ include file="inc/admin_allmenu.jsp" %>
      <section class="wrapper">
        
        <div class="row">
          
          <!-- 이용자수 수치 -->
          <div class="col-lg-12 main-chart">
            <!-- 위에 4개 친구들 -->
       
            <div class="col-lg-3 col-md-6 dash-div" onclick="location.href='order_period.admin'">
              <div id= "" class="dash-top">일 매출 (${formatDate})
                <a href="order_period.admin"><i class=" fa fa-angle-right" ></i>
                  </a>
                </div>
              <div id= "" class="dash-bottom incr">
                 <i class=" fa fa-krw"></i> <fmt:formatNumber value="${dailySales}" pattern="###,###"/></div>
            </div>
            <div class="col-lg-3 col-md-6 dash-div" onclick="location.href='order_period.admin'">
              <div id= "" class="dash-top">신규 회원
                <a href="user_mng.admin"><i class=" fa fa-angle-right" ></i>
                </a>
              </div>
              <div id= "" class="dash-bottom decr">
                <i class=" fa fa-user"></i> &nbsp;${dailyReg }</div>
            </div>
            <div class="col-lg-3 col-md-6 dash-div" onclick="location.href='connect_hist.admin'">
              <div id= "" class="dash-top">방문자
                <a href="connect_hist.admin"><i class=" fa fa-angle-right" ></i>
                </a>
              </div>
              <div id= "" class="dash-bottom incr">
                <i class=" fa fa-user"></i>&nbsp; <fmt:formatNumber value="${dailyVisit}" pattern="###,###"></fmt:formatNumber>  </div>
            </div>
            <div class="col-lg-3 col-md-6 dash-div" onclick="location.href='store_mng.admin'">
              <div id= "" class="dash-top">최고 매출 매장
                <a href="store_mng.admin"><i class=" fa fa-angle-right" ></i>
                </a>
              </div>
              <div id= "" class="dash-bottom">
                <i class=" fa fa-shopping-bag"></i> ${maxSalesStore.si_name } ${maxSalesStore.si_loc } 
                (<fmt:formatNumber value="${maxSalesStore.o_total_price }" pattern="###,###,###"></fmt:formatNumber> 원)</div>
            </div>
          
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
            
            
            <div class="row mt">
              <!-- SERVER STATUS PANELS -->
              <div class="col-md-4 col-sm-4 mb">
                <div class="grey-panel pn donut-chart dash-list-top">
                  <div class="grey-header">
                    <h5>공지사항 <a href="notices.admin"><i class=" fa fa-angle-right" ></i></a></h5>
                  </div>
                  
                  <div class="row">
                    <div class="goleft dash-list">
                      <ul>
                      <c:forEach var="noticeList" items="${noticeList}" varStatus="vs">
                      	<c:if test="${vs.index lt 8 }">
                      		<a href="notices_update.admin?s=${noticeList.n_seq}"><li>${noticeList.n_title}</li></a>
                      	</c:if>
                      </c:forEach>
                      </ul>
                    </div>
                  </div>
                </div>
                <!-- /grey-panel -->
              </div>
              <!-- /col-md-4-->
              <div class="col-md-4 col-sm-4 mb">
                <div class="darkblue-panel pn dash-list-top">
                  <div class="darkblue-header">
                    <h5>1:1 문의<a href="notices.admin"><i class=" fa fa-angle-right" ></i></a></h5>
                  </div>
                  <div class="row">
                    <div class="goleft dash-list white">
                      <ul>
                      <c:forEach var="adminqnaList" items="${adminqnaList}" varStatus="vs">
                      	<c:if test="${vs.index lt 8 }">
                      		<a href="/inquiry_answer.admin?qa_seq=${adminqnaList.qa_seq}"><li>${adminqnaList.qa_title}</li></a>
                      	</c:if>
                      </c:forEach>
                      </ul>
                    </div>
                  </div>
                </div>
                <!--  /darkblue panel -->
              </div>
              <!-- /col-md-4 -->
              <div class="col-md-4 col-sm-4 mb">
                <!-- REVENUE PANEL -->
                <div class="green-panel pn">
                  <div class="green-header">
                    <h5>이번달 수익</h5>
                  </div>
                  <div class="chart mt">
                    <div class="sparkline" data-type="line" data-resize="true" data-height="75" data-width="90%" data-line-width="1" data-line-color="#fff" data-spot-color="#fff" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="4" data-data="[200,135,667,333,526,996,564,123,890,464,655]"></div>
                  </div>
                  <h4 class="mt"><b>￦ <fmt:formatNumber value="${monthlySales}" pattern="###,###"/></b><br/>${formatDate.substring(0,7) }</h4>
                </div>
              </div>
              <!-- /col-md-4 -->
            </div>
            <!-- /row -->
           
            
          </div>
          <!-- /col-lg-9 END SECTION MIDDLE -->
          <!-- **********************************************************************************************************************************************************
              RIGHT SIDEBAR CONTENT
              *********************************************************************************************************************************************************** -->
          <!-- <div class="col-lg-3 ds">
            COMPLETED ACTIONS DONUTS CHART
            <div class="donut-main">
              <h4>COMPLETED ACTIONS & PROGRESS</h4>
              <canvas id="newchart" height="130" width="130"></canvas>
              <script>
                var doughnutData = [{
                    value: 70,
                    color: "#4ECDC4"
                  },
                  {
                    value: 30,
                    color: "#fdfdfd"
                  }
                ];
                var myDoughnut = new Chart(document.getElementById("newchart").getContext("2d")).Doughnut(doughnutData);
              </script>
            </div>
            NEW EARNING STATS
            <div class="panel terques-chart">
              <div class="panel-body">
                <div class="chart">
                  <div class="centered">
                    <span>TODAY EARNINGS</span>
                    <strong>$ 890,00 | 15%</strong>
                  </div>
                  <br>
                  <div class="sparkline" data-type="line" data-resize="true" data-height="75" data-width="90%" data-line-width="1" data-line-color="#fff" data-spot-color="#fff" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="4" data-data="[200,135,667,333,526,996,564,123,890,564,455]"></div>
                </div>
              </div>
            </div>
            new earning end
            RECENT ACTIVITIES SECTION
            <h4 class="centered mt">RECENT ACTIVITY</h4>
            First Activity
            <div class="desc">
              <div class="thumb">
                <span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
              </div>
              <div class="details">
                <p>
                  <muted>Just Now</muted>
                  <br/>
                  <a href="#">Paul Rudd</a> purchased an item.<br/>
                </p>
              </div>
            </div>
            Second Activity
            <div class="desc">
              <div class="thumb">
                <span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
              </div>
              <div class="details">
                <p>
                  <muted>2 Minutes Ago</muted>
                  <br/>
                  <a href="#">James Brown</a> subscribed to your newsletter.<br/>
                </p>
              </div>
            </div>
            Third Activity
            <div class="desc">
              <div class="thumb">
                <span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
              </div>
              <div class="details">
                <p>
                  <muted>3 Hours Ago</muted>
                  <br/>
                  <a href="#">Diana Kennedy</a> purchased a year subscription.<br/>
                </p>
              </div>
            </div>
            Fourth Activity
            <div class="desc">
              <div class="thumb">
                <span class="badge bg-theme"><i class="fa fa-clock-o"></i></span>
              </div>
              <div class="details">
                <p>
                  <muted>7 Hours Ago</muted>
                  <br/>
                  <a href="#">Brando Page</a> purchased a year subscription.<br/>
                </p>
              </div>
            </div>
            USERS ONLINE SECTION
            <h4 class="centered mt">TEAM MEMBERS ONLINE</h4>
            First Member
            <div class="desc">
              <div class="thumb">
                <img class="img-circle" src="resources/assets/images/admin/ui-divya.jpg" width="35px" height="35px" align="">
              </div>
              <div class="details">
                <p>
                  <a href="#">DIVYA MANIAN</a><br/>
                  <muted>Available</muted>
                </p>
              </div>
            </div>
            Second Member
            <div class="desc">
              <div class="thumb">
                <img class="img-circle" src="resources/assets/images/admin/ui-sherman.jpg" width="35px" height="35px" align="">
              </div>
              <div class="details">
                <p>
                  <a href="#">DJ SHERMAN</a><br/>
                  <muted>I am Busy</muted>
                </p>
              </div>
            </div>
            Third Member
            <div class="desc">
              <div class="thumb">
                <img class="img-circle" src="resources/assets/images/admin/ui-danro.jpg" width="35px" height="35px" align="">
              </div>
              <div class="details">
                <p>
                  <a href="#">DAN ROGERS</a><br/>
                  <muted>Available</muted>
                </p>
              </div>
            </div>
            Fourth Member
            <div class="desc">
              <div class="thumb">
                <img class="img-circle" src="resources/assets/images/admin/ui-zac.jpg" width="35px" height="35px" align="">
              </div>
              <div class="details">
                <p>
                  <a href="#">Zac Sniders</a><br/>
                  <muted>Available</muted>
                </p>
              </div>
            </div>
            CALENDAR
            <div id="calendar" class="mb">
              <div class="panel green-panel no-margin">
                <div class="panel-body">
                  <div id="date-popover" class="popover top" style="cursor: pointer; disadding: block; margin-left: 33%; margin-top: -50px; width: 175px;">
                    <div class="arrow"></div>
                    <h3 class="popover-title" style="disadding: none;"></h3>
                    <div id="date-popover-content" class="popover-content"></div>
                  </div>
                  <div id="my-calendar"></div>
                </div>
              </div>
            </div>
            / calendar
          </div> -->
          <!-- /col-lg-3 -->
        </div>
        <!-- /row -->
      </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->



	<!-- 푸더 import -->
		<%@ include file="inc/admin_footer.jsp" %>
  </section>
  
</body>
</html>