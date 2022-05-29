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
			<!-- 스크롤바 css코드 삽입 -->
			<style>
			.container-md {
				width: 250px;
				height: 500px;
				overflow: scroll;
				overflow-x: hidden;
			}
			
			.container-md::-webkit-scrollbar {
				width: 10px;
			}
			
			.container-md::-webkit-scrollbar-thumb {
				background-color: #F0CB85;
				border-radius: 10px;
				background-clip: padding-box;
				border: 2px solid transparent;
			}
			
			.container-md::-webkit-scrollbar-track {
				background-color: #AFFFEE;
				border-radius: 10px;
				box-shadow: inset 0px 0px 5px white;
			}
			
			.p_mb {
				margin-bottom: 20px;
			}
			
			<!-- 스크롤바 css코드 종료 -->
			
			
			.div_li {
				padding : 100px;
				color : purple;
			}
			.div_li div .ul_list {
				padding : 10px;
				margin : 10px;
				width : 600px;
				color : green;
			}
			.ml-5 {
				padding : 5px;
				width : 300px;
				height : 100px;
			}
			.text-warning2{
			color: #6f6f6f!important;
			}
			.text-warning3{
			color: #081828!important;
			}
			
			</style>
		<!-- ========================= JS here ========================= -->
	</head>
	
	<body>
		<!-- header import -->
		<%@ include file="/WEB-INF/views/user/inc/header.jsp"%>
		

		<div class="div_li m-5 p-5">
			<p class="fw-bold text-center fs-1 p_mb">이용 약관</p>
			<h2> &nbsp; &ensp; &emsp;</h2>
<!-- 			<div class="ml-5 pl-5"> -->
<!-- 				<ul class="m-5 p-2"> -->
<%-- 					<c:forEach var="termsLists" items="${termsLists}" varStatus="vs"> --%>
<%-- 						<li class="p-2"><a href="#a${vs.index}" class="text-warning2">${termsLists.t_title}</a></li> --%>
<%-- 					</c:forEach> --%>
					
<!-- 				</ul> -->
<!-- 			</div> -->
			<div
				class="container-md g-0 border rounded flex-md-row mb-4 shadow-sm h-md-250 position-relative">
				<ul class="m-5 p-2" style="float: right;">
					<c:forEach var="termsLists" items="${termsLists}" varStatus="vss">
						<li class="p-2"><a name="a${vss.index}" class="fw-bold text-center fs-3 mb-4 text-warning3">${termsLists.t_title}</a>
							<p class="fw-bold fs-4 p-1 mb-3" >${termsLists.t_content}</p>
						</li>
					</c:forEach>
					
				</ul>
			</div>
		</div>
		<!-- footer import -->
		<%@ include file="/WEB-INF/views/user/inc/footer.jsp"%>
	</body>
</html>
