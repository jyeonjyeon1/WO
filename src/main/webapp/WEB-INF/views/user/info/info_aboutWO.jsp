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
	           padding : 100px;
	         
	        }
	        .div_mainT .infoT .p_title {
	        	color : #ffa000; 
	        	margin-top : 20px;
	        	margin-bottom : 80px;
	        }
	        .div_mainT .infoT .p_content {
	        	color : #E8AD0C; 
	        	padding : 3px;
	        	font-size: 18px;
	        }
	        .div_mainT .aboutT {
	       		padding : 80px;
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

		<div class="div_mainT">
		  
			<div class="infoT">
				<img src="resources/assets/images/sajang.png" style="width:100%; height:auto;" >
				<img src="resources/assets/images/sajang2.png" style="width:100%; height:auto;" >
				<img src="resources/assets/images/sajang3.png" style="width:100%; height:auto;" >
				<img src="resources/assets/images/sajang4.png" style="width:100%; height:auto;" >
			</div>
	
	
			<div class="aboutT container mt-3">
				
			</div>
	
		</div>

	<!-- footer import -->
		<%@ include file="/WEB-INF/views/user/inc/footer.jsp"%>
	</body>
</html>
