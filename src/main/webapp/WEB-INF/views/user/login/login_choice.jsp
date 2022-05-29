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
/*탭 메뉴 디쟌*/
    .tab_content{
            display: none;
            padding: 20px 0 0;
            border-top : 1px solid #ddd;}
            
	.tab_label{
            display: inline-block;
            margin: 0 0 -1px;
            padding: 15px 25px;
            font-weight: 600;
            text-align: center;
            color: #bbb;
            border: 1px solid transparent;}

        label:hover {
            color: #144f86;
            font-weight: bolder;
            cursor: pointer;}

        /*input 클릭시, label 스타일*/
        input:checked + label {
              color: rgb(0, 0, 0);
              border: 1px solid #14385c;
              border-top: 3px solid #14385c;
              border-bottom: #FFF8E1;
              border-radius: 2px;
            font-weight: bolder;
            background-color: #ffffffce;
            }

        #tab1:checked ~ #content1,
        #tab2:checked ~ #content2{
            display: block;}
   

/*아이디찾기*/
/* number에 위아래 버튼 삭제 */
input::-webkit-inner-spin-button {
	appearance: none;
	-moz-appearance: none;
	-webkit-appearance: none;
}

.tel_form1{
	display: none;
}

 .tel_form1.active {
	display: block;
	padding-left: 5px;
	color: red;
}


.reg-form-control1 {
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

.phoneVerif_btn1:hover {
	background: #f2f2f2;
}
.phoneVerif_btn1:disabled ,.u_tel_login:disabled {
	background: #f2f2f2;
}

.verif_num1{
	display:none;
}
.verif_num1.active{
	margin-left:10px;display:inline-block; width: 35%;
}

.phone_reset_btn1.active{
	display:none;
}

.phone_reset_btn1 {
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


.match_password, 
	.tel_form2, .valid_password {
	display: none;
}

.tel_form2.active,
	.match_password.false, .valid_password.active {
	display: block;
	padding-left: 5px;
	color: red;
}



.reg-form-control2 {
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

.phoneVerif2_btn2:hover {
	background: #f2f2f2;
}
.phoneVerif2_btn2:disabled ,.u_tel_pass:disabled {
	background: #f2f2f2;
}

.verif_num2{
	display:none;
}
.verif_num2.active{
	margin-left:10px;display:inline-block; width: 35%;
}

.phone_reset_btn2.active{
	display:none;
}

.phone_reset_btn2 {
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
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
 function gotap1() {
	
	document.getElementById("tab_content1").style.display ="block";
	document.getElementById("tab_content2").style.display="none";
}

function gotap2() {
	document.getElementById("tab_content1").style.display="none";
	document.getElementById("tab_content2").style.display="block";
}
 
//====================아이디찾기========================
var ch5 , ch6;
	ch5 = false;//regPhone
	ch6 = false;
	var regPhone1 = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/; //no need if we get authentication
	
	var ch12, ch13, ch15 , ch16;
	ch12 = false;//regPassword
	ch13 = false;//Passwork recheck match
	ch15 = true;//regPhone2
	ch16 = false;
	
	var regId = /^[a-zA-Z0-9]{4,14}$/;
	var regPassword = /([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/;
	var regPhone2 = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/; //no need if we get authentication
	
	
	$(document).ready(
			
			
		function() {
			$("#u_tel_login").on(
					"propertychange change keyup paste input",
					function() {
						ch5 = false;
						var tel = $("#u_tel_login").val();
						if (tel.indexOf('-') != -1) {
							$(".tel_form1").addClass('active');
							ch5 = false;
						} else if (tel.length > 7
								&& regPhone1.test(tel) == false) {
							$(".tel_form1").addClass('active');
							ch5 = false;
						} else if(regPhone1.test(tel) == true) {
							$(".tel_form1").removeClass('active');
							ch5 = true;
						}
					});
			
			if(document.getElementById('tab1').checked) {
				console.log("f");
				document.getElementById("tab_content1").style.display ="block";
				document.getElementById("tab_content2").style.display="none";
			}else {
				document.getElementById("tab_content1").style.display="none";
				document.getElementById("tab_content2").style.display="block";
			}
			
			//Check valid Password
			$("#u_password").on(
					"propertychange change keyup paste input",
					function() {
						var pwd = $("#u_password").val();
						
						if (pwd.length > 3
								&& regPassword.test(pwd) == false) {
							$(".valid_password").addClass('active');
							ch12 = false;
						} else {
							$(".valid_password").removeClass('active');
							ch12 = true;
						}
					});

			//Check pass & passcheck match
			$("#passCheck").on("propertychange change keyup paste input",
					function() {
						var pw = $("#u_password").val();
						var pwc = $("#passCheck").val();
						if (pwc != '' && pw != pwc) {
							$(".match_password").addClass('false');
							ch13 = false;
						} else {
							$(".match_password").removeClass('false');
							ch13 = true;
						}
					});
			$("#u_tel_pass").on(
					"propertychange change keyup paste input",
					function() {
						ch15=false;
						var tel = $("#u_tel_pass").val();
						if (tel.indexOf('-') != -1) {
							$(".tel_form2").addClass('active');
							ch15 = false;
						} else if (tel.length > 7
								&& regPhone2.test(tel) == false) {
							$(".tel_form2").addClass('active');
							ch15 = false;
						} else if(regPhone2.test(tel) == true) {
							$(".tel_form2").removeClass('active');
							ch15 = true;
						}
					});
			
			
			$("#u_tel_login").on(
					"propertychange change keyup paste input",
					function() {
						ch5 = false;
						var tel = $("#u_tel_login").val();
						if (tel.indexOf('-') != -1) {
							$(".tel_form1").addClass('active');
							ch5 = false;
						} else if (tel.length > 7
								&& regPhone1.test(tel) == false) {
							$(".tel_form1").addClass('active');
							ch5 = false;
						} else if(regPhone1.test(tel) == true) {
							$(".tel_form1").removeClass('active');
							ch5 = true;
						}
					});
		});
	
	
	var verifNum = []; //인증번호
	var verifTime1 = 180;// 180초=3분
	var verifTime2 = 180;// 180초=3분
	function phoneVerif(){
		if(ch5){//번호 제대로 입력했을 경우만
			//$("#phoneVerif_btn1").attr("disabled", true); //비활성화
			$("#u_tel_login").attr("disabled", true);
			document.getElementById("phoneVerif_btn1").innerHTML = "인증 확인";
			$("#phoneVerif_btn1").removeAttr("onclick");//phoneverif 삭제
			$("#phoneVerif_btn1").attr("onclick","checkVerif1()");//checkVerif1 추가
			$(".verif_num1").addClass('active');
			$(".phone_reset_btn1").removeClass('active');
			$("#u_tel_login").removeClass('col-12');
			$("#u_tel_login").addClass('col-7');
			
			
			verifTime1 = 179;//또 인증할 경우
			setClock1();
		    tid = setInterval(setClock1,1000); //1초마다 setClock 함수 실행
		    //인정번호 생성 6자리
		    var dateInfo = new Date(); //현재시간으로 암호 생성할것
		    var sec = dateInfo.getSeconds();
		    var verifNumMade= Math.floor((sec+11)*(sec+11) * parseInt($("#u_tel_login").val().substring(8))+sec).toString();
		    if (verifNumMade.length >6){
		    	verifNumMade = verifNumMade.substring(0,6);
		    }else if (verifNumMade.length <6){
		    	verifNumMade = Math.floor(Math.random() * 10).toString() + verifNumMade;
		    }
		    verifNum.push(verifNumMade);
		    var param = {
	    		"u_tel_login":$("#u_tel_login").val(),
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
	
	function phoneVerif2(){
		if(ch15){//번호 제대로 입력했을 경우만
			//$("#phoneVerif2_btn2").attr("disabled", true); //비활성화
			$("#u_tel_pass").attr("disabled", true);
			document.getElementById("phoneVerif2_btn2").innerHTML = "인증 확인";
			$("#phoneVerif2_btn2").removeAttr("onclick");//phoneverif2 삭제
			$("#phoneVerif2_btn2").attr("onclick","checkVerif2()");//checkVerif2 추가
			$(".verif_num2").addClass('active');
			$(".phone_reset_btn2").removeClass('active');
			$("#u_tel_pass").removeClass('col-12');
			$("#u_tel_pass").addClass('col-7');
			
			
			verifTime2 = 179;//또 인증할 경우
			setClock();
		    tid = setInterval(setClock,1000); //1초마다 setClock 함수 실행
		    //인정번호 생성 6자리
		    var dateInfo = new Date(); //현재시간으로 암호 생성할것
		    var sec = dateInfo.getSeconds();
		    var verifNumMade= Math.floor((sec+11)*(sec+11) * parseInt($("#u_tel_pass").val().substring(8))+sec).toString();
		    if (verifNumMade.length >6){
		    	verifNumMade = verifNumMade.substring(0,6);
		    }else if (verifNumMade.length <6){
		    	verifNumMade = Math.floor(Math.random() * 10).toString() + verifNumMade;
		    }
		    verifNum.push(verifNumMade);
		    var param = {
	    		"u_tel_pass":$("#u_tel_pass").val(),
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
	
	function checkVerif1(){
		if($("#verif_num1").val()==verifNum){
			alert("성공");
			verifNum = [];
			document.getElementById("phoneVerif_btn1").innerHTML = "번호 인증";
			$("#phoneVerif_btn1").removeAttr("onclick");//checkVerif1 삭제
			$("#phoneVerif_btn1").attr("onclick","phoneVerif()");//phoneverif 추가
			$("#u_tel_login").attr("disabled", true);
			clearInterval(tid);
			ch6 = true;
		}else{
			alert("실패"+$("#verif_num1").val()+":"+verifNum);
		}
		
	}
	function checkVerif2(){
		if($("#verif_num2").val()==verifNum){
			alert("성공");
			verifNum = [];
			document.getElementById("phoneVerif2_btn2").innerHTML = "번호 인증";
			$("#phoneVerif2_btn2").removeAttr("onclick");//checkVerif2 삭제
			$("#phoneVerif2_btn2").attr("onclick","phoneVerif2()");//phoneverif2 추가
			$("#u_tel_pass").attr("disabled", true);
			clearInterval(tid);
			ch16 = true;
		}else{
			alert("실패"+$("#verif_num2").val()+":"+verifNum);
		}
		
	}
	
	function setClock1(){
		var time = Math.floor(verifTime1 / 60) + " : " + modifyNumber(verifTime1 % 60); // 남은 시간 계산    
		document.getElementById("phoneVerifTime1").innerHTML = "남은 시간 :  0" +time;
		document.getElementById("phoneVerifTime1").style.color = "blue";
		document.getElementById("phoneVerifTime1").style.display = "inline-block";
		verifTime1--; 
		if(verifTime1 < 60){
			document.getElementById("phoneVerifTime1").style.color = "red";
		}
		if (verifTime1 < 0) {          // 시간이 종료 되었으면..        
	        clearInterval(tid);     // 타이머 해제
	        verifNum=[];			//인증번호 삭제
	        
	        //다시 처음 상태로
	        $(".verif_num1").removeClass('active');
	        $(".phone_reset_btn1").addClass('active');
	        $("#u_tel_login").removeClass('col-7');
			$("#u_tel_login").addClass('col-12');
			document.getElementById("phoneVerif_btn1").innerHTML = "번호 인증";
			$("#phoneVerif_btn1").removeAttr("onclick");//checkVerif1 삭제
			$("#phoneVerif_btn1").attr("onclick","phoneVerif()");//phoneverif 추가
			$("#u_tel_login").attr("disabled", false);
	    } 
	}
	
	function setClock(){
		var time = Math.floor(verifTime2 / 60) + " : " + modifyNumber2(verifTime2 % 60); // 남은 시간 계산    
		document.getElementById("phoneVerifTime2").innerHTML = "남은 시간 :  0" +time;
		document.getElementById("phoneVerifTime2").style.color = "blue";
		document.getElementById("phoneVerifTime2").style.display = "inline-block";
		verifTime2--; 
		if(verifTime2 < 60){
			document.getElementById("phoneVerifTime2").style.color = "red";
		}
		if (verifTime2 < 0) {          // 시간이 종료 되었으면..        
	        clearInterval(tid);     // 타이머 해제
	        verifNum=[];			//인증번호 삭제
	        
	        //다시 처음 상태로
	        $(".verif_num2").removeClass('active');
	        $(".phone_reset_btn2").addClass('active');
	        $("#u_tel_pass").removeClass('col-7');
			$("#u_tel_pass").addClass('col-12');
			document.getElementById("phoneVerif2_btn2").innerHTML = "번호 인증";
			$("#phoneVerif2_btn2").removeAttr("onclick");//checkVerif2 삭제
			$("#phoneVerif2_btn2").attr("onclick","phoneVerif2()");//phoneverif2 추가
			$("#u_tel_pass").attr("disabled", false);
	    } 
	}
	
	
	function reset_Phone(){
		clearInterval(tid);
		verifNum=[];
		//다시 처음 상태로
	    $(".verif_num1").removeClass('active');
	    $(".phone_reset_btn1").addClass('active');
	    $("#u_tel_login").removeClass('col-7');
		$("#u_tel_login").addClass('col-12');
		document.getElementById("phoneVerifTime1").style.display = "none";
		$("#u_tel_login").attr("disabled", false);
		document.getElementById("phoneVerif_btn1").innerHTML = "번호 인증";
		$("#phoneVerif_btn1").removeAttr("onclick");//checkVerif1 삭제
		$("#phoneVerif_btn1").attr("onclick","phoneVerif()");//phoneverif 추가
	}
	

	function reset_Phone2(){
		clearInterval(tid);
		verifNum=[];
		//다시 처음 상태로
	    $(".verif_num2").removeClass('active');
	    $(".phone_reset_btn2").addClass('active');
	    $("#u_tel_pass").removeClass('col-7');
		$("#u_tel_pass").addClass('col-12');
		document.getElementById("phoneVerifTime2").style.display = "none";
		$("#u_tel_pass").attr("disabled", false);
		document.getElementById("phoneVerif2_btn2").innerHTML = "번호 인증";
		$("#phoneVerif2_btn2").removeAttr("onclick");//checkVerif2 삭제
		$("#phoneVerif2_btn2").attr("onclick","phoneVerif2()");//phoneverif2 추가
	}
	
	function modifyNumber(time){
	    if(parseInt(time)<10){
	        return "0"+ time;
	    }
	    else
	        return time;
	}
	
	function finalCheck() {
		if ( ch5 && ch6 ) {
			document.regForm.submit();
			//여기에 넣을것 
		} else {
			Swal.fire({
				icon : "error",
				text : "어딘가 잘못 작성"
			});
			console.log("실패")
			return false;
		}
	}
	
	function modifyNumber2(time){
	    if(parseInt(time)<10){
	        return "0"+ time;
	    }
	    else
	        return time;
	}
	
	function finalCheck2() {
		if ( ch15 && ch16 ) {
			document.regForm.submit();
			//여기에 넣을것 
		} else {
			Swal.fire({
				icon : "error",
				text : "어딘가 잘못 작성"
			});
			console.log("실패")
			return false;
		}
	}
	
	function telCheck() {
		var u_tel_login = $("#u_tel_login").val();
		var param = {"u_tel_login": u_tel_login }
		$.ajax({
			type: "POST",
            url: "/findId.user",
            data: JSON.stringify(param),
            dataType: "text",
            contentType: "application/json",
			success : function(data) {
				if(data != null){
					$(".Iddis1").show();
					$(".Iddis2").hide();
					var id = data;
					$("#id").text(id);
				}else{
					alert("찾으시는 아이디가 없습니다.")
				}
			},
			error : function(data) {
				console.log("로그인 통신x")
			}

		});//ajax 끝
	}
	
	function idtelCheck() {
		var u_tel_pass = $("#u_tel_pass").val();
		var u_id = $("#u_id").val();
		var param = {"u_tel_pass": u_tel_pass, "u_id": u_id }
		console.log(u_tel_pass +"/" +u_id);
		$.ajax({
			type: "POST",
            url: "/findPassword.user",
            data: JSON.stringify(param),
            dataType: "text",
            contentType: "application/json",
			success : function(data) {
				if(data != null){
					$(".Passdis1").show();
					$(".Passdis2").hide();
					var id = data;
					$("#id").text(id);
				}else{
					alert("확인하고 다시 입력해 주세요.")
				}
			},
			error : function(data) {
				console.log("로그인 통신x")
			}

		});//ajax 끝
	}
	
	//====================비밀번호찾기========================


</script>
</head>
<body>
	<!-- header import -->
	<%@ include file="/WEB-INF/views/user/inc/header.jsp"%>

  <div class="container" style="margin: 30PX auto 50px; max-width: 600px; min-height: 700px;">


        <input id="tab1" type="radio" name="tabs" style="display:none;" checked> 
        <label class="tab_label" for="tab1" onclick="gotap1()">아이디 찾기</label>
    
        <input id="tab2" type="radio" name="tabs" style="display:none;">
        <label class="tab_label" for="tab2" onclick="gotap2()">비밀번호 찾기</label>
    
    
        <section class="tab_content" id="tab_content1" style="display: none;">
          
		  <h4 class="text-center" style="color: #14385c; padding: 30px 30px 10px 30px;">아이디 찾기</h4>
            <h6 style="color: #6f6f6f; text-align: center; padding-bottom: 40px;">아이디는 가입시 입력하신 핸드폰번호를 통해 찾을 수 있습니다. </h6>
		
		<div class="Iddis2">

			
				<form>     
				<div class="row">
					<div class="col-9 mt-10">
						<input type="text" id="u_tel_login" name="u_tel_login"
							placeholder="전화번호( - 제외)" class="reg-form-control1 col-12 u_tel_login" style="display:inline-block;">
							<input type="text" id="verif_num1" 
							placeholder="인증번호" class="reg-form-control1 col-5 verif_num1">
						<p class="tel_form1">전화번호 형식을 맞춰주세요</p>
						<div class="row">
						<div class="col-lg-4">
						<div id="phoneVerifTime1" class="phoneVerifTime1">
						</div>
						</div>
						<div class="col-lg-4">
						<button class="phone_reset_btn1 active" type="button" onclick="reset_Phone()">
							<i class="fa fa-rotate-left"></i>
						</button>
						</div>
						</div>
					</div>
					<div class="col-3 mt-10" style="padding-left: 0;">
						<button type="button" onclick="phoneVerif()" id="phoneVerif_btn1" class="reg-form-control1 phoneVerif_btn1">번호
							인증</button>
					</div>
				</div>
				
				
				<br>
				<div class="row">
	                <div class="col-lg-6">
					<button type="button" id="submit"
						class="btn btn-outline-success" style="display: inline-block; margin-bottom: 10px; width: 100%;" value="check" onclick="telCheck()">아이디 찾기
						&nbsp;</button>
                        </div>
                        <div class="col-lg-6">
	                        <button class="btn btn-outline-secondary" style="display: inline-block; margin:auto; width: 100%;" type="button" onclick="location.href='login.user'">로그인으로 돌아가기</button></div>
	                </div>	
			</form>
		</div>
		
		
		<div class="Iddis1" style="display: none;">

			<label>찾으시는 아이디는  
				<span id="id"></span>
			입니다.</label>
			
			<button type="button" class="btn btn-outline-warning col-sm-6" style=" display: inline-block; margin:auto; width: 50%; margin-bottom: 10px" onclick="location.href='login.user'"> 확인
                    &nbsp;</button></div>
		

		
		
        </section>
    
        <section class="tab_content" id="tab_content2"  style="display: none;">
            <h4 class="text-center " style="color: #14385c; padding: 30px 30px 10px 30px;">비밀번호 찾기</h4>
		<h6 style="color: #6f6f6f; text-align: center; padding-bottom: 40px;">비밀번호는 아이디와 가입시 입력하신 핸드폰번호를 통해 찾을 수 있습니다. </h6>
		
		<div class="Passdis2">
			
				<form> 
					<div class="row">
						<div class="col-12">
							<input type="text" name="u_id" id="u_id" placeholder="아이디"
								class="reg-form-control2" autofocus />
						</div>
					</div>    
					<div class="row">
					
						<div class="col-9 mt-10">
							<input type="text" id="u_tel_pass" name="u_tel_pass"
								placeholder="전화번호( - 제외)" class="reg-form-control2 col-12 u_tel_pass" style="display:inline-block;">
								<input type="text" id="verif_num2" 
								placeholder="인증번호" class="reg-form-control2 col-5 verif_num2">
							<p class="tel_form2">전화번호 형식을 맞춰주세요</p>
							<div class="row">
						<div class="col-lg-4">
							<div id="phoneVerifTime2" class="phoneVerifTime2">
							</div>
							</div>
							<div class="col-lg-4">
							<button class="phone_reset_btn2 active" type="button" onclick="reset_Phone2()">
								<i class="fa fa-rotate-left"></i>
							</button>
							</div>
						</div>
						
						</div>
						<div class="col-3 mt-10" style="padding-left: 0;">
							<button type="button" onclick="phoneVerif2()" id="phoneVerif2_btn2" class="reg-form-control2 phoneVerif2_btn2">번호
								인증</button>
						</div>
					</div>
				
				
				<br>
				
				<div class="row">
	                <div class="col-lg-6">
					<button type="button" id="submit"
						class="btn btn-outline-success" style="display: inline-block; margin-bottom: 10px; width: 100%;"  onclick="idtelCheck()">비밀번호 찾기
						&nbsp;</button>
						</div>
	                <div class="col-lg-6">
	                        <button class="btn btn-outline-secondary" style="display: inline-block; margin:auto; width: 100%;" type="button" onclick="location.href='login.user'">로그인으로 돌아가기</button></div>
	                </div>	
			</form>
			


		</div>
		
		<!-- 이름과 비밀번호가 일치하지 않을 때 -->
		<div class="Passdis1" style="display: none;">
			<div class="row" style="margin:10px; padding:20px 20px 0 20px;">
				
					<h6 style="color: red;"> 새로운 비밀번호를 설정해 주세요. </h6>
					<input type="password" name="u_password" id="u_password"
						placeholder="새 비밀번호 (필수)" class="reg-form-control2">
					<p class="valid_password">특수기호 대소문자 어쩌구</p>
				
			</div>
			<div class="row" style="margin:0 10px 10px 10px; padding:10px 20px 20px 20px;" >
				
					<input type="password" id="passCheck" placeholder="새 비밀번호 확인 (필수)"
						class="reg-form-control2">
					<p class="match_password">비밀번호가 일치하지 않습니다.</p>
				
			</div>
			
			<div class="row" >
                <button type="submit" class="btn btn-outline-success" style=" display: inline-block; margin:auto; width: 50%; margin-bottom: 10px" onclick="uptpass()"> 로그인 하러가기
                    &nbsp;</button>
			</div>
			<script>
				function uptpass() {
					var u_id = $("#u_id").val();
					var u_password = $("#u_password").val();
					var param = {"u_id": u_id, "u_password": u_password }
					$.ajax({
						type: "POST",
			            url: "/updatePassword.user",
			            data: JSON.stringify(param),
			            dataType: "text",
			            contentType: "application/json",
						success : function(data) {
							alert("성공적으로 변경되었습니다.")
							location.href = "/login.user";
						},
						error : function(data) {
							console.log("로그인 통신x")
						}
	
					});//ajax 끝
				}
			</script>
		</div>
        </section>


   
   
    
</div>





	<!-- footer import -->
	<%@ include file="/WEB-INF/views/user/inc/footer.jsp"%>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>