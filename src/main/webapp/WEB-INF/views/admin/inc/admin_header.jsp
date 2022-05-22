<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!-- ========================= CSS here ========================= -->
<!-- Bootstrap core CSS -->
<link href="resources/assets/js/admin/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!--external css-->
<link href="resources/assets/js/admin/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
<!-- Custom styles for this template -->
<link href="resources/assets/css/admin/style.css" rel="stylesheet">
<link href="resources/assets/css/admin/style-responsive.css"
	rel="stylesheet">
	<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<style>
.admin__name {
	margin: 23px;
	color: white;
	font-weight: 700;
	font-size: 13px;
}
</style>
<!--header start-->
<header class="header black-bg">
	<div class="sidebar-toggle-box">
		<div class="openup tooltips"
			style="background-image: url(resources/assets/images/admin/logo/logo_white.svg);"
			data-placement="right" data-original-title="메뉴 여/닫기"></div>
	</div>
	<!--logo start-->
	<a href="index.admin" class="logo"><b>walking<span>order</span></b></a>
	<!--logo end-->
	<div class="nav notify-row" id="top_menu"></div>
	<div class="top-menu">
		<ul class="nav pull-right top-menu">
			<li class="admin__name">${a_name}</li>
			<li><a class="logout" onclick="logout()" href="/logout.admin">Logout</a></li>
		</ul>
	</div>
</header>
<script>
const naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "22RAYixMi5pHSV4f5s4t",
			callbackUrl: "http://localhost:8080/login.admin",
			loginButton: {color: "green", type: 1, height: 40}
		}
	);
naverLogin.init(); // 로그인 설정z

function logout(){
	naverLogin.logout();
}
</script>
<!--header end-->