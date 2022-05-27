<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko" class="">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>가게 등록 폼</title>

<!-- Favicons -->
<link href="resources/assets/images/admin/logo/logo_only.svg" rel="icon">
<link href="resources/assets/images/admin/apple-touch-icon.png"
	rel="apple-touch-icon">
<script src="https://sdk.amazonaws.com/js/aws-sdk-2.891.0.min.js"></script>
<!-- Custom styles for this template -->
<link href="resources/assets/js/admin/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!--external css-->
<link href="resources/assets/js/admin/font-awesome/css/font-awesome.css"
	rel="stylesheet" />
<!-- Custom styles for this template -->
<link href="resources/assets/css/admin/style.css" rel="stylesheet">
<link href="resources/assets/css/admin/style-responsive.css"
	rel="stylesheet">

<!-- 테이블용 css -->
<style>
.tel_form, .email_form, .regName_label, .regCode_label, .regRepName_label{
	display: none;
}

.tel_form.active, .email_form.active, .regName_label.active, .regCode_label.active, .regRepName_label.active {
	display: block;
	padding-left: 5px;
	color: red;
}
</style>
</head>

<body>
	<section id="container">
	<header class="header black-bg">
      <div class="sidebar-toggle-box">
        <img src="resources/assets/images/admin/logo/logo_white.svg" width="25">
      </div>
      <!--logo start-->
      <a class="logo"><b>walking<span>order</span></b></a>
      <!--logo end-->
    </header> 
		<!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
		<!--main content start-->
		<section class="container">
			<section class="wrapper site-min-height">
				<div class="row mt" style="margin-top: 5px;">
					<!-- 왼쪽 영역 시작 -->
					<div class="col-12" style="min-width: 500px; max-width:900px;">
						<div class="card-header" style="font-size: 16px;">
							<i class="fa fa-plus-circle" style="font-size: 14px;"></i> 등록 신청
						</div>
						<div class="form-panel"
							style="margin-top: 0; padding-bottom: 38px; border-radius: 0 0 10px 10px;">
							<form name="storeRegForm" action="/regisStoreForm.admin"
								class="form-horizontal style-form" method="post">
								<div class="form-group">
									<label class="col-sm-2 control-label">매장명</label>
									<div class="col-sm-6">
										<input class="form-control" id="si_name" name="sf_name"
											type="text" placeholder="매장명">
										<p class="regName_label">이름 이상</p>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">지점</label>
									<div class="col-sm-3">
										<input class="form-control" id="si_loc" name="sf_loc"
											type="text" placeholder="지점">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">사업자번호</label>
									<div class="col-sm-4">
										<input class="form-control" id="si_code" name="sf_code"
											type="text" placeholder="사업자번호 ( - 제외)">
											<p class="regCode_label">사업자번호는 10자리입니다</p>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">대표자 성함</label>
									<div class="col-sm-4">
										<input class="form-control" id="rep_name" name="sf_rep_name"
											type="text" placeholder="대표자 성함">
											<p class="regRepName_label">이름 이상</p>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">주소</label>
									<div class="col-sm-2">
										<input class="form-control" name="sf_zipcode" id="post__code"
											type="text" placeholder="우편번호">
									</div>
									<div class="col-sm-6">
										<input class="form-control" name="sf_address"
											id="road__Address" type="text"
											placeholder="서울시 종로구 삼일대로28길 14">
									</div>
									<div class="col-sm-2" style="margin-top: 2px;">
										<input class="grey__button" type="button"
											onclick="getPostCode()" value="검색">
									</div>
									<div class="col-sm-2">&nbsp;</div>
									<div class="col-sm-2">&nbsp;</div>
									<div class="col-sm-3">
										<input class="form-control" name="sf_addr_road"
											id="extra__Address" type="text" placeholder="동">
									</div>
									<div class="col-sm-4">
										<input class="form-control" name="sf_addr_detail"
											id="detail__Address" type="text" placeholder="상세주소">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">전화번호</label>
									<div class="col-sm-4">
										<input class="form-control" type="text" name="sf_tel"
											id="si_tel" placeholder="0212345678">
										<p class="tel_form">전화번호 형식을 맞춰주세요</p>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">이메일</label>
									<div class="col-sm-5">
										<input class="form-control" type="email" name="sf_email"
											id="sa_email" placeholder="walking@walking.com">
										<p class="email_form">이메일 형식을 맞춰주세요</p>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">사업자등록증</label>
									<div class="col-sm-5">
										<input id="businessreg" type="file" 
											accept="image/*" name="sf_business_registration_image">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">통장사본</label>
									<div class="col-sm-5">
										<input id="bankcopy" type="file"
											accept="image/*" name="sf_bankbook_image">
									</div>
								</div>
								<!-- <div class="form-group">
									<label class="col-sm-2 control-label">영업시간</label>
									<div class="col-sm-10">
										<input class="form-control round-form" name="sf_open"
											type="time" value="09:00"
											style="width: 20%; display: inline-block; margin-right: 10px;">
										~ <input class="form-control round-form" name="sf_close"
											type="time" value="21:00"
											style="width: 20%; display: inline-block; margin-left: 10px;">
									</div>
								</div> -->


								<div class="form-group">
									<label class="col-sm-2 control-label">주차여부</label>
									<div class="col-sm-10" style="padding: 0;">
										<div class="col-sm-7">
											<label class="radio-inline"> <input type="radio"
												name="sf_parking_able" id="inlineRadio1" value="true">
												가능
											</label> <label class="radio-inline"> <input type="radio"
												name="sf_parking_able" id="inlineRadio2" value="false"
												checked> 불가
											</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">매장사용</label>
									<div class="col-sm-10" style="padding: 0;">
										<div class="col-sm-7">
											<label class="radio-inline"> <input type="radio"
												name="sf_usestore" id="inlineRadio3" value="true">
												가능
											</label> <label class="radio-inline"> <input type="radio"
												name="sf_usestore" id="inlineRadio4" value="false" checked>
												불가
											</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label">특이사항</label>
									<div class="col-sm-8">
										<input class="form-control" id="si_referinfo"
											name="sf_referinfo" type="text" placeholder="">
									</div>
								</div>



								<button type="button" onclick="finalCheck()"
									class="btn btn-theme" style="float: right;">전 송</button>
							</form>
						</div>
					</div>
					<!-- 왼쪽영역 끝 -->
				</div>
			</section>
			<!-- /wrapper -->
		</section>
		<!-- /MAIN CONTENT -->
		<!--main content end-->



		<!-- 푸더 -->
		<section id="container">
			<footer class="site-footer">
				<div class="text-center">
					<p>
						&copy; Copyrights <strong>WalkingOrder</strong>. All Rights
						Reserved
					</p>
				</div>
			</footer>
			<!--footer end-->
		</section>
		<!--footer end-->
	</section>
	<!-- 다음 지도 api -->
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<!-- js placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="resources/assets/js/admin/bootstrap/js/bootstrap.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script>
	<!-- js placed at the end of the document so the pages load faster -->
	var code = "";
	function fileUpload(){
		var fileInput = document.getElementsByClassName("ex_file");

		for( var i=0; i<fileInput.length; i++ ){
			if( fileInput[i].files.length > 0 ){
				for( var j = 0; j < fileInput[i].files.length; j++ ){
					console.log(fileInput[i].files[j].name); // 파일명 출력
				}
			}
		}

	}
	 // 사업자등록증 업로드 
    uploadImgbusinessreg = () => {
        AWS.config.update({
            region: 'ap-northeast-2',
            credentials: new AWS.CognitoIdentityCredentials({
                IdentityPoolId: '<spring:eval expression='@config.getProperty("S3_POOL_ID")'/>',
            })
        })

        let files = document.getElementById('businessreg').files;
        let file = files[0];
        let fileNamebusinessreg = file.name;
        fileNamebusinessreg = code + fileNamebusinessreg;

        let upload = new AWS.S3.ManagedUpload({
            params: {
                Bucket: 'walkingorder/businessreg',
                Key: fileNamebusinessreg,
                ContentType : "image/jpeg",
                Body: file
            }
        })

        const promise = upload.promise();
        
    }

    // 통장사본 업로드 
    uploadImgbankcopy = () => {
        AWS.config.update({
            region: 'ap-northeast-2',
            credentials: new AWS.CognitoIdentityCredentials({
                IdentityPoolId: '<spring:eval expression='@config.getProperty("S3_POOL_ID")'/>',
            })
        })

        let files = document.getElementById('bankcopy').files;
        let file = files[0];
        let fileNamebankcopy = file.name;
        fileNamebankcopy = code + fileNamebankcopy;

        let upload = new AWS.S3.ManagedUpload({
            params: {
                Bucket: 'walkingorder/bankcopy',
                Key: fileNamebankcopy,
                ContentType : "image/jpeg",
                Body: file
            }
        })

        const promise = upload.promise();
        
    }
    
    function getPostCode() {
        new daum.Postcode({
          oncomplete: function (data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
              extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if (data.buildingName !== '' && data.apartment === 'Y') {
              extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if (extraRoadAddr !== '') {
              extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('post__code').value = data.zonecode;
            document.getElementById("road__Address").value = roadAddr;

            // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
            if (roadAddr !== '') {
              document.getElementById("extra__Address").value = extraRoadAddr;
            } else {
              document.getElementById("extra__Address").value = '';
            }

            document.getElementById("detail__Address").focus();
          }
        }).open();
      }


    var ch1, ch2, ch3, ch4, ch5, ch6, ch7, ch8;
	ch1 = false;//특이사항
// 	ch2 = false;//우편 
 	ch3 = false;//대표자이름
	ch4 = false;//매장명
	ch5 = false;//phone authentication
	ch6 = false;//regEmail
	ch7 = false;//regCode
	
	var regRepName = /^[a-zA-Z가-힣\s]+$/;
	var regName = /^[a-zA-Z0-9가-힣\s\'\"]+$/;
	var regCode = /^[0-9]{10}$/;
	var regPhone = /^0([0-9]{7,11})$/;
	var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
	
	jQuery(document).ready(
			function() {
				$("#si_referinfo").on("propertychange change keyup paste input",
						function(){
					var referinfo = $("#si_referinfo").val();
					if(referinfo == ""){ch1 = false;}
					else {ch1=true;}
				});
				
				$("#si_name").on(
						"propertychange change keyup paste input",
						function() {
							var name = $("#si_name").val();

							if (regName.test(name) == false) {
								$(".regName_label").addClass('active');
								ch4 = false;
							} else {
								$(".regName_label").removeClass('active');
								ch4 = true;
							}
						});
				$("#rep_name").on(
						"propertychange change keyup paste input",
						function() {
							var rep_name = $("#rep_name").val();

							if (regRepName.test(rep_name) == false) {
								$(".regRepName_label").addClass('active');
								ch3 = false;
							} else {
								$(".regRepName_label").removeClass('active');
								ch3 = true;
							}
						});
				
				$("#si_code").on(
						"propertychange change keyup paste input",
						function() {
							code = $("#si_code").val();
							if (regCode.test(code) == false) {
								$(".regCode_label").addClass('active');
								ch7 = false;
							} else {
								$(".regCode_label").removeClass('active');
								ch7 = true;
							}
						});
				$("#si_tel").on("propertychange change keyup paste input",
		                  function() {
		                     var tel = $("#si_tel").val();
		                     if(tel.indexOf('-')!=-1){
		                        $(".tel_form").addClass('active');
		                        ch5 = false;
		                     }else if (tel.length > 7 && regPhone.test(tel) == false) {
		                    	 $(".tel_form").addClass('active');
		                        ch5 = false;
		                     } else {
		                    	 $(".tel_form").removeClass('active');
		                        ch5 = true;
		                     }
		                  });


				$("#sa_email").on(
						"propertychange change keyup paste input",
						function() {
							var email = $("#sa_email").val();

							if (email.length > 7
									&& regEmail.test(email) == false) {
								$(".email_form").addClass('active');
								ch6 = false;
							} else {
								$(".email_form").removeClass('active');
								ch6 = true;
							}
						});

			});

	
	function finalCheck(){
	if(ch7 &&ch3 && ch5 && ch6 && $("#post__code").val()!=''&& $("#road__Address").val()!=''	) {
		uploadImgbusinessreg();
		uploadImgbankcopy();
		document.storeRegForm.submit();
	}else{
		Swal.fire({
			icon:"error",
			text:"어딘가 잘못 작성"
		});
	}
}
  </script>

</body>

</html>