<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="kor">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Walking Order</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="resources/assets/images/logo/logo_only.svg" rel="icon" />
    <!-- ========================= CSS here ========================= -->

    <!-- ========================= JS here ========================= -->
</head>

<body>
    <!-- header import -->
    <%@ include file="/WEB-INF/views/user/inc/header.jsp" %>
    <div class="container" style="margin: 30PX auto 50px; max-width: 400px;">
        <h1 class="text-center mt-60 mb-30">
				<img src="resources/assets/images/logo/joined_congrats_coffee.png"
					class="img-circle" width="70%">
			</h1>
            <label class="form-control text-center" style="padding-top:20px;">가입을 축하합니다<br>부잉</label><br>
            <h4 class="text-center mt-40 mb-20" style="color:#6f6f6f">소셜 로그인</h4>
            <div class="row" style="max-width: 400px;margin: auto;">
                <button class="kaka_login" type="button"></button>
                <button class="naver_login" type="button"></button>
                <button class="google_login" type="button"></button>
            </div>
    </div>
    <!-- footer import -->
    <%@ include file="/WEB-INF/views/user/inc/footer.jsp" %>
</body>
</html>