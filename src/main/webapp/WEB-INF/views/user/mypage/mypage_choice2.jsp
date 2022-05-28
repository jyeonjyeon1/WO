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

</script>
</head>
<body>
	<!-- header import -->
	<%@ include file="/WEB-INF/views/user/inc/header.jsp"%>

<div class="container" style="margin: 30PX auto 50px; max-width: 600px;">
     <h3 class="text-center" style="color: #14385c; padding: 30px 30px 10px 30px;">회원변경/탈퇴 선택</h3>
         <h6 style="color: #6f6f6f; text-align: center; padding-bottom: 40px;">ㅇㅇ</h6>
		<section id="container">
        <form >
        

        
        <br>
        <div class="row" >
            <div style=" text-align: center;">
            <button type="button" class="btn btn-outline-warning col-sm-6" style=" display: inline-block; margin:auto; margin-right: 20px; height:200px; width: 40%; margin-bottom: 10px"; onclick="location.href='updateUser.user'"> 회원변경으로 가기
                &nbsp;</button>
                <button type="button" class="btn btn-outline-warning col-sm-6" style=" display: inline-block; margin:auto; height: 200px; width: 40%; margin-bottom: 10px"; onclick="location.href='deleteUser.user'"> 회원탈퇴로 가기
                    &nbsp;</button>
            </div>
                
        </div>
            
            
        </form>
     
    </section>
    
</div>





	<!-- footer import -->
	<%@ include file="/WEB-INF/views/user/inc/footer.jsp"%>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>