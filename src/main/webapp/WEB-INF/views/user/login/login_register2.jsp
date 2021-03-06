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
.phoneVerif_btn:hover {
	background: #f2f2f2;
}
.phoneVerif_btn:disabled ,.u_tel:disabled {
	background: #f2f2f2;
}

.verif_num{
	display:none;
}
.verif_num.active{
	margin-left:10px;display:inline-block; width: 35%;
}

.phone_reset_btn.active{
	display:none;
}

.phone_reset_btn {
	float:right;
	font-size: 10px;
	width:20px;
	height:20px;
	padding:auto;
	margin-top:5px;
	border-radius:3px;
	border:none;
	background: #faf4f2;
	box-shadow: 1px 1px 1px rgba(0, 12, 173, 0.4);
	margin-right:130px;
}

</style>
<!-- ========================= JS here ========================= -->
<script src="resources/assets/js/jquery-3.6.0.js"></script>
<script>
	var ch1, ch2, ch3, ch4, ch5, ch6, ch7, ch8, ch9;
	ch1 = false;//CheckId
	ch2 = false;//regPassword
	ch3 = false;//Passwork recheck match
	ch4 = false;//regName
	ch5 = false;//regPhone
	ch6 = false;//regEmail
	ch7 = false;//Terms agreed
	ch8 = false;//Pricacyterms agreed
	ch8 = false;//phone authentication
	// 정규식 친구들
	var regId = /^[a-zA-Z0-9]{4,14}$/;
	var regPassword = /([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/;
	var regName = /^[가-힣]+$/;
	var regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/; //no need if we get authentication
	var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;

	$(document).ready(
			function() {

			//아이디중복확인
			$("#u_id").on("propertychange change keyup paste input",
				function() {
					var insert_id = $("#u_id").val();
					//idCheck()였던 것.
			       var param = {"id" : insert_id };
			       if(insert_id.length>2){
					$.ajax({
			             type: "POST",
			             url: "/idcheck.user",
			             data: JSON.stringify(param),
			             dataType: "json",
			             contentType: "application/json",
			          success:function(data){
			             if(data==0 && regId.test(insert_id) == true){
			                console.log("가능");
			                $(".idCheck_label_joongbok").removeClass('active');
			                $(".idCheck_label_false").removeClass('active');
			                $(".idCheck_label_true").addClass('active');
			                ch1=true;
			             }else if(data==0 && regId.test(insert_id) == false){
			            	 console.log("노가능");
			            	 $(".idCheck_label_joongbok").removeClass('active');
				             $(".idCheck_label_false").addClass('active');
				             $(".idCheck_label_true").removeClass('active');
				             ch1=false;
			             }else{
			                console.log("노가능")
			                $(".idCheck_label_joongbok").addClass('active');
			                $(".idCheck_label_true").removeClass('active');
			                $(".idCheck_label_false").removeClass('active');
			                ch1=false;
			             }
			          },
			          error:function(data){
			             console.log("아이디체크에러");
			          }
			       }); //ajax 끝
		        } // end if
			});  //아이디중복확인 끝
				 

				//Check valid Password
				$("#u_password").on(
						"propertychange change keyup paste input",
						function() {
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

				$("#u_name")
						.on(
								"propertychange change keyup paste input",
								function() {
									var name = $("#u_name").val();

									if (name.length > 1
											&& regName.test(name) == false) {
										$(".regName_label").addClass('active');
										ch4 = false;
									} else {
										$(".regName_label").removeClass(
												'active');
										ch4 = true;
									}
								});

				$("#u_tel").on(
						"propertychange change keyup paste input",
						function() {
							var tel = $("#u_tel").val();
							ch5 = false;
							if (tel.indexOf('-') != -1) {
								$(".tel_form").addClass('active');
								ch5 = false;
							} else if (tel.length > 7
									&& regPhone.test(tel) == false) {
								$(".tel_form").addClass('active');
								ch5 = false;
							} else if(regPhone.test(tel)==true){
								$(".tel_form").removeClass('active');
								ch5 = true;
							}
						});

				$("#u_email").on(
						"propertychange change keyup paste input",
						function() {
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

				$("#termsAccept").click(function() {
					$('#termsCheckbox').prop('checked', true);
					ch7 = true;
				});
				$("#privacyAccept").click(function() {
					$('#privacyCheckbox').prop('checked', true);
					ch8 = true;
				});
			});

	function finalCheck() {
		if (!ch7) {
			Swal.fire({
				icon : "error",
				text : "이용약관 미동의"
			});
		} else if (!ch8) {
			Swal.fire({
				icon : "error",
				text : "개인정보처리방침 미동의"
			});
		} else if (ch1 && ch2 && ch3 && ch4 && ch5 && ch6 && ch7 && ch8 && ch9) {
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
	var verifNum = []; //인증번호
	var verifTime = 180;// 180초=3분
	function phoneVerif(){
		if(ch5==true){//번호 제대로 입력했을 경우만
			//$("#phoneVerif_btn").attr("disabled", true); //비활성화
			$("#u_tel").attr("readonly", true);
			document.getElementById("phoneVerif_btn").innerHTML = "인증 확인";
			$("#phoneVerif_btn").removeAttr("onclick");//phoneverif 삭제
			$("#phoneVerif_btn").attr("onclick","checkVerif()");//checkVerif 추가
			$(".verif_num").addClass('active');
			$(".phone_reset_btn").removeClass('active');
			$("#u_tel").removeClass('col-12');
			$("#u_tel").addClass('col-7');
			
			
			verifTime = 179;//또 인증할 경우
			setClock();
		    tid = setInterval(setClock,1000); //1초마다 setClock 함수 실행
		    //인정번호 생성 6자리
		    var dateInfo = new Date(); //현재시간으로 암호 생성할것
		    var sec = dateInfo.getSeconds();
		    var verifNumMade= Math.floor((sec+11)*(sec+11) * parseInt($("#u_tel").val().substring(8))+sec).toString();
		    if (verifNumMade.length >6){
		    	verifNumMade = verifNumMade.substring(0,6);
		    }else if (verifNumMade.length <6){
		    	verifNumMade = Math.floor(Math.random() * 10).toString() + verifNumMade;
		    }
		    verifNum.push(verifNumMade);
		    var param = {
	    		"u_tel":$("#u_tel").val(),
		    	"verifNumMade": verifNumMade
		    }
		    $.ajax({
	             type: "POST",
	             url: "/phoneVerif.admin",
	             data: JSON.stringify(param),
	             dataType: "json",
	             contentType: "application/json",
	          success:function(data){
				if(data ==1){
	        	  alert(verifNum);
				}
	          },
	          error:function(data){
	             console.log("핸드폰인증 실패");
	          }
	       }); //ajax 끝
		}
	}
	
	function checkVerif(){
		if($("#verif_num").val()==verifNum){
			alert("성공");
			ch9 = true;
			verifNum = [];
			document.getElementById("phoneVerif_btn").innerHTML = "성공";
			$("#phoneVerif_btn").attr("disabled", true);
			$("#verif_num").attr("disabled", true);
			$("#phoneVerif_btn").removeAttr("onclick");//checkVerif 삭제
			$("#phoneVerif_btn").attr("onclick","phoneVerif()");//phoneverif 추가
			$("#u_tel").attr("readonly", true);
			clearInterval(tid);
		}else{
			alert("실패"+$("#verif_num").val()+":"+verifNum);
		}
		
	}
	
	function setClock(){
		var time = Math.floor(verifTime / 60) + " : " + modifyNumber(verifTime % 60); // 남은 시간 계산    
		document.getElementById("phoneVerifTime").innerHTML = "남은 시간 :  0" +time;
		document.getElementById("phoneVerifTime").style.color = "blue";
		document.getElementById("phoneVerifTime").style.display = "inline-block";
		verifTime--; 
		if(verifTime < 60){
			document.getElementById("phoneVerifTime").style.color = "red";
		}
		if (verifTime < 0) {          // 시간이 종료 되었으면..        
            clearInterval(tid);     // 타이머 해제
            verifNum=[];			//인증번호 삭제
            
            //다시 처음 상태로
            $(".verif_num").removeClass('active');
            $(".phone_reset_btn").addClass('active');
            $("#u_tel").removeClass('col-7');
			$("#u_tel").addClass('col-12');
			document.getElementById("phoneVerif_btn").innerHTML = "번호 인증";
			$("#phoneVerif_btn").removeAttr("onclick");//checkVerif 삭제
			$("#phoneVerif_btn").attr("onclick","phoneVerif()");//phoneverif 추가
			$("#u_tel").attr("readonly", false);
        } 
	}
	
	function reset_Phone(){
		clearInterval(tid);
		verifNum=[];
		//다시 처음 상태로
        $(".verif_num").removeClass('active');
        $(".phone_reset_btn").addClass('active');
        $("#u_tel").removeClass('col-7');
		$("#u_tel").addClass('col-12');
		document.getElementById("phoneVerifTime").style.display = "none";
		$("#u_tel").attr("readonly", false);
		document.getElementById("phoneVerif_btn").innerHTML = "번호 인증";
		$("#phoneVerif_btn").removeAttr("onclick");//checkVerif 삭제
		$("#phoneVerif_btn").attr("onclick","phoneVerif()");//phoneverif 추가
	}
	
	function modifyNumber(time){
	    if(parseInt(time)<10){
	        return "0"+ time;
	    }
	    else
	        return time;
	}
</script>
</head>
<body>
	<!-- header import -->
	<%@ include file="/WEB-INF/views/user/inc/header.jsp"%>

	<div class="container"
		style="margin: 30PX auto 50px; max-width: 420px;">
		<h4 class="text-center mt-60 mb-60" style="color: #6f6f6f">회원가입</h4>
		<form action="register.user" method="post" name="regForm">
			<div class="row">
				<div class="col-12">
					<input type="text" name="u_id" id="u_id" placeholder="아이디 (필수)"
						class="reg-form-control" autofocus />
					<p class="idCheck_label_joongbok">이미 사용 중인 아이디입니다</p>
					<p class="idCheck_label_false">사용할 수 없는 아이디입니다</p>
					<p class="idCheck_label_true">사용 가능한 아이디입니다</p>
				</div>
			</div>
			<div class="row">
				<div class="col-12 mt-10">
					<input type="password" name="u_password" id="u_password"
						placeholder="비밀번호 (필수)" class="reg-form-control">
					<p class="valid_password">특수기호 대소문자 어쩌구</p>
				</div>
			</div>
			<div class="row">
				<div class="col-12 mt-10">
					<input type="password" id="passCheck" placeholder="비밀번호 확인 (필수)"
						class="reg-form-control">
					<p class="match_password">비밀번호가 일치하지 않습니다.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-12 mt-10">
					<input type="text" id="u_name" name="u_name" placeholder="이름 (필수)"
						class="reg-form-control">
					<p class="regName_label">이름 이상</p>
				</div>
			</div>
			<div class="row">
				<div class="col-9 mt-10">
					<input type="text" id="u_tel" name="u_tel"
						placeholder="전화번호( - 제외)" class="reg-form-control col-12 u_tel" style="display:inline-block;">
						<input type="text" id="verif_num" 
						placeholder="인증번호" class="reg-form-control col-5 verif_num">
					<p class="tel_form">전화번호 형식을 맞춰주세요</p>
					<div id="phoneVerifTime" class="phoneVerifTime">
					</div>
					<button class="phone_reset_btn active" type="button" onclick="reset_Phone()">
						<i class="fa fa-rotate-left"></i>
					</button>
				</div>
				<div class="col-3 mt-10" style="padding-left: 0;">
					<button type="button" onclick="phoneVerif()" id="phoneVerif_btn" class="reg-form-control phoneVerif_btn">번호
						인증</button>
				</div>
			</div>
			<div class="row">
				<div class="col-12 mt-10">
					<input type="text" id="u_email" name="u_email"
						placeholder="E-mail (필수)" class="reg-form-control">

					<p class="email_form">이메일 형식을 맞춰주세요</p>
				</div>
			</div>
			<br>
			<!-- 약관동의 -->
			<div class="row">
				<div class="col-12 mt-10">
					<button type="button" class="reg-accept-btn" data-bs-toggle="modal"
						data-bs-target="#termsModal">
						<input id="termsCheckbox" type="checkbox" disabled>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 이용약관 동의
					</button>
				</div>
			</div>
			<!-- 개인정보처리방침 동의 -->
			<div class="row">
				<div class="col-12 mt-10">
					<button type="button" class="reg-accept-btn" data-bs-toggle="modal"
						data-bs-target="#privacyModal">
						<input id="privacyCheckbox" type="checkbox" disabled>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 개인정보처리방침 동의
					</button>
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
				<button type="button" onclick="finalCheck()"
					class="btn btn-outline-warning" style="margin: auto; width: 60%;">회원가입
					&nbsp;</button>
			</div>

			<!-- 약관동의 Modal -->
			<div class="modal fade" id="termsModal" tabindex="-1"
				aria-labelledby="termsModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-scrollable"
					style="height: 70%;">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="termsModalLabel">이용약관</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<a style="font-size: 16px; font-weight: 600;">여러분을 환영합니다.</a>
							<p>워킹오더 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 워킹오더
								서비스의 이용과 관련하여 워킹오더 서비스를 제공하는 워킹오더 주식회사(이하 ‘워킹오더’)와 이를 이용하는 워킹오더
								서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 워킹오더 서비스 이용에 도움이 될 수
								있는 유익한 정보를 포함하고 있습니다.</p>
							<p>워킹오더 서비스를 이용하시거나 워킹오더 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영
								정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다</p>
							<br> <br> <br> <a name="a3"
								class=" mb-4 text-secondary"
								style="font-size: 16px; font-weight: 600;">회원으로 가입하시면 워킹오더
								서비스를 보다 편리하게 이용할 수 있습니다.</a>
							<p>여러분은 본 약관을 읽고 동의하신 후 회원 가입을 신청하실 수 있으며, 워킹오더는 이에 대한 승낙을 통해
								회원 가입 절차를 완료하고 여러분께 워킹오더 서비스 이용 계정(이하 ‘계정’)을 부여합니다. 계정이란 회원이
								워킹오더 서비스에 로그인한 이후 이용하는 각종 서비스 이용 이력을 회원 별로 관리하기 위해 설정한 회원 식별 단위를
								말합니다.</p>
							<p>회원은 자신의 계정을 통해 좀더 다양한 워킹오더 서비스를 보다 편리하게 이용할 수 있습니다. 이와 관련한
								상세한 내용은 계정 운영정책 및 고객센터 내 워킹오더 회원가입 방법 등에서 확인해 주세요.</p>
							<p>워킹오더는 단체에 속한 여러 구성원들이 공동의 계정으로 워킹오더 서비스를 함께 이용할 수 있도록 단체회원
								계정도 부여하고 있습니다. 단체회원 구성원들은 하나의 계정 및 아이디(ID)를 공유하되 각자 개별적으로 설정한
								비밀번호를 입력하여 계정에 로그인하고 각종 서비스를 이용하게 됩니다. 단체회원은 관리자와 멤버로 구성되며, 관리자는
								구성원 전부로부터 권한을 위임 받아 단체회원을 대표하고 단체회원 계정을 운용합니다. 따라서 관리자는 단체회원 계정을
								통해 별도 약관 또는 기존 약관 개정에 대해 동의하거나 단체회원에서 탈퇴할 수 있고, 멤버들의 단체회원 계정 로그인
								방법 및 이를 통한 게시물 게재 등 워킹오더 서비스 이용을 관리(게시물 삭제 포함)할 수 있습니다. 본 약관에서
								규정한 사항은 원칙적으로 구성원 모두에게 적용되며, 각각의 구성원은 다른 구성원들의 단체회원 계정 및
								아이디(ID)를 통한 서비스 이용에 관해 연대책임을 부담합니다.</p>
							<p>단체회원 계정 사용에서의 관리자, 멤버 등의 권한 및 (공동)책임에 관한 사항 등은 계정 운영정책 및
								고객센터 내 워킹오더 단체회원(단체 아이디) 소개 등에서 확인해 주시기 바랍니다.</p>
							<br> <br> <br>
						</div>
						<div class="modal-footer">
							<button id="termsAccept" type="button" class="btn btn-warning"
								data-bs-dismiss="modal">동의</button>
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">닫기</button>

						</div>
					</div>
				</div>
			</div>
			<!-- 약관동의 Modal 끝 -->

			<!-- 개인정보처리방침 Modal -->
			<div class="modal fade" id="privacyModal" tabindex="-1"
				aria-labelledby="privacyModalLabel" aria-hidden="true">
				<div class="modal-dialog  modal-dialog-scrollable"
					style="height: 70%;">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="privacyModalLabel">개인정보처리방침 동의</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<a style="font-size: 16px; font-weight: 600;">제1조 (목적)</a><br>
							① “개인정보”란 생존하는 개인에 관한 정보로서 당해 정보에 포함되어 있는 성명, 주민등록번호 등의 사항에 의하여
							당해 개인을 식별할 수 있는 정보(당해 정보 만으로는 특정 개인을 식별할 수 없더라도 다른 정보와 용이하게 결합하여
							식별할 수 있는 것을 포함합니다)를 말합니다.</br> <br>② 회사는 귀하의 개인정보보호를 매우 중요시하며,
							『개인정보보호법』, 『정보통신망 이용촉진 및 정보보호에 관한 법률』 상의 개인정보보호규정 및 정보통신부가 제정한
							『개인정보보호지침』을 준수하고 있습니다. 회사는 개인정보처리방침을 통하여 귀하께서 제공하시는 개인정보가 어떠한 용도와
							방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.</br> <br>③ 회사는
							개인정보처리방침을 홈페이지 첫 화면에 공개함으로써 귀하께서 언제나 용이하게 보실 수 있도록 조치하고 있습니다.</br> <br>④
							회사는 개인정보처리방침의 지속적인 개선을 위하여 개인정보처리방침을 개정하는데 필요한 절차를 정하고 있습니다. 그리고
							개인정보처리방침을 개정하는 경우 버전번호 등을 부여하여 개정된 사항을 귀하께서 쉽게 알아볼 수 있도록 하고 있습니다.</br>
							<br> <br> <a style="font-size: 16px; font-weight: 600;">제2조
								(수집하는 개인정보의 항목)</a><br> 회사는 별도의 회원가입 절차 없이 대부분의 컨텐츠에 자유롭게 접근할 수
							있습니다. 그러나 회사는 맞춤형 서비스를 제공하기 위하여 회원서비스 및 제휴사를 통해 이용자의 정보를 수집하고
							있습니다. 회사의 회원제 서비스를 이용하시고자 할 경우 다음의 정보를 입력해주셔야 하며 선택항목을 입력하시지 않았다
							하여 서비스 이용에 제한은 없습니다. 단, 회사는 다음 각 호의 어느 하나에 해당하는 경우에는 법령에 따라 이와 같은
							동의 없이 이용자의 개인정보를 수집 및 이용할 수 있습니다.</br> <br>① 회원 가입 시 수집하는 개인정보의
							범위</br> 1. 필수항목 : 이메일주소(로그인 ID), 닉네임, 비밀번호, 휴대폰번호</br> 2 선택항목 : OK캐쉬백 카드번호</br>
							<br>③ 유료서비스 이용 시 수집하는 개인정보의 범위</br> 1. 회원 가입 시 수집한 정보와 동일</br> 2.
							결제방법에 따라 결제창에 입력하는 개인정보는 결제대행사에 기록될 뿐 회사에 기록되지 않음</br> <br>④ 상품
							또는 용역 결제대금 출금 시 수집하는 개인정보의 범위</br> 1. 은행명, 계좌번호</br>
						</div>
						<div class="modal-footer">
							<button id="privacyAccept" type="button" class="btn btn-warning"
								data-bs-dismiss="modal">동의</button>
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">닫기</button>
						</div>
					</div>
				</div>
			</div>
			<!-- 개인정보처리방침 Modal 끝 -->

		</form>
	</div>





	<!-- footer import -->
	<%@ include file="/WEB-INF/views/user/inc/footer.jsp"%>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>