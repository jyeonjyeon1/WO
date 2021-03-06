<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
<!-- 아이콘은 font-awesome으로 대체 -->
<!-- <link rel="stylesheet" href="css/elegant-icons.css" type="text/css"> -->
<!-- ========================= JS here ========================= -->
<script src="resources/assets/js/jquery-3.6.0.js"></script>

<style>
.shoping__cart__table table tbody tr td.shoping__cart__item img {
	align-items: center;
	margin-bottom: 15px;
}

.shoping__cart__table table tbody tr td.shoping__cart__item label {
	font-size: 20px;
}

.shoping__cart__table table tbody tr td.shoping__cart__item h3 {
	font-size: 15px;
	color: rgba(0, 0, 0, 0.575);
	margin-bottom:10px;
}
.shoping__cart__table table tbody tr td.shoping__cart__item h4 {
	font-size: 13px;
	color: rgba(0, 0, 0, 0.375);
	margin:2px 0px;
}

.shoping__cart__table table tbody tr td.shoping__cart__item button h5:hover
	{
	color: rgb(240, 57, 57);
}
</style>


</head>

<body>
	<!-- header import -->
	<%@ include file="/WEB-INF/views/user/inc/header.jsp"%>
	<!-- Shoping Cart Section Begin -->
	<section class="shoping-cart spad" style="padding: 0;">
		<div class="container" style="padding: 20px; background-color: white;">

			<div class="row" style="text-align: center;">
				<label>
					<h3 style="font-size: 40px; margin-bottom: 20px;">My Cart</h3>
				</label>
			</div>
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="order_alert"
						style="background-color: rgba(167, 161, 161, 0.425); border-radius: 10px; padding: 15px; margin: 0 30px 0 30px;">
						<h6>주문하는 매장 위치를 확인해 주세요!</h6>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12"
					style="text-align: center;">

					<!-- * 카카오맵 - 지도퍼가기 -->
					<!-- 1. 지도 노드 -->

					<div id="daumRoughmapContainer1649752833849"
						class="root_daum_roughmap root_daum_roughmap_landing rounded-lg"
						style="width: 90%; margin: 10px 30px 10px 30px;">
						<div class="order_store"
							style="text-align: left; margin: 10px 0px;">
							<h6 style="font-size: 20px;">${cartStore.si_name} ${cartStore.si_loc}</h6>
							<h6 style="font-size: 13px; color: rgba(0, 0, 0, 0.575);">
								${cartStore.si_addr_road} ${cartStore.si_addr_detail}</h6>
						</div>
					</div>



					<!--   2. 설치 스크립트   * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.-->
					<script charset="UTF-8" class="daum_roughmap_loader_script"
						src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

					<!-- 3. 실행 스크립트 -->
					<script charset="UTF-8">
						new daum.roughmap.Lander({
							"timestamp" : "1649752833849",
							"key" : "29tay",
							"mapWidth" : "100%",
							"mapHeight" : "100%"
						}).render();
					</script>

				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="shoping__cart__table" style="margin-top: 30px;">
						<table>
							<thead>
								<tr>
									<th>상품 주문정보</th>
									<th > </th>
									<th>가격</th>
									<th>수량</th>
									<th>합계</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
							<c:set var = "totalPrice" value = "0" />
							<c:set var = "totalNum" value = "0" />
								<c:forEach var="cartList" items="${cartList}" varStatus="vs">
									<input id="${cartList.b_seq}" type="hidden"
										value="${cartList.b_seq}" />
									<tr id="cartRow${vs.index}">
										<td class="shoping__cart__price"><img
											class="d-lg-inline-block d-md-inline-block"
											src="${cartList.m_img_file}" alt=""> </td>
											<td class="shoping__cart__item"><label
											id="name${vs.index}">${cartList.m_name} 
												<h3>${cartList.opb_name}<span style="opacity:0;">splitting</span>
												</h3>
											<c:if test="${cartList.op_code1 ne ' '}">
												<h4>└ ${cartList.op_name1} (<fmt:formatNumber value="${cartList.op_price1}" pattern="###,###"/>원)</h4>
											</c:if>	
											<c:if test="${cartList.op_code2 ne ' '}">
												<h4>└ ${cartList.op_name2} (<fmt:formatNumber value="${cartList.op_price2}" pattern="###,###"/>원)</h4>
											</c:if>	
											<c:if test="${cartList.op_code3 ne ' '}">	
												<h4>└ ${cartList.op_name3} (<fmt:formatNumber value="${cartList.op_price3}" pattern="###,###"/>원)</h4>
											</c:if>	
											<c:if test="${cartList.op_code4 ne ' '}">	
												<h4>└ ${cartList.op_name4} (<fmt:formatNumber value="${cartList.op_price4}" pattern="###,###"/>원)</h4>
											</c:if>	
											<c:if test="${cartList.op_code5 ne ' '}">	
												<h4>└ ${cartList.op_name5} (<fmt:formatNumber value="${cartList.op_price5}" pattern="###,###"/>원)</h4>
											</c:if>
										</label></td>

										<td class="shoping__cart__price">
											<div class="qtyqty">
												<div id="rowprice${vs.index}" style="display: inline;">
												<fmt:formatNumber
												value="${cartList.b_single_price}" pattern="###,###" /></div>
											</div>
										</td>
										<script>
											function delete${vs.index}(){
												Swal.fire({
													  text: "장바구니에서 삭제하시겠습니까?",
													  showCancelButton: true,
													  confirmButtonColor: "#3085d6",
													  cancelButtonColor: "#d33",
													  cancelButtonText: "취소",
													  confirmButtonText: "삭제"
													}).then((result) => {
													  if (result.isConfirmed) {
														  var b_seq = $("#${cartList.b_seq}").val();
														  var param = {"b_seq" : b_seq };
														  $.ajax({
													             type: "POST",
													             url: "/removeCart.user",
													             data: JSON.stringify(param),
													             dataType: "json",
													             contentType: "application/json",
													          success:function(data){
													        	  console.log(data);
													        	  if(data==1){
													        		  document.getElementById("cartRow${vs.index}").style.display = "none";
													        		  count${vs.index}("none");
													        	  }
													        	  
													          },
													          error:function(data){
													             console.log("장바구니 삭제 통신에러");
													          }
													       }); //ajax 끝
													  }
													});
											}
											function count${vs.index}(type) {
												// 결과를 표시할 element
												const resultElement = document
														.getElementById("result${vs.index}");
												let number = resultElement.innerText;
												
												//개별 금액
												const indivPrice = document
												.getElementById("rowprice${vs.index}");
												let price = parseInt(indivPrice.innerText.replace(",",""));
												
												//아이템의 합산 금액
												const rowElement = document
												.getElementById("rowtotal${vs.index}");
												let totnumber = rowElement.innerText;
												
												// 장바구니 합산 금액
												const totalElement = document
												.getElementById("totalPrice");
												let totalPrice = parseInt(totalElement.innerText.replace(",",""));
												
												// 장바구니 합산 수량
												const totalItemElement = document
												.getElementById("totalItem");
												let totalItem = parseInt(totalItemElement.innerText);
												
												//헤더쪽
												const head_quan = document.getElementById("headb_quantity${vs.index}");
												const head_price = document.getElementById("headb_tot_price${vs.index}");
												const head_tot_quan = document.getElementById("totNum");
												const head_tot_quan2 = document.getElementById("totNum2");
												const head_tot_price = document.getElementById("totalPricee");
												
												// 더하기/빼기
												if (type === "plus") {
													number = parseInt(number) + 1;
													totnumber = parseInt(number)*price;
													totalPrice = totalPrice + price;
													totalItem++;
												} else if (type === "minus") {
													number = parseInt(number) - 1;
													totnumber = parseInt(number)*price;
													if(number<0){
														
													}else{
														totalItem--;
														totalPrice = totalPrice - price;
													}
												} else if (type === "none") {
													
													if(number<0){
														
													}else{
														totalItem-=parseInt(number);
														totalPrice = totalPrice - parseInt(number)*price;
													}
													number = 0;
													totnumber = parseInt(number)*price;
												}

												// 결과 출력
												if (number < 0 || totnumber<0) {
													number = 0;
													totnumber= 0;
												}
												resultElement.innerText = number;
												rowElement.innerText = totnumber.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
												totalElement.innerText = totalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
												totalItemElement.innerText = totalItem.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
												
												//header
												head_quan.innerText =number;
												head_price.innerText=totnumber.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
												head_tot_price.innerText=totalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
												head_tot_quan.innerText=totalItem.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
												head_tot_quan2.innerText=totalItem.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") +  "   개";
												var b_seq = $("#${cartList.b_seq}").val();
												var param = {
														"b_seq" : parseInt(b_seq) ,
														"b_quantity" : parseInt(number) , 
														"b_total_price" : totnumber
														};
												  $.ajax({
											             type: "POST",
											             url: "/updateCart.user",
											             data: JSON.stringify(param),
											             dataType: "json",
											             contentType: "application/json",
											          success:function(data){
											        	  
											          },
											          error:function(data){
											             console.log("장바구니 삭제 통신에러");
											          }
											       }); //ajax 끝
											}
											//줄마다 가격x수량
										</script>
										<td class="shoping__cart__quantity" style="min-width:70px"><input
											class="qtybtn__" type="button" onclick="count${vs.index}('minus')"
											value="-" />
											<div class="qtyqty">
												<div id="result${vs.index}" style="display: inline;">${cartList.b_quantity}</div>
											</div> <input class="qtybtn__" type="button"
											onclick="count${vs.index}('plus')" value="+" /></td>
										<td class="shoping__cart__total">
											<div class="qtyqty">
												<div id="rowtotal${vs.index}" name="b_total_price" style="display: inline;">
												<fmt:formatNumber
												value="${cartList.b_total_price}" pattern="###,###" /></div>
											</div>
												</td>
										<td class="shoping__cart__item__close"><button onclick="delete${vs.index}()"
											style="color: gray;border:none;background:none;"><i class="fa fa-close"></i></button></td>
									</tr>
									<c:set var= "totalPrice" value="${totalPrice + cartList.b_total_price}"/>
									<c:set var= "totalNum" value="${totalNum + cartList.b_quantity}"/>
								</c:forEach>
								<c:if test="${totalNum eq 0 }">
									<td colspan="4" align="center" style="height: 60px; padding:20px; font-size: 16px;">장바구니가 비어있습니다</td>
								</c:if>
								<tr>
									<td colspan="4" class="shoping__cart__item"
										style="text-align: center;">
										<button onclick="window.history.back()"
											style="border: none; background-color: transparent; height: 50px;">
											<h5>
												<i class="lni lni-circle-plus"></i> 메뉴 더 추가하러가기
											</h5>
										</button>
									</td>


								</tr>

							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="row">




				<div class="col-lg-12">
					<div class="shoping__checkout">
						<h5>합계금액</h5>
						<ul>
							<li>주문 수량 <span id="totalItem"><fmt:formatNumber
												value="${totalNum}" pattern="###,###" /></span></li>
							<li>합계 금액 <span id="totalPrice"><fmt:formatNumber
												value="${totalPrice}" pattern="###,###" /></span></li>
						</ul>
						<a href="/myOrder.user" class="primary-btn" style="height: 45PX;">결제하기</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Shoping Cart Section End -->



	<!-- footer import -->
	<!-- <%@ include file="/WEB-INF/views/user/inc/footer.jsp" %> -->
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>