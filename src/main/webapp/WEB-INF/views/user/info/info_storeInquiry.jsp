<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>워킹오더 입점문의</title>
<link href="resources/assets/images/logo/logo_only.svg" rel="icon" />
<style>
.p_mb {
	margin-bottom: 50px;
}

.email_form, .tel_form, .regName_label {
	display: none;
}

.email_form.active, .tel_form.active, .regName_label.active {
	display: block;
	padding-left: 5px;
	color: red;
}
</style>
</head>
<body>
	<%@ include file="../inc/header.jsp"%>
	<div class="container" style="max-width: 500px;">
		<div class="col-12">
			<h3 class="text-center mt-50 mb-50" style="color: #6f6f6f">입점 문의</h3>

			<form name="storeInqForm" action="/storeInquiry.user" method="post">
				<div class="form-group row">
					<lable class="col-4 col-form-label "
						style="font-size: 16px; font-weight: 700;">가게명 </lable>
					<div class="col-7">
						<input type="text" class="form-control round-form "
							placeholder="가게명" name="f_code" autofocus><br>
					</div>
				</div>
				<div class="row">
					<hr class="col-12">
				</div>

				<div class="form-group row">
					<lable class="col-4 col-form-label "
						style="font-size: 16px; font-weight: 700;">담당자명 </lable>
					<div class="col-7">
						<input type="text" class="form-control round-form "
							placeholder="담당자명" name="f_name" id="f_name">
						<p class="regName_label">이름 형식을 맞춰주세요</p>
						<br>
					</div>
				</div>
				<div class="row">
					<hr class="col-12">
				</div>


				<div class="form-group row">
					<lable class="col-4 col-form-label "
						style="font-size: 16px; font-weight: 700;">전화번호 </lable>
					<div class="col-7">
						<input type="text" class="form-control round-form "
							placeholder="전화번호 ( - 제외)" name="f_tel" id="f_tel">
						<p class="tel_form">전화번호 형식을 맞춰주세요</p>
						<br>
					</div>
				</div>
				<div class="row">
					<hr class="col-12">
				</div>

				<div class="form-group row">
					<lable class="col-4 col-form-label "
						style="font-size: 16px; font-weight: 700;">이메일 </lable>
					<div class="col-7">
						<input type="text" class="form-control round-form "
							placeholder="이메일" name="f_email" id="f_email">
						<p class="email_form">이메일 형식을 맞춰주세요</p>
						<br>
					</div>
				</div>
				<div class="row">
					<hr class="col-12">
				</div>

				<div class="form-group row">
					<lable class="col-4 col-form-label "
						style="font-size: 16px; font-weight: 700;">내용 </lable>
					<div class="col-7">
						<input type="text" class="form-control round-form "
							placeholder="소개" name="f_title" maxlength="50"><br>
					</div>
				</div>
				<div class="row">
					<hr class="col-12">
				</div>

				<div class="form-group row">

					<div class="col-12">
						<div
							class="container-md-will border rounded flex-md-row mt-15 mb-10 shadow-sm "
							style="height: 200px;">
							<ul style="margin: 20px;">
								<li><a name="a1" class=" mb-4 text-secondary"
									style="font-size: 16px; font-weight: 600;">개인정보 수집 동의.</a>
									<p>당사의 온라인 상담 업무 처리를 위해서는 『개인정보보호법』 제15조 제1항 제1호 및</p>
									<p>제24조 제1항 제1호, 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』 제22조 제1항 및</p>
									<p>제24조의 2 제1항에 따라 아래 사항에 대한 고객님의 동의가 필요합니다.</p> <br>

									<p>워킹오더(www.walkingorder.com)는 이용자에 대하여 보다 더 질 높은 서비스 제공등을
										위해 아래와 같이 이용자의 개인정보를 수집하고 있습니다. 정보주체로부터 개인정보를 수집할 때 동의 받은 개인정보
										보유․이용기간 또는 법령에 따른 개인정보 보유․이용기간 내에서 개인정보를 처리․보유합니다.</p> <br>
									<p>1. 개인정보 항목</p>
									<p>이름, 메일주소, 휴대전화번호, 접속IP정보, 쿠키, 서비스 이용 기록, 접속 로그.</p> <br>
									<p>2. 수집목적</p>
									<p>온라인 문의 접수 및 상담 진행</p> <br>
									<p>3. 보유.이용기간</p>
									<p>개인정보 수집ㆍ이용에 관한 동의일로부터 문의 목적 달성 시점까지</p>
									<p>(단, 관련 법규에 별도 규정이 있는 경우, 해당 법규가 고지하는 기간에 따라 보유)</p> <br>
									<p>4. 동의를 거부할 권리 및 동의를 거부할 경우의 불이익</p>
									<p>고객님은 위 사항에 동의를 거부할 권리가 있으나, 개인정보는 온라인 상담 업무 처리를 위해
										필수적이므로 개인정보 수집 및 이용에 동의하셔야만 문의 접수가 가능합니다.</p> <br>
									<p>워킹오더는 이용자의 별도 동의가 있는 경우나 법령에 규정된 경우를 제외하고는 이용자의 개인정보를
										제3자에게 제공하지 않습니다.</p>
									</p> <br> <br> <br></li>

							</ul>

						</div>
						<label class="checkbox" style="margin-top: 5px;"> <input
							type="checkbox" id="personalInfoCheck" value="check"
							style="font-size: 12px; margin-top: 2px; margin-left: 0px;">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;개인정보 수집동의<br> <br>
						</label>
					</div>
				</div>


				<div class="row mb-40">
					<lable class="col-3 col-form-label ">&nbsp;</lable>
					<div class="col-6">
						<div style="margin: auto; width: 100%;">
							<div class="along__">
								<div class="button">
									<input type="button" class="btn" onclick="storeInqSubmit()"
										value="등록" />
								</div>
							</div>
							<div class="along__">
								<div class="button">
									<button type="button" class="btn"
										onclick="window.history.back()">뒤로</button>
								</div>
							</div>
						</div>

					</div>
				</div>

			</form>

		</div>
	</div>



	<%@ include file="../inc/footer.jsp"%>
	<script src="resources/assets/js/jquery-3.6.0.js"></script>
	<script>
		var ch1, ch2, ch3, ch4, ch5, ch6, ch7, ch8;
		ch1 = false;//수집동의
		ch2 = false;//이름
		ch3 = false;//전화번호
		ch4 = false;//이메일
		// 정규식 친구들
		var regName = /^[가-힣]+$/;
		var regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/; //no need if we get authentication
		var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;

		$(document)
				.ready(
						function() {
							$("#personalInfoCheck")
									.on(
											"propertychange change",
											function() {
												var personalInfoCheck = document
														.getElementById("personalInfoCheck").checked;
												if (personalInfoCheck == false) {
													ch1 = false;
												} else {
													ch1 = true;
												}
											});

							$("#f_name")
									.on(
											"propertychange change keyup paste input",
											function() {
												var name = $("#f_name").val();

												if (name.length > 1
														&& regName.test(name) == false) {
													$(".regName_label")
															.addClass('active');
													ch2 = false;
												} else {
													$(".regName_label")
															.removeClass(
																	'active');
													ch2 = true;
												}
											});

							$("#f_tel")
									.on(
											"propertychange change keyup paste input",
											function() {
												var tel = $("#f_tel").val();
												if (tel.indexOf('-') != -1) {
													$(".tel_form").addClass(
															'active');
													ch3 = false;
												} else if (tel.length > 7
														&& regPhone.test(tel) == false) {
													$(".tel_form").addClass(
															'active');
													ch3 = false;
												} else {
													$(".tel_form").removeClass(
															'active');
													ch3 = true;
												}
											});

							$("#f_email")
									.on(
											"propertychange change keyup paste input",
											function() {
												var email = $("#f_email").val();

												if (email.length > 1
														&& regEmail.test(email) == false) {
													$(".email_form").addClass(
															'active');
													ch4 = false;
												} else {
													$(".email_form")
															.removeClass(
																	'active');
													ch4 = true;
												}
											});

						});
		function storeInqSubmit() {
			if (ch1 == false) {
				Swal.fire({
					icon : "error",
					confirmButtonText : '닫기',
					text : "개인정보 수집동의를 확인해주세요"
				});
				return;
			}
			if (document.storeInqForm.f_code.value == "") {
				Swal.fire({
					icon : "error",
					confirmButtonText : '닫기',
					text : "가게이름을 입력해주세요"
				});
				document.storeInqForm.f_code.focus();
				return;
			}
			if (document.storeInqForm.f_name.value == "") {
				Swal.fire({
					icon : "error",
					confirmButtonText : '닫기',
					text : "담당자명을 입력해주세요"
				});
				document.storeInqForm.f_name.focus();
				return;
			}
			if (document.storeInqForm.f_tel.value == "") {
				Swal.fire({
					icon : "error",
					confirmButtonText : '닫기',
					text : "전화번호를 입력해주세요"
				});
				document.storeInqForm.f_tel.focus();
				return;
			}
			if (document.storeInqForm.f_email.value == "") {
				Swal.fire({
					icon : "error",
					confirmButtonText : '닫기',
					text : "이메일을 입력해주세요"
				});
				document.storeInqForm.f_email.focus();
				return;
			}
			if (document.storeInqForm.f_title.value == "") {
				Swal.fire({
					icon : "error",
					confirmButtonText : '닫기',
					text : "내용을 입력해주세요"
				});
				document.storeInqForm.f_title.focus();
				return;
			} 
			if(ch1&&ch2&&ch3&&ch4) {
				Swal.fire({
					icon : "success",
					text : "등록완료",
					showConfirmButton: false,
					timer: 1500
				}).then((result) => {
					  if (result.isConfirmed) {
						  alert("뿌?");
					  } else{
						  document.storeInqForm.submit();
					  }
					});
			}else{
				Swal.fire({
					icon : "error",
					text : "입력값을 확인해주세요",
					confirmButtonText : '닫기'
				});
			}
		}
	</script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>
</html>