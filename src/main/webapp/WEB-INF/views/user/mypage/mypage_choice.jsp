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
</style>
<!-- ========================= JS here ========================= -->
<script src="resources/assets/js/jquery-3.6.0.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script type="text/javascript">
	$(document).ready(function(){
		// 취소
		$(".cencle").on("click", function(){
			
			location.href = "/";
					    
		})
	
		
		
	});
	
	function change() {
		console.log("ccc");
		
		if($("#u_password").val()==""){
			Swal.fire({
	            icon: "warning",
	            title: "비밀번호를 입력해 주세요.",
	           
	            showConfirmButton: true
	            //timer: 1500
	        });
			
			//alert("비밀번호를 입력해주세요.");
			$("#u_password").focus();
			
		}else {
			document.pwCheckCheck.submit();
			if(${msg == false}) {
				console.log("비번이 맞지 않습니다.")
				Swal.fire({
		            icon: "warning",
		            title: "비밀번호가 맞지 않습니다.",
		            content: "다시 입력해 주세요.",
		            showConfirmButton: true
		            //timer: 1500
		        });
			}else {
				console.log("비번맞아요.");
			}
		}
		
		
	}
	
	function bye() {
		
	}
</script>
</head>
<body>
	<!-- header import -->
	<%@ include file="/WEB-INF/views/user/inc/header.jsp"%>

<div class="container" style="margin: 30PX auto 50px; max-width: 600px; min-height:700px;">
        <h3 class="text-center" style="color: #14385c; padding: 30px 30px 10px 30px;">회원변경/탈퇴</h3>
         <h6 style="color: #6f6f6f; text-align: center; padding-bottom: 40px;">본인확인을 위해 비밀번호를 입력해 주세요.</h6>
		
            
        <section id="container">
			<form name ="pwCheckCheck" action="/myChoice.user" method="post">
			
			 <div class="row" >
			 
                <div class="col-lg-3" style="text-align:right; margin-left:30px;"><label class="regis_label" for="u_id">아이디</label></div>
                <div class="col-lg-6"><input class="form-control" style="color:#6f6f6f" type="text" id="u_id" name="u_id" value="${userSession.u_id}" readonly="readonly"/>
            	</div>
            	
            </div>
            <br>
            
            <div class="row">
            
                <div class="col-lg-3" style="text-align:right; margin-left:30px;"><label class="regis_label" for="u_password">비밀번호</label></div>
               
                <div class="col-lg-6"><input class="form-control" type="password" id="u_password" name="u_password"/></div>

            </div>
            <br>
            
            <br>
        	<div class="row" style="margin:0" >
        	<div class="col-lg-1"></div>
                <div class="col-lg-3" style="text-align:right;" >
                <button type="button" class="btn btn-outline-success " style=" display: inline-block;  width: 100%; " id="submit" onclick="change()" > 회원변경
                    &nbsp;</button>
                </div>
                <div class="col-lg-3" style="text-align:left;" >
                <button type="button" class="btn btn-outline-danger " style=" display: inline-block;  width: 100%; " id="submit" onclick="bye()" > 탈퇴
                    &nbsp;</button>
                </div>
                    <div class="col-lg-5" style="text-align:left;">
                    <button class="btn btn-outline-secondary " style="display: inline-block; width: 80%;" type="button" onclick="location.href='login.user'">취소</button></div>
            </div>
				
				
			</form>
			
			
			
			
		</section>
        
    </div>





	<!-- footer import -->
	<%@ include file="/WEB-INF/views/user/inc/footer.jsp"%>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>