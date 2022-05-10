<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 완료</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="resources/assets/images/logo/logo_only.svg" rel="icon" />
<style>
.order__label {
	border-right: solid 1px #d9d9d9;
	padding-left: 20px;
	margin-right: 20px;
	
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/user/inc/header.jsp"%>
	<div class="container"
		style="margin: 30PX auto 50px; max-width: 400px;">
		<h3 class="text-center mt-60 mb-30">결제 완료</h3>
		<label class="form-control text-center"
			style="padding-top: 20px; padding-bottom: 20px;"> 주문이
			완료되었습니다.<br>부잉
		</label><br>
		<div class="container"
			style="background-color: white; border-radius: 10px; padding: 20px; border: solid 1px #ededed">
			<div class="row pb-10">
				<div class="col-4" class="order__label">
					<label>주문일시</label>
				</div>
				<div class="col-6" style="padding-left: 10px;">
					<label> ${completeOrder.o_order_date} </label>
				</div>
			</div>
			<div class="row">
				<div class="col-4" class="order__label">
					<label>주문번호</label>
				</div>
				<div class="col-6" style="padding-left: 10px;">
					<label> ${completeOrder.o_code} </label>
				</div>
			</div>
			<hr>
			<div class="row pb-10">
				<div class="col-4" class="order__label">
					<label>주문목록</label>
				</div>
				<div class="col-6" style="padding-left: 10px;">
					<label> ${completeOrder.o_list} </label>
				</div>
			</div>
			<div class="row">
				<div class="col-4" class="order__label">
					<label>요청사항</label>
				</div>
				<div class="col-6" style="padding-left: 10px;">
					<label> ${completeOrder.o_request} </label>
				</div>
			</div>
			<hr>
			<div class="row" style="font-weight:700;color:red;">
				<div class="col-4" class="order__label" >
					<label>결제금액</label>
				</div>
				<div class="col-6" style="padding-left: 10px;">
					<label> <fmt:formatNumber value="${completeOrder.o_total_price}"
														pattern="###,###" />원 </label>
				</div>
			</div>
		</div>
		<br>
		<button type="button" onclick="location.href='currentOrder.user'"
			class="col-6 btn btn-warning" style="width: 47%; color: #fff;">
			<i class="fa fa-cart-plus"></i>&nbsp; 주문내역 &nbsp;
		</button>
		<button type="button" onclick="location.href='index.user'"
			class="col-6 btn btn-outline-warning"
			style="float: right; width: 47%; color: #000;">
			<i class="fa fa-home"></i> 홈으로 &nbsp;
		</button>

	</div>
	<%@ include file="/WEB-INF/views/user/inc/footer.jsp"%>
	<script src="resources/assets/js/jquery-3.6.0.js"></script>
</body>
</html>