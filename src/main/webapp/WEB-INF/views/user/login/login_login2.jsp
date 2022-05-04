<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script src="resources/assets/js/jquery-3.6.0.js"></script>

    <script type="text/javascript">

    </script>
</head>

<body>
    <!-- header import -->
    <%@ include file="/WEB-INF/views/user/inc/header.jsp" %>

	<!-- 쿠키여부에 따른 checked 등 -->
	<c:if test="${not empty cookie.rememberId}">
		<c:set value="checked" var="checked"/>	
	</c:if>
    <div class="container" style="margin: 30PX auto 50px; max-width: 400px;">
        <h3 class="text-center mt-60 mb-60" style="color:#6f6f6f">로그인</h3>
        <form>
	            <input type="text" class="form-control" id="u_id" name="u_id" placeholder="아이디" value="${cookie.rememberId.value}">
	            <input type="password" class="form-control" id="u_password" name="u_password" placeholder="비밀번호" style="margin-top: 15px;">
	            
            <label class="checkbox" style="margin-top: 5px;">
                <input type="checkbox" id="rememberId" name="rememberId" ${checked} style="font-size: 12px; margin-top: 2px; margin-left: 0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아이디 저장<br><br>
            </label>
            <button type="button" onclick="finalCheck()" class="btn btn-outline-warning" style="width: 100%;"><i class="fa fa-lock"></i> 로그인 &nbsp;</button>
            <h4 class="text-center mt-40 mb-30" style="color:#6f6f6f">소셜 로그인</h4>
            <div class="row" style="max-width: 400px;margin: auto;">
                <button class="kaka_login" type="button"></button>
                <button class="naver_login" type="button"></button>
                <button class="google_login" type="button"></button>
            </div>
            <div class="col-sm-12" style="max-width: 170px;margin:30px auto;">
                <input type="button" class="login_bottom_btn" value="아이디/비밀번호" style="width: 50px;">
                <input type="button" class="login_bottom_btn" value="회원가입" style="width: 70px;">
            </div>
            
        </form>
    </div>
    <!-- footer import -->
    <%@ include file="/WEB-INF/views/user/inc/footer.jsp" %>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
ch1 = false;
var u_id_input = "";
var u_pw_input = "";

jQuery(document).ready(function() {
	$("#u_id").on("propertychange change keyup paste input", function() {
		u_id_input = $("#u_id").val();
		u_pw_input = $("#u_password").val();
		onEnter();
	});
	$("#u_password").on("propertychange change keyup paste input", function() {
		u_id_input = $("#u_id").val();
		u_pw_input = $("#u_password").val();
		onEnter();
	});
});
function loginCheck(){
	var rememberId = $("#rememberId").is(":checked");
	var param = {"u_id":u_id_input, "u_password":u_pw_input, "rememberId":rememberId}
	console.log(rememberId);
	$.ajax({
		type: "post",
		url: "/loginCheck.user",
		data:JSON.stringify(param),
		dataType: "json",
        contentType: "application/json",
        success:function(data){
        	console.log("오키")
        	if(data==1){
        		location.href="/index.user";
        	}else{
        		Swal.fire({
    				icon : "error",
    				text : "일치 계정 없음"
    			});
        	}
        },
        error:function(data){
        	console.log("로그인 통신x")
        }
        
	});//ajax 끝
}

function finalCheck(){
	console.log(u_id_input+"   "+u_pw_input);
	if(u_id_input != "" && u_pw_input !=""){//둘다 입력한 경우 ajax로 체크
		loginCheck();//아이디 비번 일치 확인
		console.log("아디비번확인중");
	}else if(u_id_input != "" && u_pw_input == ""){
		Swal.fire({
			icon : "error",
			text : "비밀번호 미입력"
		});
	} else if(u_id_input == "" && u_pw_input != ""){
		Swal.fire({
			icon : "error",
			text : "아이디 미입력"
		});
	} else {
		Swal.fire({
			icon : "error",
			text : "둘다 미입력 미입력"
		});
	}
}
//엔터에 접수
function onEnter(){
	var keyCode = window.event.keyCode;
	if(keyCode == 13){
		finalCheck();
	}
}
</script>
</body>
</html>