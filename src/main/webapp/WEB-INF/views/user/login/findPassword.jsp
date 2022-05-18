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
<style>
/* number에 위아래 버튼 삭제 */
input::-webkit-inner-spin-button {
	appearance: none;
	-moz-appearance: none;
	-webkit-appearance: none;
}

.idCheck_label_false, .idCheck_label_true, .match_password, .email_form,
	.tel_form, .valid_password, .regName_label, .idCheck_label_joongbok {
	display: none;
}

.idCheck_label_false.active, .email_form.active, .tel_form.active,
	.match_password.false, .valid_password.active, .regName_label.active,
	.idCheck_label_joongbok.active {
	display: block;
	padding-left: 5px;
	color: red;
}

.idCheck_label_true.active {
	display: block;
	padding-left: 5px;
	color: blue;
}

.reg-form-control {
	display: block;
	width: 100%;
	padding: .8rem 1rem;
	font-size: 12px;
	font-weight: 400;
	line-height: 1.5;
	color: #212529;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	border-radius: .25rem;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out
}

.reg-accept-btn {
	display: block;
	width: 100%;
	padding: .8rem 0 .8rem 1rem;
	text-align: left;
	font-size: 12px;
	font-weight: 400;
	line-height: 1.5;
	color: #212529;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	border-radius: .25rem;
}

.reg-accept-btn:hover {
	cursor: pointer;
	box-shadow: 0 1px 3px rgba(0, 12, 173, 0.4);
	background-color: rgb(249, 248, 255);
}
</style>
<!-- ========================= JS here ========================= -->
<script src="resources/assets/js/jquery-3.6.0.js"></script>
<script src="resources/assets/js/main.js"></script>

<script src="resources/assets/js/jquery-3.6.0.js"></script>
<script>
	
</script>
</head>
<body>
	<!-- header import -->
	<%@ include file="/WEB-INF/views/user/inc/header.jsp"%>

	<div class="container"
		style="margin: 30PX auto 50px; max-width: 420px;">
		<h4 class="text-center mt-60 mb-60" style="color: #6f6f6f">비밀번호 찾기</h4>
		<form action="findPassword.user" method="post" name="findform">
			             
            <div class="col-12 mt-10">
					<input type="text" name="u_id" id="u_id" placeholder="아이디"
						class="reg-form-control" autofocus />
				</div> 
			<div class="row">
				<div class="col-9 mt-10">
					<input type="text" id="u_tel" name="u_tel"
						 class="reg-form-control" placeholder="전화번호( - 제외)">
					<p class="tel_form">전화번호 형식을 맞춰주세요</p>
				</div>
				<div class="col-3 mt-10" style="padding-left: 0; color:#6f6f6f">
					<button type="button" onclick="idCheck()" class="reg-form-control" readonly="readonly">번호
						인증</button>
				</div>
			</div>
			
			
			<br>
			<div class="row">
                <div style=" text-align: center;">
				<button type="submit" id="submit" 
					class="btn btn-outline-warning" style="display: inline-block; margin-bottom: 10px; width: 60%;" value="check">비밀번호 찾기
					&nbsp;</button>
                <div style=" text-align: center;">
                        <button class="cencle btn btn-danger col-sm-6" style="display: inline-block; margin:auto; width: 60%;" type="button">취소</button></div>
                </div>
            </div>
			</div>
		<!-- 정보가 일치하지 않을 때-->
		<c:if test="${check == 1}">
			<script>
				opener.document.findform.u_id.value = "";
				opener.document.findform.u_tel.value = "";
			</script>
			<label>일치하는 정보가 존재하지 않습니다.</label>
		</c:if>

		<!-- 아이디 비밀번호가 일치 할 때 -->
		<c:if test="${check == 0 }">
		<div>
			<label>비밀번호를 변경해주세요.</label>
		</div>
		<div class="form-label-group">
			<input type="hidden" id="id" name="updateid" value="${updateid}">		
			<input type="password" id="password" name="pwd" class="form-control"/>
			<label for="password">password</label>
		</div>
		
		<div class="form-label-group">
			<input type="password" id="confirmpassword" name="confirmpwd" class="form-control"/>
			<label for="confirmpassword">confirm password</label>
		</div>
		
		<div class="form-label-group">
				<input class="btn btn-lg btn-secondary btn-block text-uppercase"
					type="button" value="update password" onclick="updatePassword()">
			</div>
		</c:if>
		</form>
		
		<script type="text/javascript">
		function updatePassword(){
			if(document.findform.pwd.value==""){
				alert("비밀번호를 입력해주세요.");
				document.findform.pwd.focus();
			} else if(document.findform.pwd.value != document.findform.confirmpwd.value){
				alert("비밀번호가 일치하지 않습니다.");
				document.findform.confirmpwd.focus();
			} else {
				console.log('비밀번호일치');
				document.findform.action="updatePassword.user";
				document.findform.submit();
			}
		}
	</script>
	</div>


	<!-- footer import -->
	<%@ include file="/WEB-INF/views/user/inc/footer.jsp"%>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>