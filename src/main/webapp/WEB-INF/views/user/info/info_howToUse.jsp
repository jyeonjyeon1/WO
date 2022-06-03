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
	        .div_mainT {
	           padding : 0 100px;
	         
	        }
	        .div_mainT .infoT .p_title {
	        	color : #ffa000; 
	        	margin-bottom : 80px;
	        }
	        .div_mainT .infoT .p_content {
	        	color : #E8AD0C; 
	        	padding : 3px;
	        	font-size: 18px;
	        }
	        .div_mainT .aboutT {
	       		padding : 0 80px;
	        	font-size: 18px;
	        }
	        .div_mainT .aboutT table tbody tr td.td_title {
	       		padding : 25px;
	       		color : #ffa000; 
	        	font-size: 20px;
	        }
	        .div_mainT .aboutT table tbody tr td.td_content {
	       		padding : 25px;
	       		color : #E8AD0C; 
	        	font-size: 18px;
	        }
	        
    	</style>
		<!-- ========================= JS here ========================= -->
	</head>
	
	<body>
		<!-- header import -->
		<%@ include file="/WEB-INF/views/user/inc/header.jsp"%>
		
<div class="container">
<div class="div_mainT">
		  
			<div class="infoT">
				<img src="resources/assets/images/order.png" style="width:100%; height:auto;" >
			</div>
	
	
			<div class="aboutT container mt-3">
				
			</div>
	
		</div>
		</div>
		<!-- <div class="container m-5 p-5">
			<p class="fw-bold text-center fs-1 p_mb">이용 안내</p>
			<br>
			<br>
			<br>
			<div class="row justify-content-md-center mr-5 ml-5 pr-5 pl-5">
				<img src="img/product/product-8.jpg"
					class="rounded float-start col-sm-3 mb-5">
				<p class="col-sm-7 p-4 text-center">이미지에 해당하는 설명(설명까지 이미지 처리하는것도
					나쁘지 않을듯)</p>
	
				<p class="col-sm-7 p-4 text-center">이미지에 해당하는 설명(설명까지 이미지 처리하는것도
					나쁘지 않을듯)</p>
				<img src="img/product/product-9.jpg"
					class="rounded float-end col-sm-3">
			</div>
			<br>
			<div class="row justify-content-md-center mr-5 ml-5 pr-5 pl-5">
				<img src="img/product/product-7.jpg"
					class="rounded float-start col-sm-3">
				<p class="col-sm-7 p-4 text-center">이미지에 해당하는 설명(설명까지 이미지 처리하는것도
					나쁘지 않을듯)</p>
	
				<p class="col-sm-7 p-4 text-center">이미지에 해당하는 설명(설명까지 이미지 처리하는것도
					나쁘지 않을듯)</p>
				<img src="img/product/product-6.jpg"
					class="rounded float-end col-sm-3">
			</div>
			<br>
		</div>
		
 -->
		<!-- footer import -->
		<%@ include file="/WEB-INF/views/user/inc/footer.jsp"%>
	</body>
</html>