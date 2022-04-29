<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <title>워킹오더 관리자 페이지</title>
  
    <!-- Favicons -->
    <link href="resources/assets/images/admin/logo/logo_only.svg" rel="icon">
  
<!-- ========================= CSS here ========================= -->
  <!-- Bootstrap core CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" >
  <!--external css-->
  <link href="resources/assets/js/admin/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="resources/assets/css/admin/style.css" rel="stylesheet">
  <link href="resources/assets/css/admin/style-responsive.css" rel="stylesheet">

</head>

<body style="background-color: #0A2533;">
  <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
  <div id="login-page">
    <div class="container">
      <form class="form-login" action="index.admin">
        <h2 class="form-login-heading"><img src="resources/assets/images/admin/logo/logo_white.svg" style="width:28px">&nbsp; walking order admin</h2>
        <div class="login-wrap">
          <input type="text" class="form-control" placeholder="아이디" style="font-size: 12px;" autofocus>
          <br>
          <input type="password" class="form-control" placeholder="비밀번호" style="font-size: 12px;">
          <label class="checkbox">
            <input type="checkbox" value="remember-me" style="font-size: 12px; margin-top: 2px; margin-left: 0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아이디/비밀번호 저장
            <span class="pull-right">
            </span>
            </label>
          <button class="btn btn-theme btn-block" type="submit"><i class="fa fa-lock"></i> 로그인</button>
          <hr>
          <div class="login-social-link centered">
            <p>소셜 로그인</p>
            
            <button class="btn btn-naver" type="submit"><b>N</b> Naver</button>
            <button class="btn btn-google" type="submit"><i class="fa fa-google"></i> Google</button>
            <button class="btn btn-facebook" type="submit"><i class="fa fa-facebook"></i> Facebook</button>
            </div>
          
        </div>
      </form>
    </div>
  </div>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="resources/assets/js/jquery-3.6.0.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
