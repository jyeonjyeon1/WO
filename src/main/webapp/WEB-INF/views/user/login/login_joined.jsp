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
            <label class="form-control text-center" style="padding-top:20px;padding-bottom:20px;">
            	가입을 축하합니다<br>부잉
            </label><br><br>
            <button type="button" onclick="location.href='login.user'" class="col-6 btn btn-warning" style="width:47%;color:#fff;">
            	<i class="fa fa-lock"></i> 로그인 &nbsp;
            </button>
            <button type="button" onclick="location.href='index.user'" class="col-6 btn btn-outline-warning" style="float:right;width:47%;color:#000;">
            	<i class="fa fa-home"></i> 홈으로 &nbsp;
            </button>
            
    </div>
    <!-- footer import -->
    <%@ include file="/WEB-INF/views/user/inc/footer.jsp" %>
</body>
</html>