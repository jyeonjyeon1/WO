<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<!-- <!-- ========================= kakao login ========================= -->
<!-- <script src="https://developers.kakao.com/sdk/js/kakao.js"></script> -->


<script type="text/javascript">
	
</script>
</head>

<body>
	<!-- header import -->
	<%@ include file="/WEB-INF/views/user/inc/header.jsp"%>

	<!-- 쿠키여부에 따른 checked 등 -->
	<c:if test="${not empty cookie.rememberId}">
		<c:set value="checked" var="checked" />
	</c:if>
	<div class="container"
		style="margin: 30PX auto 50px; max-width: 400px;">
		<h3 class="text-center mt-60 mb-60" style="color: #6f6f6f">로그인</h3>
		<form>
			<input type="text" class="form-control" id="u_id" name="u_id"
				placeholder="아이디" value="${cookie.rememberId.value}"> <input
				type="password" class="form-control" id="u_password"
				name="u_password" placeholder="비밀번호" style="margin-top: 15px;">

			<label class="checkbox" style="margin-top: 5px;"> <input
				type="checkbox" id="rememberId" name="rememberId" ${checked}
				style="font-size: 12px; margin-top: 2px; margin-left: 0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아이디
				저장<br> <br>
			</label>
			
			
			
			<button type="button" onclick="finalCheck()"
				class="btn btn-outline-warning" style="width: 100%;">
				<i class="fa fa-lock"></i> 로그인 &nbsp;
			</button>
			<div class="row">
			
			<div class="row" style="max-width: 500px; ">
			<div class="col-lg-7" style=" text-align:right;">
				
                <input type="button" class="login_bottom_btn"  value="아이디/비밀번호 찾기 " onclick="location.href='findUser.user'">
                </div>
                <div class="col-lg-5" style="text-align:center; padding-left:0">
                
                <input type="button" class="login_bottom_btn" style="border-left:1px solid gray; padding-left:30px;" value="회원가입"  onclick="location.href='join.user'">
            </div>
            </div>
            </div>
			<h5 class="text-center mt-40 mb-30" style="color: color:#000157; margin-bottom:15px;">소셜
				로그인</h5>
			<div class="row" style="max-width: 400px; margin: auto;">
				<!-- 카카오 로그인-->
				<button class="kaka_login" type="button" onclick="kakaoLogin();">
				</button>

				<div id="naverIdLogin" style="display:none;"></div>
				<button id="naverLogin" class="naver_login" type="button">
				</button>

				<button id="GgCustomLogin" class="google_login" type="button" onclick="onSignIn(googleUser)">
				</button>

			</div>
			 

		</form>
	</div>
	<!-- footer import -->
	<%@ include file="/WEB-INF/views/user/inc/footer.jsp"%>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<!-- 				구글 api 사용을 위한 스크립트 -->
<!-- 구글 라이브러리 -->
<script src="https://apis.google.com/js/platform.js" async defer></script>



<!-- <script src="https://apis.google.com/js/platform.js?onload=init" async defer></script> -->
				<!-- <script>
					
					//처음 실행하는 함수
					function init() {
						gapi.load('auth2', function() {
							gapi.auth2.init();
							options = new gapi.auth2.SigninOptionsBuilder();
							options.setPrompt('select_account');
					        // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
							options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
					        // 인스턴스의 함수 호출 - element에 로그인 기능 추가
					        // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
							gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
						})
					}
					
					function onSignIn(googleUser) {
						var access_token = googleUser.getAuthResponse().access_token
						$.ajax({
					    	// people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
							url: 'https://people.googleapis.com/v1/people/me'
					        // key에 자신의 API 키를 넣습니다.
							, data: {personFields:'birthdays', key:'AIzaSyA9UXcOZpdOX0Uo_Kfpkvt62WVzgTr5TzM', 'access_token': access_token}
							, method:'GET'
						})
						.done(function(e){
					        //프로필을 가져온다.
							var profile = googleUser.getBasicProfile();
							console.log(profile)
						})
						.fail(function(e){
							console.log(e);
						})
					}
					function onSignInFailure(t){		
						console.log(t);
					}
			</script>
						 -->
	<script>
		ch1 = false;
		var u_id_input = "";
		var u_pw_input = "";

		jQuery(document).ready(
				function() {
					$("#u_id").on("propertychange change keyup paste input",
							function() {
								u_id_input = $("#u_id").val();
								u_pw_input = $("#u_password").val();
								onEnter();
							});
					$("#u_password").on(
							"propertychange change keyup paste input",
							function() {
								u_id_input = $("#u_id").val();
								u_pw_input = $("#u_password").val();
								onEnter();
							});
				});
		function loginCheck() {
			var userAgent=navigator.userAgent.toLowerCase();
			var browser;
			if(userAgent.indexOf('edge')>-1){	
				browser='Explorer Edge';
			}else if(userAgent.indexOf('whale')>-1){	
				browser='Naver Whale';
			}else if(userAgent.indexOf('chrome')>-1){	
				browser='Chrome';
			}else if(userAgent.indexOf('firefox')>-1){	
				browser='FireFox';
			}else{	
				browser='Explorer';
			}
			var rememberId = $("#rememberId").is(":checked");
			var param = {
				"u_id" : u_id_input,
				"u_password" : u_pw_input,
				"rememberId" : rememberId,
				"browser" : browser
			}
			console.log(rememberId);
			$.ajax({
				type : "post",
				url : "/loginCheck.user",
				data : JSON.stringify(param),
				dataType : "json",
				contentType : "application/json",
				success : function(data) {
					console.log("오키")
					if (data == 1) {
						location.href = "/index.user";
					} else {
						Swal.fire({
							icon : "error",
							text : "일치 계정 없음"
						});
					}
				},
				error : function(data) {
					console.log("로그인 통신x")
				}

			});//ajax 끝
		}

		function finalCheck() {
			console.log(u_id_input + "   " + u_pw_input);
			if (u_id_input != "" && u_pw_input != "") {//둘다 입력한 경우 ajax로 체크
				loginCheck();//아이디 비번 일치 확인
				console.log("아디비번확인중");
			} else if (u_id_input != "" && u_pw_input == "") {
				Swal.fire({
					icon : "error",
					text : "비밀번호 미입력"
				});
			} else if (u_id_input == "" && u_pw_input != "") {
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
		function onEnter() {
			var keyCode = window.event.keyCode;
			if (keyCode == 13) {
				finalCheck();
			}
		}
	</script>
	<!-- 카카오 스크립트 -->
				<script>
					Kakao.init("<spring:eval expression='@config.getProperty("KAKAO_API_KEY")'/>"); //javascript키
					console.log(Kakao.isInitialized()); // sdk초기화여부판단
					//카카오로그인
					function kakaoLogin() {
						var userAgent=navigator.userAgent.toLowerCase();
						var browser;
						if(userAgent.indexOf('edge')>-1){	
							browser='Explorer Edge';
						}else if(userAgent.indexOf('whale')>-1){	
							browser='Naver Whale';
						}else if(userAgent.indexOf('chrome')>-1){	
							browser='Chrome';
						}else if(userAgent.indexOf('firefox')>-1){	
							browser='FireFox';
						}else{	
							browser='Explorer';
						}
						Kakao.Auth.login({
								success : function(response) {
								Kakao.API.request({
									url : '/v2/user/me',
									success : function(response) {
									response.browser = browser;
									console.log(response);
								//AJAX 카카오로그인
									$.ajax({
										type : "post",
										url : "/kakaoLogin.user",
										data : JSON.stringify(response),
										dataType : "json",
										contentType : "application/json",
										async: false,
										success : function(data) {
											if (data == 0) {
												location.href = "/index.user";
											} else {
												location.href = "/sns_join.user?s="+data.toString();
											}
										},
										error : function(data) {
											console.log("로그인 통신x")
										}
									});
								//ajax 끝
								},
									fail : function(error) {
										console.log(error)
									},
								})
							},
							fail : function(error) {
								console.log(error)
							},
						})
					}
					//카카오로그아웃  
					function kakaoLogout() {
						if (Kakao.Auth.getAccessToken()) {
							Kakao.API.request({
								url : '/v1/user/unlink',
								success : function(response) {
									console.log(response)
								},
								fail : function(error) {
									console.log(error)
								},
							})
							Kakao.Auth.setAccessToken(undefined)
						}
					}
					
					
					
					naverLogin.init(); //initialize Naver Login Button
					naverLogin.getLoginStatus(function (status) {
					    if (status == true) {
					    	naverLoginAjax();
					    }
					  });
					$(document).on("click", "#naverLogin", function(){ 
						var btnNaverLogin = document.getElementById("naverIdLogin").firstChild;
						btnNaverLogin.click();
					});
					
					function naverLoginAjax(){
						var userAgent=navigator.userAgent.toLowerCase();
						var browser;
						if(userAgent.indexOf('edge')>-1){	
							browser='Explorer Edge';
						}else if(userAgent.indexOf('whale')>-1){	
							browser='Naver Whale';
						}else if(userAgent.indexOf('chrome')>-1){	
							browser='Chrome';
						}else if(userAgent.indexOf('firefox')>-1){	
							browser='FireFox';
						}else{	
							browser='Explorer';
						}
						$.ajax({
							type : "post",
							url : "/naverLogin.user",
							data : JSON.stringify({"id": naverLogin.user.id, "browser" : browser}),
							dataType : "json",
							contentType : "application/json",
							success : function(data) {
								if (data == 0) {
									location.href = "/index.user";
								} else {
									location.href = "/sns_join.user?s="+data.toString();
								}
							},
							error : function(data) {
								console.log("로그인 통신x")
							}
						});
					//ajax 끝
					}
					
					
					function onSignIn(googleUser) {
						  var profile = googleUser.getBasicProfile();
						  alert(profile.getId());
						  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
						  console.log('Name: ' + profile.getName());
						  console.log('Image URL: ' + profile.getImageUrl());
						  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
						}
					
					
				</script>
</body>
</html>