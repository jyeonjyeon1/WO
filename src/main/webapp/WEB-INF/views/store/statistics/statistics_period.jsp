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
  <title>워킹오더 매장관리자 페이지</title>


  <!--datepicker-->
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
  <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />

   <!-- 테이블용 css -->
   <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />

  <!-- Favicons -->
  <link href="resources/assets/images/admin/logo/logo_only.svg" rel="icon">
  <link href="resources/assets/images/admin/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="resources/assets/js/admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="resources/assets/js/admin/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="resources/assets/css/admin/style.css" rel="stylesheet">
  <link href="resources/assets/css/admin/style-responsive.css" rel="stylesheet">

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
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    <%@include file="../inc/store_header.jsp" %>
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a><img src="resources/assets/images/admin/doggy.jpg" class="img-circle" width="80"></a></p>
          <h5 class="centered">더리터 위례점</h5>
          <p class="sidebar-title" >주문 확인</p>
          <li class="sub-menu">
            <a  href="index.store">
              <i class="fa fa-h-square"></i>
              <span>HOME</span>
              </a>
          </li>
          <li class="sub-menu">
            <a id="store-manage" href="javascript:;">
              <i class="fa fa-group" style="font-size: 12px;"></i>
              <span>지난 주문</span>
              </a>
            <ul class="sub">
              <li><a id="store-mng" href="Ooneday.store">당일주문</a></li>
              <li><a id="store-menu" href="Operiod.store">기간주문</a></li>
            </ul>
          </li>
          
          <p class="sidebar-title" >Self Service</p>
          <li class="sub-menu">
            <a id="user-manage" href="reviews.store">
              <i class="fa fa-user" style="font-size: 15px;"></i>
              <span>&nbsp;리뷰관리</span>
              </a>
          </li>
          <li class="sub-menu">
            <a id="store-manage" href="javascript:;">
              <i class="fa fa-group" style="font-size: 12px;"></i>
              <span>메뉴 관리</span>
              </a>
            <ul class="sub">
              <li><a id="store-mng" href="CRUD.store">메뉴관리 (추가 / 수정)</a></li>
              <li><a id="store-menu" href="pumjeol.store">품절 관리</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a id="order-manage" href="javascript:;">
              <i class="fa fa-shopping-cart"></i>
              <span>매장 정보 관리</span>
              </a>
            <ul class="sub">
              <li><a id="total-order" href="basic.store">기본정보 변경</a></li>
              <li><a id="store-order" href="manage.store">운영 정보 변경</a></li>
             </ul>
          </li>
          


          <p class="sidebar-title" >정산</p>
          <li class="sub-menu">
            <a id="settlement" class="active dcjq-parent" href="javascript:;">
              <i class=" fa fa-krw"></i>
              <span>정산</span>
              </a>
            <ul class="sub">
              <li><a id="pg-comm" href="SOneday.store">오늘 매출</a></li>
              <li><a class="active" id="pg-stlmt" href="SPeriod.store">기간 매출 정산</a></li>
             
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
     
        <section class="wrapper" style="height: 1500px;">
          <div class="col-lg-11" style="min-width: 500px;">
              <div class="card-header" style="font-size: 16px;">
                <i class="fa fa-plus-circle" style="font-size: 14px; "></i> 기간매출 정산
                <div class="row" style="margin-top: 15px;">
                    &nbsp;&nbsp;&nbsp; 기간을 설정해 주세요
                </div>
                <div class="row">
              <div class="col-lg-3"> 
              <input value="start date" id="datepicker1" width="200" />
                <script>
                  $('#datepicker1').datepicker();
              </script>
              </div>
                
              
              <div class="col-lg-3">
              <input value="end date" id="datepicker2" width="200" />
              <script>
                $('#datepicker2').datepicker();
            </script>
            </div>
        </div>
              </div>
  
              <div class="form-panel" style="margin-top:0;  border-radius: 0 0 10px 10px;">
                <form class="form-horizontal style-form" method="get">
                  <div class="row content-panel" style="border: none; box-shadow: none;padding: 0;margin:0 5px">
                    
                    <!-- /panel-heading -->
                    <div class="panel-body col-lg-12" style="padding: 0 11px 11px 11px;">
                      <div class="tab-content">
                        <!-- 메뉴관리 -->
                        <div id="menu" class="tab-pane active no-padding">
                          <div class="row content-panel" style="border: none; box-shadow: none;padding: 0;margin:0 5px">
                            <!--  / 옵션편집 / 대표메뉴 / 메뉴모음컷 / 주문안내 -->
                            <div class="panel-heading col-lg-12 col-md-12 col-sm-12 no-padding"
                              style="margin-bottom: 5px;">
                              <ul class="nav nav-tabs nav-justified">
                                <li class="active">
                                  <a data-toggle="tab" href="#faq__111">매출 내역</a>
                                </li>
                                <li>
                                  <a data-toggle="tab" href="#faq__222">일별 매출</a>
                                </li>
                                <li>
                                  <a data-toggle="tab" href="#faq__333">상품별 매출</a>
                                </li>
                                
                                
                              </ul>
                            </div>
                            <!-- /panel-heading -->
                            <div class="panel-body col-lg-12">
                              <div class="tab-content">
                                <!-- 메뉴편집 -->
                                <div id="faq__111" class="tab-pane active" >
                                
                                  <div class="row" >
                                      <div class="col-lg-12" >
                                  <table class=table15_2 style="width:100%; margin:15px 0; border:0;">
                                    <h4 style="font-size: 20px;">2022.01.01~2022.01.31</h4>  
                                    <thead>
                                      <tr>
                                          <th>항목</th><th>건수/금액</th>
                                      </tr>
                                  </thead>
                                  <tbody>
                                      <tr>
                                          <td>판매건수</td><td>95</td>
                                      </tr>
                                      <tr>
                                          <td>매출액</td><td>1,189,800</td>
                                      </tr>
                                      <tr>
                                          <td>환불건수</td><td>0</td>
                                      </tr>
                                      <tr>
                                          <td>환불금액</td><td>0</td>
                                      </tr>
                                  </tbody>
                                 
                                      
                                      </table>
                                  </div>
                              </div>
            
            </div>
                                <!-- /tab-pane -->
                                <!-- 옵션편집 -->
                                <div id="faq__222" class="tab-pane">

                                    <h4 style="font-size: 20px;">2022.01.01~2022.01.31</h4> 
                                    <div class="row">
                                    <div class="custom-bar-chart">
                                        <ul class="y-axis">
                                          <li><span>10.000</span></li>
                                          <li><span>8.000</span></li>
                                          <li><span>6.000</span></li>
                                          <li><span>4.000</span></li>
                                          <li><span>2.000</span></li>
                                          <li><span>0</span></li>
                                        </ul>
                                        <div class="bar">
                                          <div class="title">01.01</div>
                                          <div class="value tooltips" data-original-title="8.500" data-toggle="tooltip" data-placement="top">85%</div>
                                        </div>
                                        <div class="bar ">
                                          <div class="title">01.02</div>
                                          <div class="value tooltips" data-original-title="5.000" data-toggle="tooltip" data-placement="top">50%</div>
                                        </div>
                                        <div class="bar ">
                                          <div class="title">01.03</div>
                                          <div class="value tooltips" data-original-title="6.000" data-toggle="tooltip" data-placement="top">60%</div>
                                        </div>
                                        <div class="bar ">
                                          <div class="title">01.04</div>
                                          <div class="value tooltips" data-original-title="4.500" data-toggle="tooltip" data-placement="top">45%</div>
                                        </div>
                                        <div class="bar">
                                          <div class="title">01.05</div>
                                          <div class="value tooltips" data-original-title="3.200" data-toggle="tooltip" data-placement="top">32%</div>
                                        </div>
                                        <div class="bar ">
                                          <div class="title">01.06</div>
                                          <div class="value tooltips" data-original-title="6.200" data-toggle="tooltip" data-placement="top">62%</div>
                                        </div>
                                        <div class="bar">
                                          <div class="title">01.07</div>
                                          <div class="value tooltips" data-original-title="7.500" data-toggle="tooltip" data-placement="top">75%</div>
                                        </div>
                                        <div class="bar">
                                          <div class="title">01.08</div>
                                          <div class="value tooltips" data-original-title="8.500" data-toggle="tooltip" data-placement="top">85%</div>
                                        </div>
                                        <div class="bar ">
                                          <div class="title">01.09</div>
                                          <div class="value tooltips" data-original-title="5.000" data-toggle="tooltip" data-placement="top">50%</div>
                                        </div>
                                        <div class="bar ">
                                          <div class="title">01.10</div>
                                          <div class="value tooltips" data-original-title="6.000" data-toggle="tooltip" data-placement="top">60%</div>
                                        </div>
                                        <div class="bar ">
                                          <div class="title">01.11</div>
                                          <div class="value tooltips" data-original-title="4.500" data-toggle="tooltip" data-placement="top">45%</div>
                                        </div>
                                        <div class="bar">
                                          <div class="title">01.12</div>
                                          <div class="value tooltips" data-original-title="3.200" data-toggle="tooltip" data-placement="top">32%</div>
                                        </div>
                                        
                                      </div>
                                    </div>
                                    <div class="row">

                                        <div class="col-lg-12" >
                                        <table class=table15_2 style="width:100%; margin:15px 0; border:0;">
                                          
                                                <thead>
                                                <tr>
                                                    <th>날짜</th><th>판매수량</th><th>매출액</th>
                                                </tr>  
                                            </thead>
                                            <tbody>
                                            
                                                <tr>
                                                    <td>01.01</td><td>187</td><td>870,000</td>
                                                </tr>
                                                <tr>
                                                    <td>01.02</td><td>201</td><td>910,000</td>
                                                </tr>
                                                <tr>
                                                    <td>01.03</td><td>211</td><td>940,000</td>
                                                </tr>>
                                                <tr>
                                                    <td>01.04</td><td>231</td><td>1,180,000</td>
                                                </tr>
                                                <tr>
                                                    <td>01.05</td><td>231</td><td>1,180,000</td>
                                                </tr>
                                                <tr>
                                                    <td>01.06</td><td>231</td><td>1,180,000</td>
                                                </tr>
                                                <tr>
                                                    <td>01.07</td><td>231</td><td>1,180,000</td>
                                                </tr>
                                            </tbody>
                                                </table>
    
                                            
                                    
                                    </div>
                                    </div>
                                      
                                  <!-- /메뉴관리 -->
                                </div>
                                <!-- /tab-pane -->
                                <!-- 대표메뉴 -->
                                <div id="faq__333" class="tab-pane">
                                  <div class="row">
                                      <div class="col-lg-12" >
                                      <table class=table15_2 style="width:100%; margin:15px 0; border:0;">
                                        <h4 style="font-size: 20px;">2022.01.01~2022.01.31</h4> 

                                        <div class="card-body"><canvas id="myPieChart" width="200%" height="50"></canvas></div>
                                              <thead>
                                              <tr>
                                                  <th>메뉴명</th><th>판매수량</th><th>판매금액</th><th>비율</th>
                                              </tr>  
                                          </thead>
                                          <tbody>
                                          
                                              <tr>
                                                  <td>아메리카노</td><td>87</td><td>870,000</td><td>40%</td>
                                              </tr>
                                              <tr>
                                                  <td>바닐라라떼</td><td>10</td><td>10,000</td><td>12%</td>
                                              </tr>
                                              <tr>
                                                  <td>밀크쉐이크</td><td>9</td><td>90,000</td><td>11%</td>
                                              </tr>>
                                              <tr>
                                                  <td>카페라떼</td><td>8</td><td>80,000</td><td>10%</td>
                                              </tr>
                                          </tbody>
                                              </table>
  
                                          
                                  
                                  </div>
                              </div>
                                  <!-- /메뉴관리 -->
                                </div>
                                <!-- /tab-pane -->
                                
                                
                                
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
        </section>
        <!-- /wrapper -->
      </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->



    <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights <strong>WalkingOrder</strong>. All Rights Reserved
        </p>
        <a href="../index.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="resources/assets/js/admin/bootstrap/js/bootstrap.min.js"></script>
  <script src="resources/assets/js/admin/jquery-ui-1.9.2.custom.min.js"></script>
  <script src="resources/assets/js/admin/jquery.ui.touch-punch.min.js"></script>
  <script class="include" type="text/javascript" src="resources/assets/js/admin/jquery.dcjqaccordion.2.7.js"></script>
  <script src="resources/assets/js/admin/jquery.scrollTo.min.js"></script>
  <script src="resources/assets/js/admin/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="resources/assets/js/admin/common-scripts.js"></script>
  <!--script for this page-->
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <!--script for chart-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
    <script src="resources/assets/demo/chart-area-demo.js"></script>
    <script src="resources/assets/demo/chart-bar-demo.js"></script>
    <script src="resources/assets/demo/chart-pie-demo.js"></script>
  
</body>

</html>
    