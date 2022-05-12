<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>가게 등록 폼</title>

<!-- Favicons -->
<link href="resources/assets/images/admin/logo/logo_only.svg" rel="icon">
<link href="resources/assets/images/admin/apple-touch-icon.png"
	rel="apple-touch-icon">
<script src="https://sdk.amazonaws.com/js/aws-sdk-2.891.0.min.js"></script>
<!-- Custom styles for this template -->
<link href="resources/assets/js/admin/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!--external css-->
<link href="resources/assets/js/admin/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
<!-- Custom styles for this template -->
<link href="resources/assets/css/admin/style.css" rel="stylesheet">
<link href="resources/assets/css/admin/style-responsive.css"
	rel="stylesheet">

<style>
.comp__area{
	margin:80px auto;
}
.text__input{
	border:1px solid gray;
	border-radius:10px;
	background:white;
	height:200px;
	width:100%;
}
.inText{
	 max-width:450px;
	 margin-left:25px;
}
.inText h3{
	text-align: -webkit-center;
}
</style>
</head>

<body>
	<section id="container">
	<header class="header black-bg">
      <div class="sidebar-toggle-box">
        <img src="resources/assets/images/admin/logo/logo_white.svg" width="25">
      </div>
      <!--logo start-->
      <a class="logo"><b>walking<span>order</span></b></a>
      <!--logo end-->
    </header> 
		<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section class="container">
				<div class="comp__area" style="max-width:500px">
					<div class="text__input">
						<div class="inText">
							<h3>입점 신청이 완료되었습니다</h3>
							<br>
							<p> 입력하신 정보 및 서류 검토하여 영업일 기준 <strong>1~3일</strong> 내로 연락드리겠습니다</p>
							<p> 결과는 발신번호 <strong>010-2776-4122</strong>로 안내드리며, 부족한 서류가 있을 경우 별도 안내드리니 문자 확인 바랍니다.</p>
							<p> 감사합니다.</p>
						</div>
					</div>
				</div>
			<!-- /wrapper -->
		</section>
		<!-- /MAIN CONTENT -->
		<!--main content end-->



		<!-- 푸더 -->
		<section id="container">
			<footer class="site-footer">
				<div class="text-center">
					<p>
						&copy; Copyrights <strong>WalkingOrder</strong>. All Rights
						Reserved
					</p>
				</div>
			</footer>
			<!--footer end-->
		</section>
		<!--footer end-->
	</section>
	<!-- js placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="resources/assets/js/admin/bootstrap/js/bootstrap.min.js"></script>


</body>

</html>