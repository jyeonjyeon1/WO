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
				<p class="p_title fw-bold text-center fs-1 p_mb">워킹오더</p>
				
				<p class="p_content text-center">
					페이타랩은 다양한 프랜차이즈 카페 및 개인 카페 브랜드의 주문을 한 곳에서 할 수 있는 커피주문앱, 패스오더를 만드는
					팀이에요!</p> 
				<p class="p_content text-center">
				우리는 대형 프랜차이즈에서만 가능했던 스마트오더 시스템을 중소형 프랜차이즈 카페 및 개인
					카페까지 가능하도록 만들었고,</p> 
				<p class="p_content text-center">현재는 자체 오더 시스템을 갖고 있던 대형 프랜차이즈에서도 입점할 만큼
					놀라운 속도로 성장하고 있어요!</p> 
				<p class="p_content text-center">자신의 분야에서 탁월한 실력을 갖고 있는 동료들이 있었기에 이런 성과를
					이뤄낼 수 있었다고 생각해요.</p> 
				<p class="p_content text-center">그리고 우리의 서비스를 사랑해주시는 많은 파트너, 패써들과 함께 성장해
					나가고 있어요.
				</p>
			</div>
	
	
			<div class="aboutT container mt-3">
				<table class="table justify-content-md-center">
					<thead class="table-warning">
					</thead>
					<tbody>
						<tr>
							<td class="td_title fw-bold table-warning col-md-3">설립연도</td>
							<td class="td_content">2022년 3월</td>
						</tr>
						<tr>
							<td class="td_title fw-bold table-warning col-md-3">본사</td>
							<td class="td_content">서울특별시 중구 통일로 92, 12층(순화동, 케이지타워) </td>
						</tr>
						<tr>
							<td class="td_title fw-bold table-warning col-md-3">주요서비스</td>
							<td class="td_content">편의제공</td>
						</tr>
						<tr>
							<td class="td_title fw-bold table-warning col-md-3">주요사업</td>
							<td class="td_content">커피판매</td>
						</tr>
						<tr>
							<td class="td_title fw-bold table-warning col-md-3">가맹점</td>
							<td class="td_content">설명</td>
						</tr>
					</tbody>
				</table>
			</div>
	
		</div>

	<!-- footer import -->
		<%@ include file="/WEB-INF/views/user/inc/footer.jsp"%>
	</body>
</html>
