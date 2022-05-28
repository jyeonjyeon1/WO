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
	ch5 = true;//regPhone
	ch6 = false;
	var regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/; //no need if we get authentication
	
	$(document).ready(
			
			
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
			
			if(document.getElementById('tab1').checked) {
				console.log("f");
				document.getElementById("tab_content1").style.display ="block";
				document.getElementById("tab_content2").style.display="none";
			}else {
				document.getElementById("tab_content1").style.display="none";
				document.getElementById("tab_content2").style.display="block";
			}
		
		});
	
	
	var verifNum = []; //인증번호
	var verifTime = 180;// 180초=3분
	function phoneVerif(){
		if(ch5){//번호 제대로 입력했을 경우만
			//$("#phoneVerif_btn").attr("disabled", true); //비활성화
			$("#u_tel").attr("disabled", true);
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
			verifNum = [];
			document.getElementById("phoneVerif_btn").innerHTML = "번호 인증";
			$("#phoneVerif_btn").removeAttr("onclick");//checkVerif 삭제
			$("#phoneVerif_btn").attr("onclick","phoneVerif()");//phoneverif 추가
			$("#u_tel").attr("disabled", true);
			clearInterval(tid);
			ch6 = true;
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
			$("#u_tel").attr("disabled", false);
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
		$("#u_tel").attr("disabled", false);
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
	
	function telCheck() {
		var u_tel = $("#u_tel").val();
		var param = {"u_tel": u_tel }
		$.ajax({
			type: "POST",
            url: "/findId.user",
            data: JSON.stringify(param),
            dataType: "text",
            contentType: "application/json",
			success : function(data) {
				if(data != null){
					$(".dis1").show();
					$(".dis2").hide();
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
	
	//====================비밀번호찾기========================


</script>
</head>
<body>
	<!-- header import -->
	<%@ include file="/WEB-INF/views/user/inc/header.jsp"%>

  <div class="container" style="margin: 30PX auto 50px; max-width: 700px; min-height: 700px;">






        <input id="tab1" type="radio" name="tabs" style="display:none;" checked> 
        <label class="tab_label" for="tab1" onclick="gotap1()">아이디 찾기</label>
    
        <input id="tab2" type="radio" name="tabs" style="display:none;">
        <label class="tab_label" for="tab2" onclick="gotap2()">비밀번호 찾기</label>
    
    
        <section class="tab_content" id="tab_content1" style="display: none;">
          
		  <h4 class="text-center" style="color: #14385c; padding: 30px 30px 10px 30px;">아이디 찾기</h4>
            <h6 style="color: #6f6f6f; text-align: center; padding-bottom: 40px;">아이디는 가입시 입력하신 핸드폰번호를 통해 찾을 수 있습니다. </h6>
		
		<div class="dis2">

			
				<form>     
				<div class="row">
					<div class="col-9 mt-10">
						<input type="text" id="u_tel" name="u_tel"
							placeholder="전화번호( - 제외)" class="reg-form-control col-12 u_tel" style="display:inline-block;">
							<input type="text" id="verif_num" 
							placeholder="인증번호" class="reg-form-control col-5 verif_num">
						<p class="tel_form">전화번호 형식을 맞춰주세요</p>
						<div class="row">
						<div class="col-lg-3">
						<div id="phoneVerifTime" class="phoneVerifTime">
						</div>
						</div>
						<div class="col-lg-4">
						<button class="phone_reset_btn active" type="button" onclick="reset_Phone()">
							<i class="fa fa-rotate-left"></i>
						</button>
						</div>
						</div>
					</div>
					<div class="col-3 mt-10" style="padding-left: 0;">
						<button type="button" onclick="phoneVerif()" id="phoneVerif_btn" class="reg-form-control phoneVerif_btn">번호
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
	                        <button class="btn btn-outline-secondary" style="display: inline-block; margin:auto; width: 100%;" type="button" onclick="location.href='findPassword.user'">로그인으로 돌아가기</button></div>
	                </div>	
			</form>
		</div>
		
		
		<div class="dis1" style="display: none;">

			<label>찾으시는 아이디는  
				<span id="id"></span>
			입니다.</label>
			
			<button type="button" class="btn btn-outline-warning col-sm-6" style=" display: inline-block; margin:auto; width: 50%; margin-bottom: 10px" onclick="location.href='login.user'"> 확인
                    &nbsp;</button></div>
		

		
		
        </section>
    
        <section class="tab_content" id="tab_content2"  style="display: none;">
            <p style="margin: 0 0 20px; line-height: 1.5;">tab menu2의 내용</p>
        </section>


   
   
    
</div>





	<!-- footer import -->
	<%@ include file="/WEB-INF/views/user/inc/footer.jsp"%>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>