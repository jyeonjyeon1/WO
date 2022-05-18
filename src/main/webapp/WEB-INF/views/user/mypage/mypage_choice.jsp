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
<script type="text/javascript">
	$(document).ready(function(){
		// 취소
		$(".cencle").on("click", function(){
			
			location.href = "/";
					    
		})
	
		$("#submit").on("click", function(){
			if($("#u_password").val()==""){
				alert("비밀번호를 입력해주세요.");
				$("#u_password").focus();
				return false;
			}	
		});
		
	})
</script>
</head>
<body>
	<!-- header import -->
	<%@ include file="/WEB-INF/views/user/inc/header.jsp"%>

<div class="container" style="margin: 30PX auto 50px; max-width: 600px;">
        <h3 class="text-center mt-60 mb-60" style="color:#6f6f6f">회원변경/탈퇴</h3>
        <section id="container">
			<form action="/myChoice.user" method="post">
			
			 <div class="row">
                <div class="col-sm-4"><label class="regis_label" for="u_id">아이디</label></div>
                <h5 class="col-sm-6"><input class="form-control" style="color:#6f6f6f" type="text" id="u_id" name="u_id" value="${userSession.u_id}" readonly="readonly"/>
            	</h5>
            </div>
            <br>
            
            <div class="row">
                <div class="col-sm-4"><label class="regis_label" for="u_password">비밀번호</label></div>
                <div class="col-sm-6"><input class="form-control" type="password" id="u_password" name="u_password"/></div>

            </div>
            <br>
            
            <br>
        	<div class="row" >
                <div style=" text-align: center;">
                <button type="submit" class="btn btn-outline-warning col-sm-6" style=" display: inline-block; margin:auto; width: 50%; margin-bottom: 10px" id="submit"> 회원변경/탈퇴로 가기
                    &nbsp;</button>
                </div>
                    <div style=" text-align: center;">
                    <button class="cencle btn btn-danger col-sm-6" style="display: inline-block; margin:auto; width: 50%;" type="button">취소</button></div>
            </div>
				
				
			</form>
			<div>
				<c:if test="${msg == false}">
					비밀번호가 맞지 않습니다.
				</c:if>
			</div>
		</section>
        
    </div>





	<!-- footer import -->
	<%@ include file="/WEB-INF/views/user/inc/footer.jsp"%>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>