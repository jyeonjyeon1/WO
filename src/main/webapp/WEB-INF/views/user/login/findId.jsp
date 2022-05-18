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
	var ch3;
	ch3 = true;//Passwork recheck match
    var regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/; //no need if we get authentication
	// 정규식 친구들

	jQuery(document).ready(
			function() {
				 
                $("#u_tel").on(
						"propertychange change keyup paste input",
						function() {
							var tel = $("#u_tel").val();
							if (tel.indexOf('-') != -1) {
								$(".tel_form").addClass('active');
								ch5 = false;
							} else if (tel.length > 7
									&& regPhone.test(tel) == false) {
								$(".tel_form").addClass('active');
								ch5 = false;
							} else {
								$(".tel_form").removeClass('active');
								ch5 = true;
							}
						});				

			});

	function finalCheck() {
		if (ch3) {
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
		<h4 class="text-center mt-60 mb-60" style="color: #6f6f6f">아이디 찾기</h4>
		<form action="updateUser.user" method="post">
			             
               
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
				<button type="submit" id="submit" onclick="finalCheck()"
					class="btn btn-outline-warning" style="display: inline-block; margin-bottom: 10px; width: 60%;">아이디 찾기
					&nbsp;</button>
                <div style=" text-align: center;">
                        <button class="cencle btn btn-danger col-sm-6" style="display: inline-block; margin:auto; width: 60%;" type="button">취소</button></div>
                </div>
            </div>
			</div>

		</form>
	</div>


	<!-- footer import -->
	<%@ include file="/WEB-INF/views/user/inc/footer.jsp"%>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>