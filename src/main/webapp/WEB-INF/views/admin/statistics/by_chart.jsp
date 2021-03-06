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
              <li class="active"><a id="by-chart" href="by_chart.admin">표로 확인</a></li>
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
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> 표로 확인</h3>
        <div class="row mt">
          <div class="col-lg-12">
            <div class="content-panel">
              <h4><i class="fa fa-angle-right"></i> Responsive Table</h4>
              <section id="unseen">
                <table class="table table-bordered table-striped table-condensed">
                  <thead>
                    <tr>
                      <th>Code</th>
                      <th>Company</th>
                      <th class="numeric">Price</th>
                      <th class="numeric">Change</th>
                      <th class="numeric">Change %</th>
                      <th class="numeric">Open</th>
                      <th class="numeric">High</th>
                      <th class="numeric">Low</th>
                      <th class="numeric">Volume</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>AAC</td>
                      <td>AUSTRALIAN AGRICULTURAL COMPANY LIMITED.</td>
                      <td class="numeric">$1.38</td>
                      <td class="numeric">-0.01</td>
                      <td class="numeric">-0.36%</td>
                      <td class="numeric">$1.39</td>
                      <td class="numeric">$1.39</td>
                      <td class="numeric">$1.38</td>
                      <td class="numeric">9,395</td>
                    </tr>
                    <tr>
                      <td>AAD</td>
                      <td>ARDENT LEISURE GROUP</td>
                      <td class="numeric">$1.15</td>
                      <td class="numeric"> +0.02</td>
                      <td class="numeric">1.32%</td>
                      <td class="numeric">$1.14</td>
                      <td class="numeric">$1.15</td>
                      <td class="numeric">$1.13</td>
                      <td class="numeric">56,431</td>
                    </tr>
                    <tr>
                      <td>AAX</td>
                      <td>AUSENCO LIMITED</td>
                      <td class="numeric">$4.00</td>
                      <td class="numeric">-0.04</td>
                      <td class="numeric">-0.99%</td>
                      <td class="numeric">$4.01</td>
                      <td class="numeric">$4.05</td>
                      <td class="numeric">$4.00</td>
                      <td class="numeric">90,641</td>
                    </tr>
                    <tr>
                      <td>ABC</td>
                      <td>ADELAIDE BRIGHTON LIMITED</td>
                      <td class="numeric">$3.00</td>
                      <td class="numeric"> +0.06</td>
                      <td class="numeric">2.04%</td>
                      <td class="numeric">$2.98</td>
                      <td class="numeric">$3.00</td>
                      <td class="numeric">$2.96</td>
                      <td class="numeric">862,518</td>
                    </tr>
                    <tr>
                      <td>ABP</td>
                      <td>ABACUS PROPERTY GROUP</td>
                      <td class="numeric">$1.91</td>
                      <td class="numeric">0.00</td>
                      <td class="numeric">0.00%</td>
                      <td class="numeric">$1.92</td>
                      <td class="numeric">$1.93</td>
                      <td class="numeric">$1.90</td>
                      <td class="numeric">595,701</td>
                    </tr>
                    <tr>
                      <td>ABY</td>
                      <td>ADITYA BIRLA MINERALS LIMITED</td>
                      <td class="numeric">$0.77</td>
                      <td class="numeric"> +0.02</td>
                      <td class="numeric">2.00%</td>
                      <td class="numeric">$0.76</td>
                      <td class="numeric">$0.77</td>
                      <td class="numeric">$0.76</td>
                      <td class="numeric">54,567</td>
                    </tr>
                    <tr>
                      <td>ACR</td>
                      <td>ACRUX LIMITED</td>
                      <td class="numeric">$3.71</td>
                      <td class="numeric"> +0.01</td>
                      <td class="numeric">0.14%</td>
                      <td class="numeric">$3.70</td>
                      <td class="numeric">$3.72</td>
                      <td class="numeric">$3.68</td>
                      <td class="numeric">191,373</td>
                    </tr>
                    <tr>
                      <td>ADU</td>
                      <td>ADAMUS RESOURCES LIMITED</td>
                      <td class="numeric">$0.72</td>
                      <td class="numeric">0.00</td>
                      <td class="numeric">0.00%</td>
                      <td class="numeric">$0.73</td>
                      <td class="numeric">$0.74</td>
                      <td class="numeric">$0.72</td>
                      <td class="numeric">8,602,291</td>
                    </tr>
                    <tr>
                      <td>AGG</td>
                      <td>ANGLOGOLD ASHANTI LIMITED</td>
                      <td class="numeric">$7.81</td>
                      <td class="numeric">-0.22</td>
                      <td class="numeric">-2.74%</td>
                      <td class="numeric">$7.82</td>
                      <td class="numeric">$7.82</td>
                      <td class="numeric">$7.81</td>
                      <td class="numeric">148</td>
                    </tr>
                    <tr>
                      <td>AGK</td>
                      <td>AGL ENERGY LIMITED</td>
                      <td class="numeric">$13.82</td>
                      <td class="numeric"> +0.02</td>
                      <td class="numeric">0.14%</td>
                      <td class="numeric">$13.83</td>
                      <td class="numeric">$13.83</td>
                      <td class="numeric">$13.67</td>
                      <td class="numeric">846,403</td>
                    </tr>
                    <tr>
                      <td>AGO</td>
                      <td>ATLAS IRON LIMITED</td>
                      <td class="numeric">$3.17</td>
                      <td class="numeric">-0.02</td>
                      <td class="numeric">-0.47%</td>
                      <td class="numeric">$3.11</td>
                      <td class="numeric">$3.22</td>
                      <td class="numeric">$3.10</td>
                      <td class="numeric">5,416,303</td>
                    </tr>
                  </tbody>
                </table>
              </section>
            </div>
            <!-- /content-panel -->
          </div>
          <!-- /col-lg-4 -->
        </div>
        <!-- /row -->
        <div class="row mt">
          <div class="col-lg-12">
            <div class="content-panel">
              <h4><i class="fa fa-angle-right"></i> No More Table</h4>
              <section id="no-more-tables">
                <table class="table table-bordered table-striped table-condensed cf">
                  <thead class="cf">
                    <tr>
                      <th>Code</th>
                      <th>Company</th>
                      <th class="numeric">Price</th>
                      <th class="numeric">Change</th>
                      <th class="numeric">Change %</th>
                      <th class="numeric">Open</th>
                      <th class="numeric">High</th>
                      <th class="numeric">Low</th>
                      <th class="numeric">Volume</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td data-title="Code">AAC</td>
                      <td data-title="Company">AUSTRALIAN AGRICULTURAL COMPANY LIMITED.</td>
                      <td class="numeric" data-title="Price">$1.38</td>
                      <td class="numeric" data-title="Change">-0.01</td>
                      <td class="numeric" data-title="Change %">-0.36%</td>
                      <td class="numeric" data-title="Open">$1.39</td>
                      <td class="numeric" data-title="High">$1.39</td>
                      <td class="numeric" data-title="Low">$1.38</td>
                      <td class="numeric" data-title="Volume">9,395</td>
                    </tr>
                    <tr>
                      <td data-title="Code">AAD</td>
                      <td data-title="Company">ARDENT LEISURE GROUP</td>
                      <td class="numeric" data-title="Price">$1.15</td>
                      <td class="numeric" data-title="Change"> +0.02</td>
                      <td class="numeric" data-title="Change %">1.32%</td>
                      <td class="numeric" data-title="Open">$1.14</td>
                      <td class="numeric" data-title="High">$1.15</td>
                      <td class="numeric" data-title="Low">$1.13</td>
                      <td class="numeric" data-title="Volume">56,431</td>
                    </tr>
                    <tr>
                      <td data-title="Code">AAX</td>
                      <td data-title="Company">AUSENCO LIMITED</td>
                      <td class="numeric" data-title="Price">$4.00</td>
                      <td class="numeric" data-title="Change">-0.04</td>
                      <td class="numeric" data-title="Change %">-0.99%</td>
                      <td class="numeric" data-title="Open">$4.01</td>
                      <td class="numeric" data-title="High">$4.05</td>
                      <td class="numeric" data-title="Low">$4.00</td>
                      <td class="numeric" data-title="Volume">90,641</td>
                    </tr>
                    <tr>
                      <td data-title="Code">ABC</td>
                      <td data-title="Company">ADELAIDE BRIGHTON LIMITED</td>
                      <td class="numeric" data-title="Price">$3.00</td>
                      <td class="numeric" data-title="Change"> +0.06</td>
                      <td class="numeric" data-title="Change %">2.04%</td>
                      <td class="numeric" data-title="Open">$2.98</td>
                      <td class="numeric" data-title="High">$3.00</td>
                      <td class="numeric" data-title="Low">$2.96</td>
                      <td class="numeric" data-title="Volume">862,518</td>
                    </tr>
                    <tr>
                      <td data-title="Code">ABP</td>
                      <td data-title="Company">ABACUS PROPERTY GROUP</td>
                      <td class="numeric" data-title="Price">$1.91</td>
                      <td class="numeric" data-title="Change">0.00</td>
                      <td class="numeric" data-title="Change %">0.00%</td>
                      <td class="numeric" data-title="Open">$1.92</td>
                      <td class="numeric" data-title="High">$1.93</td>
                      <td class="numeric" data-title="Low">$1.90</td>
                      <td class="numeric" data-title="Volume">595,701</td>
                    </tr>
                    <tr>
                      <td data-title="Code">ABY</td>
                      <td data-title="Company">ADITYA BIRLA MINERALS LIMITED</td>
                      <td class="numeric" data-title="Price">$0.77</td>
                      <td class="numeric" data-title="Change"> +0.02</td>
                      <td class="numeric" data-title="Change %">2.00%</td>
                      <td class="numeric" data-title="Open">$0.76</td>
                      <td class="numeric" data-title="High">$0.77</td>
                      <td class="numeric" data-title="Low">$0.76</td>
                      <td class="numeric" data-title="Volume">54,567</td>
                    </tr>
                    <tr>
                      <td data-title="Code">ACR</td>
                      <td data-title="Company">ACRUX LIMITED</td>
                      <td class="numeric" data-title="Price">$3.71</td>
                      <td class="numeric" data-title="Change"> +0.01</td>
                      <td class="numeric" data-title="Change %">0.14%</td>
                      <td class="numeric" data-title="Open">$3.70</td>
                      <td class="numeric" data-title="High">$3.72</td>
                      <td class="numeric" data-title="Low">$3.68</td>
                      <td class="numeric" data-title="Volume">191,373</td>
                    </tr>
                    <tr>
                      <td data-title="Code">ADU</td>
                      <td data-title="Company">ADAMUS RESOURCES LIMITED</td>
                      <td class="numeric" data-title="Price">$0.72</td>
                      <td class="numeric" data-title="Change">0.00</td>
                      <td class="numeric" data-title="Change %">0.00%</td>
                      <td class="numeric" data-title="Open">$0.73</td>
                      <td class="numeric" data-title="High">$0.74</td>
                      <td class="numeric" data-title="Low">$0.72</td>
                      <td class="numeric" data-title="Volume">8,602,291</td>
                    </tr>
                    <tr>
                      <td data-title="Code">AGG</td>
                      <td data-title="Company">ANGLOGOLD ASHANTI LIMITED</td>
                      <td class="numeric" data-title="Price">$7.81</td>
                      <td class="numeric" data-title="Change">-0.22</td>
                      <td class="numeric" data-title="Change %">-2.74%</td>
                      <td class="numeric" data-title="Open">$7.82</td>
                      <td class="numeric" data-title="High">$7.82</td>
                      <td class="numeric" data-title="Low">$7.81</td>
                      <td class="numeric" data-title="Volume">148</td>
                    </tr>
                    <tr>
                      <td data-title="Code">AGK</td>
                      <td data-title="Company">AGL ENERGY LIMITED</td>
                      <td class="numeric" data-title="Price">$13.82</td>
                      <td class="numeric" data-title="Change"> +0.02</td>
                      <td class="numeric" data-title="Change %">0.14%</td>
                      <td class="numeric" data-title="Open">$13.83</td>
                      <td class="numeric" data-title="High">$13.83</td>
                      <td class="numeric" data-title="Low">$13.67</td>
                      <td class="numeric" data-title="Volume">846,403</td>
                    </tr>
                    <tr>
                      <td data-title="Code">AGO</td>
                      <td data-title="Company">ATLAS IRON LIMITED</td>
                      <td class="numeric" data-title="Price">$3.17</td>
                      <td class="numeric" data-title="Change">-0.02</td>
                      <td class="numeric" data-title="Change %">-0.47%</td>
                      <td class="numeric" data-title="Open">$3.11</td>
                      <td class="numeric" data-title="High">$3.22</td>
                      <td class="numeric" data-title="Low">$3.10</td>
                      <td class="numeric" data-title="Volume">5,416,303</td>
                    </tr>
                  </tbody>
                </table>
              </section>
            </div>
            <!-- /content-panel -->
          </div>
          <!-- /col-lg-12 -->
        </div>
        <!-- /row -->
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
