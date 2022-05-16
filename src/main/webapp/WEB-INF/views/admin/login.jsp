<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<title>워킹오더 관리자 페이지</title>
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<!-- Favicons -->
<link href="resources/assets/images/admin/logo/logo_only.svg" rel="icon">

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

</head>

<body style="background-color: #0A2533;">
	<!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
	<div id="login-page">
		<div class="container">
			<form name="adminLoginForm" class="form-login" action="index.admin" method="get">
				<h2 class="form-login-heading">
					<img src="resources/assets/images/admin/logo/logo_white.svg"
						style="width: 28px">&nbsp; walking order admin
				</h2>
				<div class="login-wrap">
					<input type="text" class="form-control" placeholder="아이디"
						style="font-size: 12px;" name="a_id" id="a_id" autofocus> 
						<br> 
						<input type="password" name="a_password" id="a_password" class="form-control" placeholder="비밀번호"
						style="font-size: 12px;"> 
						<label for="useCookie" class="checkbox">
							<input type="checkbox" id="useCookie" name="useCookie"
							 style="font-size: 12px; margin-top: 2px; margin-left: 0px;">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아이디/비밀번호 저장
					</label>
					<button type="button" class="btn btn-theme btn-block" onclick="finalCheck()">
						<i class="fa fa-lock"></i> 로그인
					</button>
					 <hr>
					<div class="login-social-link centered">
					
						<p>소셜 로그인</p>
						<div id="naverIdLogin"></div>
						<button class="btn btn-naver" type="submit">
							<b>N</b> Naver
						</button>
						<button class="btn btn-google" type="submit">
							<i class="fa fa-google"></i> Google
						</button>
						<button class="btn btn-facebook" type="submit">
							<i class="fa fa-facebook"></i> Facebook
						</button>
					</div> 
					<div id="message">
        로그인 버튼을 눌러 로그인 해주세요.
      </div>

				</div>
			</form>
		</div>
	</div>
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="resources/assets/js/jquery-3.6.0.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	
<script>
const naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "dwpamdF6gebSRveqzw1K",
			callbackUrl: "/index.admin",
			loginButton: {color: "green", type: 2, height: 40}
		}
	);
naverLogin.init(); // 로그인 설정

naverLogin.getLoginStatus(function (status) {
    if (status) {
    	console.log(status);
        const nickName=naverLogin.user.getNickName();
        const age=naverLogin.user.getAge();
        const birthday=naverLogin.user.getBirthday();

      //닉네임을 선택하지 않으면 선택창으로 돌아갑니다.
        setLoginStatus(); //모든 필수 정보 제공 동의하면 실행하는 함수
    }
  });
function setLoginStatus(){
    
    const message_area=document.getElementById('message');
    message_area.innerHTML=`
    <h3> Login 성공 </h3>
    <div>user Nickname : ${naverLogin.user.nickname}</div>
    <div>user Age(범위) : ${naverLogin.user.age}</div>
    <div>user Birthday : ${naverLogin.user.birthday}</div>
    `;
   
    const button_area=document.getElementById('button_area');
    button_area.innerHTML="<button id='btn_logout'>로그아웃</button>";

    const logout=document.getElementById('btn_logout');
    logout.addEventListener('click',(e)=>{
      naverLogin.logout();
	location.replace("http://127.0.0.1:5500");
    })
  }

ch1 = false;
var a_id_input = "";
var a_pw_input = "";

jQuery(document).ready(function() {
	$("#a_id").on("propertychange change keyup paste input", function() {
		a_id_input = $("#a_id").val();
		onEnter();
	});
	$("#a_password").on("propertychange change keyup paste input", function() {
		a_pw_input = $("#a_password").val();
		onEnter();
	});
});
function loginCheck(){
	var param = {"a_id":a_id_input, "a_password":a_pw_input}
	$.ajax({
		type: "post",
		url: "/loginCheck.admin",
		data:JSON.stringify(param),
		dataType: "json",
        contentType: "application/json",
        success:function(data){
        	console.log("오키")
        	if(data==1){
        		location.href="/index.admin";
        	}else{
        		Swal.fire({
    				icon : "error",
    				text : "일치 계정 없음"
    			});
        	}
        },
        error:function(data){
        	console.log("어드민 로그인 통신x")
        }
        
	});//ajax 끝
}

function finalCheck(){
	console.log(a_id_input+"   "+a_pw_input);
	if(a_id_input != "" && a_pw_input !=""){//둘다 입력한 경우 ajax로 체크
		loginCheck();//아이디 비번 일치 확인
		console.log("아디비번확인중");
	}else if(a_id_input != "" && a_pw_input == ""){
		Swal.fire({
			icon : "error",
			text : "비밀번호 미입력"
		});
	} else if(a_id_input == "" && a_pw_input != ""){
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
