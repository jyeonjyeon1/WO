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

<!-- 테이블용 css -->
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />

  
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
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="openup tooltips" data-placement="right" data-original-title="메뉴 여/닫기" ></div>
      </div>
      <!--logo start-->
      <a href="../index.html" class="logo"><b>walking<span>order</span></b></a>
      <!--logo end-->
      <div class="nav notify-row" id="top_menu">
        
      </div>
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="../login.html">Logout</a></li>
        </ul>
      </div>
    </header>    <!--header end-->
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
            <a href="../index.html">
              <i class="fa fa-h-square"></i>
              <span>HOME</span>
              </a>
          </li>
          <li class="sub-menu">
            <a class="active dcjq-parent" href="javascript:void(0);">
              <i class="fa fa-h-square"></i>
              <span>지난주문</span>
              </a>
              <ul class="sub">
                <li><a id="store-mng" href="/views_store/order/lastOrder_oneday.html">당일주문</a></li>
                <li><a class="active" id="store-menu" href="/views_store/order/lastOrder_period.html">기간주문</a></li>
              </ul>
          </li>
          
          <p class="sidebar-title" >Self Service</p>
          <li class="sub-menu">
            <a id="user-manage" href="/views_store/reviews/reviews.html">
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
             <li><a id="store-mng" href="/views_store/menu/menu_crud.html">메뉴관리 (추가 / 수정)</a></li>
              <li><a id="store-menu" href="/views_store/menu/menu_pumjeol.html">품절 관리</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a id="order-manage" href="javascript:;">
              <i class="fa fa-shopping-cart"></i>
              <span>매장 정보 관리</span>
              </a>
            <ul class="sub">
              <li><a id="total-order" href="/views_store/info/info_basic.html">기본정보 변경</a></li>
              <li><a id="store-order" href="/views_store/info/info_manage.html">운영 정보 변경</a></li>
             
            </ul>
          </li>
          

          <p class="sidebar-title" >정산</p>
          <li class="sub-menu">
            <a id="settlement" href="javascript:;">
              <i class=" fa fa-krw"></i>
              <span>정산</span>
              </a>
            <ul class="sub">
             <li><a id="pg-comm" href="/views_store/calculate/calculate_today.html">오늘 매출</a></li>
              <li><a id="pg-stlmt" href="/views_store/calculate/calculate_period.html">기간 매출 정산</a></li>
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
        <i class="fa fa-plus-circle" style="font-size: 14px; margin-bottom: 15px; "></i>지난주문 관리
        <div class="row">
         
          <h4> &nbsp;&nbsp;&nbsp; 기간을 설정해 주세요 :)</h4>
        </div> 
        <div class="row">
        <div class="col-lg-3" style="margin-bottom: 20px;"> 
<input value="start date" id="datepicker1" width="200" />
<script>
$('#datepicker1').datepicker();
</script>
</div>
<div class="col-lg-3" style="margin-bottom: 20px;"> 
    <input value="end date" id="datepicker2" width="200" />
    <script>
    $('#datepicker2').datepicker();
    </script>
    </div>
        
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
        <tr>
          <td>1</td>
          <td>2022.05.01 18:45</td>
          <td>딸기주스 외 2개</td>
          <td>15300원</td>
          <td>으라챠챠</td>
          <td> <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></td>
          
          
        </tr>
        <tr>
          <td>2</td>
          <td>2022.05.02 11:45</td>
          <td>[아메리카노 100원 이벤트]</td>
          <td>100원</td>
          <td>나나</td>
          <td> <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></td>
          
          
        </tr>
        <tr>
          <td>3</td>
          <td>2022.05.02 13:36</td>
          <td>아메리카노 외 2개</td>
          <td>4200원</td>
          <td>어쩔팁이</td>
          <td> <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></td>
          
          
        </tr>
        <tr>
          <td>4</td>
          <td>2022.05.03 18:45</td>
          <td>딸기주스 외 2개</td>
          <td>15300원</td>
          <td>으라챠챠</td>
          <td> <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></td>

        </tr>
         <tr>
          <td>2</td>
          <td>2022.05.02 11:45</td>
          <td>[아메리카노 100원 이벤트]</td>
          <td>100원</td>
          <td>나나</td>
          <td> <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></td>
          
          
        </tr>
         <tr>
          <td>2</td>
          <td>2022.05.02 11:45</td>
          <td>[아메리카노 100원 이벤트]</td>
          <td>100원</td>
          <td>나나</td>
          <td> <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></td>
          
          
        </tr>
         <tr>
          <td>2</td>
          <td>2022.05.02 11:45</td>
          <td>[아메리카노 100원 이벤트]</td>
          <td>100원</td>
          <td>나나</td>
          <td> <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></td>
          
          
        </tr>
         <tr>
          <td>2</td>
          <td>2022.05.02 11:45</td>
          <td>[아메리카노 100원 이벤트]</td>
          <td>100원</td>
          <td>나나</td>
          <td> <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></td>
          
          
        </tr>
         <tr>
          <td>2</td>
          <td>2022.05.02 11:45</td>
          <td>[아메리카노 100원 이벤트]</td>
          <td>100원</td>
          <td>나나</td>
          <td> <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></td>
          
          
        </tr>
         <tr>
          <td>2</td>
          <td>2022.05.02 11:45</td>
          <td>[아메리카노 100원 이벤트]</td>
          <td>100원</td>
          <td>나나</td>
          <td> <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></td>
          
          
        </tr>
         <tr>
          <td>2</td>
          <td>2022.05.02 11:45</td>
          <td>[아메리카노 100원 이벤트]</td>
          <td>100원</td>
          <td>나나</td>
          <td> <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></td>
          
          
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
  
  <script src="resources/assets/js/admin/datatable/datatable-modified.js" crossorigin="anonymous"></script>
  <script src="resources/assets/js/admin/datatable/datatables-simple-demo.js"></script>

</body>

</html>
