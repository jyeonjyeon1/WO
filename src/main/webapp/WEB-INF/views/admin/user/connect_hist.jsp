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
          <li class="sub-menu dcjq-parent-li">
            <a id="user-manage" class="active dcjq-parent" href="javascript:void(0);">
              <i class="fa fa-user" style="font-size: 15px;""></i>
              <span>&nbsp;회원 관리</span>
              </a>
            <ul class=" sub">
          <li><a id="user-mng" href="user_mng.admin">회원 관리</a></li>
          <li><a id="coupon-mng" href="coupon_mng.admin">쿠폰 관리</a></li>
          <li><a id="point-mng" href="point_mng.admin">포인트 관리</a></li>
          <li class="active"><a id="connect-hist" href="connect_hist..admin">접속 이력</a></li>
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
        <h3><i class="fa fa-angle-right"></i> 접속 이력</h3>
        <div class="row mt">
          <div class="col-lg-12">
            <div class="card-header" style="font-size: 16px;">
              <i class="fa fa-search" style="font-size: 14px;"></i>
              접속 이력 검색
            </div>
            <div class="form-panel" style="margin: 0 10px; padding-bottom: 38px;">
              <form class="form-horizontal style-form" method="get">
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">접속일시</label>
                  <div class="col-sm-10">
                    <input class="form-control round-form" type="date"
                      style="width: 20%;display: inline-block;margin-right: 10px;"> ~
                    <input class="form-control round-form" type="date"
                      style="width: 20%;display: inline-block;margin-left: 10px;">

                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">사용자</label>
                  <div class="col-sm-2 col-sm-2 col-sm-2 dropthebeat">
                    <div class="dataTable-dropdown" style="margin-top:1px;"><select class="dataTable-selector">
                        <option value="all">전체</option>
                        <option value="id">이름</option>
                        <option value="name">아이디</option>
                        <option value="nick">닉네임</option>

                      </select>
                    </div>
                  </div>
                  <div class="col-sm-8 col-sm-8 col-sm-8">
                    <input type="text" class="form-control round-form" placeholder="홍길동" style="width: 35%;">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">관리자</label>
                  <div class="col-sm-2 col-sm-2 col-sm-2 dropthebeat">
                    <div class="dataTable-dropdown" style="margin-top:1px;"><select class="dataTable-selector">
                        <option value="all">전체</option>
                        <option value="store">지점</option>
                        <option value="store_num">지점코드</option>

                      </select>
                    </div>
                  </div>
                  <div class="col-sm-8 col-sm-8 col-sm-8">
                    <input type="text" class="form-control round-form" placeholder="홍길동" style="width: 35%;">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">유형</label>
                  <div class="col-sm-10">
                    <label class="radio-inline">
                      <input type="radio" name="inRad" id="inlineRadio1" value="option1" checked> 전체
                    </label>
                    <label class="radio-inline">
                      <input type="radio" name="inRad" id="inlineRadio2" value="option2"> 적립
                    </label>
                    <label class="radio-inline">
                      <input type="radio" name="inRad" id="inlineRadio3" value="option3"> 사용
                    </label>
                  </div>
                </div>
                <button type="submit" class="btn btn-theme" style="width:70px;float: right;">검색</button>

              </form>
            </div>
            <form>
              <div class="form-panel point_select_form">
                <div style="border-bottom: 1px dotted grey; padding-bottom: 3px; margin-bottom: 6px;">포인트 설정</div>
                <div class="row">
                  <div class="form-group">
                    <label class="col-sm-4 col-sm-4 control-label">사용여부</label>
                    <div class="col-sm-8">
                      <label class="radio-inline">
                        <input type="radio" name="inRad2" id="inlineRadio1" value="option1" checked> 사용
                      </label>
                      <label class="radio-inline">
                        <input type="radio" name="inRad2" id="inlineRadio2" value="option2"> 미사용
                      </label>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="form-group">
                    <label class="col-sm-4 col-sm-4 control-label">적립(%)</label>
                    <div class="col-sm-8">
                      <input class="form-control round-form" type="text" value="10" style="height:24px;width: 50%;">
                    </div>
                  </div>
                </div>
                <div class="row" style="text-align: center;">
                  <button type="submit" class="btn btn-theme"
                    style="margin-top:10px;width:50px; height: 28px; padding:0;font-size: 12px;">저장</button>
                </div>

              </div>
            </form>

            <!-- 테이블 -->
            <div class="row mt">
              <div class="col-lg-12 cardd mb-4" style="height: fit-content;">
                <div class="card-header">
                  <i class="fa fa-table"></i>
                  검색 결과
                </div>
                <div class="card-body">

                  <table id="datatablesSimple">
                    <thead>
                      <tr>
                        <th data-sortable="" style="max-width: 6%;"><a href="#" class="dataTable-sorter">번호</a></th>
                        <th data-sortable="" style="width: 10%;"><a href="#" class="dataTable-sorter">IP</a></th>
                        <th data-sortable="" style="width: 10%;"><a href="#" class="dataTable-sorter">방문화면</a></th>
                        <th data-sortable="" style="width: 8%;"><a href="#" class="dataTable-sorter">요청방식</a></th>
                        <th data-sortable="" style="width: 10%;"><a href="#" class="dataTable-sorter">아이디</a></th>
                        <th data-sortable="" style="width: 10%;"><a href="#" class="dataTable-sorter">이름</a></th>
                        <th data-sortable="" style="width: 10%;"><a href="#" class="dataTable-sorter">디바이스</a></th>
                        <th data-sortable="" style="width: 10%;"><a href="#" class="dataTable-sorter">브라우저</a></th>
                        <th data-sortable="" style="width: 15%;"><a href="#" class="dataTable-sorter">시간</a></th>
                      </tr>
                    </thead>

                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>192.168.0.205</td>
                        <td>/index</td>
                        <td>GET</td>
                        <td>tommy</td>
                        <td>이승재</td>
                        <td>Iphone</td>
                        <td>Safari</td>
                        <td>2022.04.16 02:20:46</td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td>192.168.0.205</td>
                        <td>/index</td>
                        <td>GET</td>
                        <td>etgohome8</td>
                        <td>홍민지</td>
                        <td>Mobile</td>
                        <td>Safari</td>
                        <td>2022.04.16 02:20:46</td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td>192.168.0.205</td>
                        <td>/index</td>
                        <td>GET</td>
                        <td>jyeon</td>
                        <td>G마스터</td>
                        <td>PC</td>
                        <td>Chrome</td>
                        <td>2022.04.16 02:20:46</td>
                      </tr>
                      <tr>
                        <td>4</td>
                        <td>192.168.0.205</td>
                        <td>/index</td>
                        <td>GET</td>
                        <td>yuki</td>
                        <td>유키</td>
                        <td>PC</td>
                        <td>Edge</td>
                        <td>2022.04.16 02:20:46</td>
                      </tr>
                      <tr>
                        <td>5</td>
                        <td>192.168.0.205</td>
                        <td>/index</td>
                        <td>GET</td>
                        <td>gyublin</td>
                        <td>규블린</td>
                        <td>PC</td>
                        <td>Safaris</td>
                        <td>2022.04.16 02:20:46</td>
                      </tr>
                      <tr>
                        <td>6</td>
                        <td>192.168.0.205</td>
                        <td>/index</td>
                        <td>GET</td>
                        <td>rabbit</td>
                        <td>토끼</td>
                        <td>Iphone</td>
                        <td>Safari</td>
                        <td>2022.04.16 02:20:46</td>
                      </tr>
                      <tr>
                        <td>7</td>
                        <td>192.168.0.205</td>
                        <td>/index</td>
                        <td>GET</td>
                        <td>tommy</td>
                        <td>이승재</td>
                        <td>Iphone</td>
                        <td>Safari</td>
                        <td>2022.04.16 02:20:46</td>
                      </tr>
                      <tr>
                        <td>8</td>
                        <td>192.168.0.205</td>
                        <td>/index</td>
                        <td>GET</td>
                        <td>tommy</td>
                        <td>이승재</td>
                        <td>Iphone</td>
                        <td>Safari</td>
                        <td>2022.04.16 02:20:46</td>
                      </tr>
                      <tr>
                        <td>9</td>
                        <td>192.168.0.205</td>
                        <td>/index</td>
                        <td>GET</td>
                        <td>tommy</td>
                        <td>이승재</td>
                        <td>Iphone</td>
                        <td>Safari</td>
                        <td>2022.04.16 02:20:46</td>
                      </tr>
                      <tr>
                        <td>10</td>
                        <td>192.168.0.205</td>
                        <td>/index</td>
                        <td>GET</td>
                        <td>tommy</td>
                        <td>이승재</td>
                        <td>Iphone</td>
                        <td>Safari</td>
                        <td>2022.04.16 02:20:46</td>
                      </tr>
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
 
  <!--script for this page-->
  

  <script src="https://cdn.jsdelivr.net/npm/simple-datatables@3.2.0/dist/umd/simple-datatables.js"></script>
  <script src="resources/assets/js/admin/datatable/datatables-simple-demo.js"></script>
</body>

</html>