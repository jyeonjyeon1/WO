<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <title>워킹오더 매장관리자 페이지</title>

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
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<style>
.admin__name {
	margin: 23px;
	color: white;
	font-weight: 700;
	font-size: 13px;
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
        <div class="openup tooltips"
			style="background-image: url(resources/assets/images/admin/logo/logo_white.svg);"
			data-placement="right" data-original-title="메뉴 여/닫기"></div>
      </div>
      <!--logo start-->
      <a href="index.store" class="logo"><b>walking<span>order</span></b></a>
      <!--logo end-->
      <div class="nav notify-row" id="top_menu">
        
      </div>
 

    <!--logout-->
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
        	<li class="admin__name">${storeSession.si_name}</li>
          <li><a class="logout" href="logout.store">Logout</a></li>
        </ul>
      </div>
    </header>    <!--header end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->

  <script src="resources/assets/js/admin/datatable/datatable-modified.js" crossorigin="anonymous"></script>
  <script src="resources/assets/js/admin/datatable/datatables-simple-demo.js"></script>
</body>

</html>
