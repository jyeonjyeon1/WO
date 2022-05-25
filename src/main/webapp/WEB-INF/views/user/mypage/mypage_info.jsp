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
<script>
	var ch2, ch3,ch6;
	ch2 = true;//regPassword
	ch3 = true;//Passwork recheck match
	ch6 = true;//regEmail
	// 정규식 친구들
	var regId = /^[a-zA-Z0-9]{4,14}$/;
	var regPassword = /([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/;
	var regName = /^[가-힣]+$/;
	
	var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;

	jQuery(document).ready(
			function() {
				 

				//Check valid Password
				$("#u_password").on(
						"propertychange change keyup paste input",
						function() {
							ch2 = false;
							var pwd = $("#u_password").val();
							
							if (pwd.length > 3
									&& regPassword.test(pwd) == false) {
								$(".valid_password").addClass('active');
								ch2 = false;
							} else {
								$(".valid_password").removeClass('active');
								ch2 = true;
							}
						});

				//Check pass & passcheck match
				$("#passCheck").on("propertychange change keyup paste input",
						function() {
					ch3 = false;
							var pw = $("#u_password").val();
							var pwc = $("#passCheck").val();
							if (pwc != '' && pw != pwc) {
								$(".match_password").addClass('false');
								ch3 = false;
							} else {
								$(".match_password").removeClass('false');
								ch3 = true;
							}
						});

			

				$("#u_email").on(
						"propertychange change keyup paste input",
						function() {
							ch6 = false;
							var email = $("#u_email").val();

							if (email.length > 1
									&& regEmail.test(email) == false) {
								$(".email_form").addClass('active');
								ch6 = false;
							} else {
								$(".email_form").removeClass('active');
								ch6 = true;
							}
						});

			});

	function finalCheck() {
		if (ch2 && ch3 && ch6) {
			document.regForm.submit();
		} else {
			Swal.fire({
				icon : "error",
				text : "어딘가 잘못 작성"
			});
			console.log("실패")
			return false;
		}
	}
	
	


</script>
</head>
<body>
	<!-- header import -->
	<%@ include file="/WEB-INF/views/user/inc/header.jsp"%>

	<div class="container"
		style="margin: 30PX auto 50px; max-width: 420px;">
		<h4 class="text-center mt-60 mb-60" style="color: #6f6f6f">회원수정</h4>
		<form action="updateUser.user" method="post">
			<div class="row">
                
                <h5 class="col-12 mt-10">
                <input class="reg-form-control" style="color:#6f6f6f" type="text" id="u_id" name="u_id" value="${userSession.u_id}" readonly="readonly"/></h5>
            			
            </div>
			<div class="row">
				<div class="col-12 mt-10">
					<input type="password" name="u_password" id="u_password"
						 class="reg-form-control" >
					<p class="valid_password">특수기호 대소문자 어쩌구</p>
				</div>
			</div>
			<div class="row">
				<div class="col-12 mt-10">
					<input type="password" id="passCheck" 
						class="reg-form-control">
					<p class="match_password">비밀번호가 일치하지 않습니다.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-12 mt-10">
					<input type="text" style="color:#6f6f6f" id="u_name" name="u_name" value="${userSession.u_name}"
						class="reg-form-control" readonly="readonly">
				</div>
			</div>
			<div class="row">
				<div class="col-9 mt-10">
					<input type="text" id="u_tel" name="u_tel"
						 class="reg-form-control" value="${userSession.u_tel}">
					<p class="tel_form">전화번호 형식을 맞춰주세요</p>
				</div>
				<div class="col-3 mt-10" style="padding-left: 0; color:#6f6f6f">
					<button type="button" onclick="idCheck()" class="reg-form-control" readonly="readonly">번호
						인증</button>
				</div>
			</div>
			<div class="row">
				<div class="col-12 mt-10">
					<input type="text" id="u_email" name="u_email"
						 class="reg-form-control" value="${userSession.u_email}">

					<p class="email_form">이메일 형식을 맞춰주세요</p>
				</div>
			</div>
			<br>
			
			<div class="row">
				<div class="col-4 mt-10">
					<label class="regis_label" style="font-size: 12px;">SMS 수신
						동의</label>
				</div>
				<div class="col-7" style="margin-top: 15px;">
					<label class="radio-inline" style="font-size: 12px;"> <input
						type="radio" name="u_sms_usable" value="true"
						checked> 동의
					</label> <label class="radio-inline"
						style="font-size: 12px; padding-left: 20px"> <input
						type="radio" name="u_sms_usable" value="false">
						비동의
					</label>
				</div>
			</div>
			<div class="row">
				<div class="col-4">
					<label class="regis_label" style="font-size: 12px;">Email
						동의</label>
				</div>
				<div class="col-7" style="margin-top: 5px;">
					<label class="radio-inline" style="font-size: 12px;"> <input
						type="radio" name="u_email_usable" value="true"
						checked> 동의
					</label> <label class="radio-inline"
						style="font-size: 12px; padding-left: 20px"> <input
						type="radio" name="u_email_usable" value="false">
						비동의
					</label>
				</div>
			</div>
			<br>
			<div class="row">
				<button type="submit" id="submit" onclick="finalCheck()"
					class="btn btn-outline-warning" style="margin: auto; width: 60%;">회원수정
					&nbsp;</button>
			</div>

			

		</form>
	</div>





	<!-- footer import -->
	<%@ include file="/WEB-INF/views/user/inc/footer.jsp"%>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>