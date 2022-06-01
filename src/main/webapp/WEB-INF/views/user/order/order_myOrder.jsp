<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="kor">

<head>
<meta charset="UTF-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>워킹오더 결제</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="resources/assets/images/logo/logo_only.svg" rel="icon" />

<!-- ========================= CSS here ========================= -->
<!-- 아이콘은 font-awesome으로 대체 -->
<!-- <link rel="stylesheet" href="css/elegant-icons.css" type="text/css"> -->
<!-- ========================= JS here ========================= -->
<script src="resources/assets/js/jquery-3.6.0.js"></script>

<style>
input::-webkit-inner-spin-button {
	appearance: none;
	-moz-appearance: none;
	-webkit-appearance: none;
}
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

.btn__hover:hover {
	cursor: pointer;
}

.left_point_label{
	display:none;
}
.left_point_label.active{
	display:block;
	color: blue; 
	min-width:200px;
}
</style>


</head>

<body>
	<!-- header import -->
	<%@ include file="/WEB-INF/views/user/inc/header.jsp" %> 
	<!-- Shoping Cart Section Begin -->
	<section class="shoping-cart spad" style="padding: 0;">
		<div class="container" style="padding: 20px; background-color: white;">

			<div class="row" style="text-align: center;">
				<h3 style="font-size: 36px; margin-bottom: 20px;">결제하기</h3>
			</div>


			<div class="row"
				style="background-color: rgba(255, 228, 196, 0.788); padding: 15px; border-radius: 10px;">
				<h6 style="font-size: 20px;">${cartStore.si_name}
					${cartStore.si_loc}</h6>
				<h6 style="font-size: 13px; color: rgba(0, 0, 0, 0.575);">
					${cartStore.si_addr_road} ${cartStore.si_addr_detail}</h6>

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
								<c:set var="totalB_Seq" value="" /><!-- 총 b_seq -->
								<c:set var="totalPrice" value="0" /><!-- 총 금액 -->
								<c:set var="totalNum" value="0" /><!-- 총 수량 -->
								<c:set var="totalList" value="0" /><!-- 중복제거 총 아이템 수 -->
								<c:set var="list_detail"></c:set><!-- 주문목록 전체 -->
								<c:forEach var="cartList" items="${cartList}" varStatus="vs">
									<input id="b_seq${vs.index}" type="hidden"
										value="${cartList.b_seq}" />
									<tr id="cartRow${vs.index}">
										<td class="shoping__cart__price"><img
											class="d-lg-inline-block d-md-inline-block"
											src="${cartList.m_img_file}" alt=""> </td>
											<td class="shoping__cart__item"><label
											>${cartList.m_name} 
												<h3>${cartList.opb_name}<span style="opacity:0;">splitting</span>
												</h3>
											<span id="name${vs.index}" style="display:none;">${cartList.m_name} ${cartList.opb_name}</span>
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
													<fmt:formatNumber value="${cartList.b_single_price}"
														pattern="###,###"/>
												</div>
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
														  var b_seq = $("#b_seq${vs.index}").val();
														  var param = {"b_seq" : b_seq };
														  var B_Seq = (document.getElementById("totalB_Seq").innerText).replace(b_seq,"");
														  document.getElementById("totalB_Seq").innerText = B_Seq;
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
													})
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
													no_point_total =totalPrice;
													totalItem++;
												} else if (type === "minus") {
													number = parseInt(number) - 1;
													totnumber = parseInt(number)*price;
													if(number<0){
														
													}else{
														totalItem--;
														totalPrice = totalPrice - price;
														no_point_total =totalPrice;
													}
												} else if (type === "none") {
													
													if(number<0){
														
													}else{
														totalItem-=parseInt(number);
														totalPrice = totalPrice - parseInt(number)*price;
														no_point_total =totalPrice;
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
												var b_seq = $("#b_seq${vs.index}").val();
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
										<td class="shoping__cart__quantity" style="min-width: 70px"><input
											class="qtybtn__" type="button"
											onclick="count${vs.index}('minus')" value="-" />
											<div class="qtyqty">
												<div id="result${vs.index}" style="display: inline;">${cartList.b_quantity}</div>
											</div> <input class="qtybtn__" type="button"
											onclick="count${vs.index}('plus')" value="+" /></td>
										<td class="shoping__cart__total">
											<div class="qtyqty">
												<div id="rowtotal${vs.index}" name="b_total_price"
													style="display: inline;">
													<fmt:formatNumber value="${cartList.b_total_price}"
														pattern="###,###" />
												</div>
											</div>
										</td>
										<td class="shoping__cart__item__close"><button
												onclick="delete${vs.index}()"
												style="color: gray; border: none; background: none;">
												<i class="fa fa-close"></i>
											</button></td>
									</tr>
									<c:set var="totalPrice"
										value="${totalPrice + cartList.b_total_price}" />
									<c:set var="totalNum" value="${totalNum + cartList.b_quantity}" />
									<c:set var="totalB_Seq" value="${totalB_Seq},,,${cartList.b_seq}" />
									<c:set var="totalList" value="${totalList + 1}" />
									<c:set var="list_detail" value="${list_detail},,,${cartList.m_name} ${cartList.opb_name}" />
								</c:forEach>
							</tbody>
						</table>
						<span id="totalList" style="display:none;">${totalList}</span>
						<span id="list_detail" style="display:none;">${list_detail}</span>
						<span id="totalB_Seq" style="display:none;">${totalB_Seq}</span>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="shoping__continue">
						<div class="shoping__discount">
							<h5 style="margin: 5px;">요청 사항</h5>
							<form action="#">
								<input type="text" id="o_request" placeholder="예) 아메리카노 싱겁게 부탁드려요"
									style="width: 85%; padding-left: 15px; text-align: left; background-color: white; border-radius: 5px; border: solid 1px rgba(148, 143, 143, 0.205);">


							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6" style="margin-bottom: 0;">
					<div class="shoping__continue">
						<div class="shoping__discount">
							<h5 style="margin: 10px;">쿠폰 사용</h5>
							<form action="#">
								<input type="text" placeholder="쿠폰번호를 입력해주세요.">
								<!-- <button type="submit" class="site-btn">쿠폰검색</button> -->
								<!-- Button trigger modal -->
								<button type="button" class="btn btn-primary"
									data-bs-toggle="modal" data-bs-target="#staticBackdrop">쿠폰검색</button>
							</form>
							<!-- 의미없는 form end -->
							<!-- Modal -->
							<div class="modal fade coupon_modal" id="staticBackdrop"
								data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
								gkqrP="staticBackdropLabel" aria-hidden="true">

								<div
									class="modal-dialog modal-dialog-centered modal-dialog-scrollable"
									style="min-width: 600px;">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="staticBackdropLabel"
												style="text-align: center;">사용 가능한 쿠폰</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>

										<div class="modal-body">

											<div class="coupon-check">

												<div class="coupon-box">
													<div class="row">
														<div class="col-2"
															style="margin-top: 80px; padding-left: 40px; display: inline-block;">
															<input type="checkbox" value="" style="zoom: 2.0;">
														</div>
														<div class="col-10">
															<div class="coupon_card mb-3">
																<div class="row g-0">
																	<div class="col-md-4 col-sm-12">
																		<img
																			src="resources/assets/images/categories/cat-1.jpg"
																			class="img-fluid rounded-start" alt="...">
																	</div>
																	<div class="col-md-8">
																		<div class="coupon_card-body">
																			<a class="coupon_card-title">[친구초대] 공짜리카노쿠폰</a>
																			<p class="coupon_card-text1">1500원 할인</p>
																			<p class="coupon_card-text2">
																				<small class="text-muted">~2022.05.08 까지</small>
																			</p>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- 사용가능한 쿠폰 -->

											<div class="coupon-check">

												<div class="coupon-box">
													<div class="row">
														<div class="col-2"
															style="margin-top: 80px; padding-left: 40px; display: inline-block;">
															<input type="checkbox" value="" style="zoom: 2.0;">
														</div>
														<div class="col-10">
															<div class="coupon_card mb-3" style="max-width: 540px;">
																<div class="row g-0">
																	<div class="col-md-4 col-sm-12">
																		<img
																			src="resources/assets/images/categories/cat-2.jpg"
																			class="img-fluid rounded-start" alt="...">
																	</div>
																	<div class="col-md-8">
																		<div class="coupon_card-body">
																			<a class="coupon_card-title">[첫주문할인] 100원 쿠폰</a>
																			<p class="coupon_card-text1">아메리카노 100원</p>
																			<p class="coupon_card-text2">
																				<small class="text-muted">~2022.05.08 까지</small>
																			</p>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>

											<!-- 사용가능한 쿠폰 -->

											<div class="coupon-check">

												<div class="coupon-box">
													<div class="row">
														<div class="col-2"
															style="margin-top: 80px; padding-left: 40px; display: inline-block;">
															<input type="checkbox" value="" style="zoom: 2.0;"
																disabled>
														</div>
														<div class="col-10">
															<div class="coupon_card mb-3" style="max-width: 540px;">
																<div class="row g-0">
																	<div class="col-md-4 col-sm-12">
																		<img
																			src="resources/assets/images/categories/cat-3.jpg"
																			class="img-fluid rounded-start" alt="...">
																	</div>
																	<div class="col-md-8">
																		<div class="coupon_card-body">
																			<a class="coupon_card-title">[민초단할인] 30%할인쿠폰</a>
																			<p class="coupon_card-text1">제주말차프라푸치노 30% 할인</p>
																			<p class="coupon_card-text2">
																				<small class="text-muted">~2022.05.08 까지</small>
																			</p>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>


										</div>

										<div class="modal-footer">
											<div class="col text-center">
												<!-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button> -->
												<button type="button" data-bs-dismiss="modal"
													class="btn btn-primary btn-lg btn-block">쿠폰선택</button>
												<!-- <button type="button" class="btn btn-primary btn-lg btn-block">Block level button</button> -->

											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- modal end -->

						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="shoping__continue">
						<div class="shoping__discount" style="margin-top: 35px;">
							<h5 style="margin-bottom: 5px;">포인트 사용</h5>
							<label style="color: rgba(255, 64, 64, 0.781);">사용가능 금액 :
								<fmt:formatNumber value="${userSession.u_point }"
														pattern="###,###" /> p</label>
							<form action="#">

								<input type="number" id="o_point" placeholder="금액을 입력해주세요." max="${userSession.u_point}" oninput="maxLengthCheck(this)">
								<!-- <button type="submit" class="site-btn">쿠폰검색</button> -->
								<!-- Button trigger modal -->
								<button type="button" class="btn btn-primary"
									data-bs-toggle="modal" data-bs-target="#PointUse">사용하기</button>
								<label class="left_point_label">남는 금액 :
								<span id="left_point"></span> p</label>
								<!-- Modal -->
								<div class="modal" id="PointUse" tabindex="-1">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title">사용가능 금액 :
								<fmt:formatNumber value="${userSession.u_point }"
														pattern="###,###" /> p</h5>
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body">
												<p><span id="o_point_modal">0</span> 포인트를 사용합니다.</p>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-bs-dismiss="modal" onclick="usePoint()">확인</button>
											</div>
										</div>
									</div>
								</div>



							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="shoping__checkout">
						<h5>결제수단</h5>
						<ul>
							<li>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="o_payment_list" id="flexRadioDefault1" value="카카오페이"> <label
										class="form-check-label" for="flexRadioDefault1">
										<b style="font-weight:800;color:#351b1c; background:#f1d900;padding:0px 5px;">K</b>&nbsp;&nbsp;
										카카오페이 </label>
								</div>
							</li>
							<li>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="o_payment_list" id="flexRadioDefault2" value="카드" checked>
									<label class="form-check-label" for="flexRadioDefault2">
										&nbsp;<i class="fa fa-credit-card"></i>&nbsp;&nbsp; 신용카드 </label>
								</div>
							</li>
							<li>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="o_payment_list" id="flexRadioDefault3" value="네이버페이">
									<label class="form-check-label" for="flexRadioDefault3">
										<b style="color:white; background:#1ec800;padding:0px 5px;">N</b>&nbsp;&nbsp; 네이버페이(아직) </label>
								</div>
							</li>
							<li>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="o_payment_list" id="flexRadioDefault4" value="페이코">
									<label class="form-check-label" for="flexRadioDefault4">
										<b style="color:white; background:#f22728;padding:0px 5px;">P</b>&nbsp;&nbsp; 페이코 </label>
								</div>
							</li>
						</ul>


					</div>
				</div>

				<div class="col-lg-12">
					<div class="shoping__checkout">
						<h5>합계금액</h5>
						<ul>
							<li>주문 수량 <span id="totalItem"><fmt:formatNumber
										value="${totalNum}" pattern="###,###" /></span></li>
							<li>포인트 사용 <span id="totalPoint">0</span></li>
							<li>합계 금액 <span id="totalPrice"><fmt:formatNumber
										value="${totalPrice}" pattern="###,###" /></span></li>
						</ul>
						<a onclick="paymentO()" class="primary-btn btn__hover"
							style="height: 45px;">결제하기</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Shoping Cart Section End -->
	<div style="display: none;">
		<label id="u_id">${userSession.u_id}</label> 
		<label id="u_name">${userSession.u_name}</label> 
		<label id="u_tel">${userSession.u_tel}</label> 
		<label id="u_email">${userSession.u_email}</label>
		<label id="si_code">${cartStore.si_code}</label>
		<label id="u_point">${userSession.u_point}</label>
	</div>
	<!-- footer import -->
	<!-- <%@ include file="/WEB-INF/views/user/inc/footer.jsp" %> -->
	<!-- Js Plugins -->
	<script type="text/javascript"
		src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
	<script>
	let currentDate = new Date().toLocaleString().replace("20","").replace(". ","").replace(". ","");
	let orderNum = "";
	let u_name = document.getElementById("u_name").innerText;  
	let u_id = document.getElementById("u_id").innerText;  
	let o_list = "";
	let o_point = 0;
	let u_point = document.getElementById("u_point").innerText;
	$("#o_point").on("propertychange change keyup paste input",
			function() {
		o_point = $("#o_point").val();
		
		if(o_point.length==0){
			o_point = 0;
			$(".left_point_label").removeClass("active");
		}else{
			$(".left_point_label").addClass("active");
			document.getElementById("left_point").innerText = u_point - o_point;
		}
		document.getElementById("o_point_modal").innerText = o_point;
	});
	
	let no_point_total = parseInt(document.getElementById("totalPrice").innerText.replace(",","").replace(",",""));
	
function usePoint(){
	// 사용할 포인트
	const totalPoint = document.getElementById("totalPoint");
	totalPoint.innerText = (o_point).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	// 장바구니 합산 금액
	const totalElement = document.getElementById("totalPrice");
	totalElement.innerText = (no_point_total - o_point).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}
	var paymethod = "kcp"
	
  function paymentO(){
	  currentDate = new Date().toLocaleString().replace("20","").replace(". ","").replace(". ","");
	  currentDate = currentDate.split(".")[0];
	if(currentDate.indexOf("0")!=2){
		currentDate = currentDate.substring(0,2) + "0" +currentDate.substring(2,currentDate.length);
	}
	  //결제 시도했을 때 우선 db에 넣음
	  var o_payment_list = $("input[type=radio][name=o_payment_list]:checked").val();
	  if(o_payment_list=="카드"){
		  paymethod = "kcp";
	  } else if(o_payment_list=="카카오페이"){
		  paymethod = "kakaopay";
	  } else if(o_payment_list=="페이코"){
		  paymethod = "payco";
	  }
	  
	  o_request = $("#o_request").val();
	  let isZero = (parseInt(document.getElementById("totalList").innerText)-1).toString();
	  if(isZero=="0"){
		  o_list = document.getElementById("name0").innerText.split("splitting")[0]
	  }else{
		  o_list = document.getElementById("name0").innerText.split("splitting")[0] +" 외 " + isZero
	  }
	  let o_list_detaill = document.getElementById("list_detail").innerText.replace(",,,","");
	  var param = {
			  "o_code": currentDate,
			  "u_id": u_id,
			  "si_code": document.getElementById("si_code").innerText,
			  "o_request": o_request,
			  "o_total_price": document.getElementById("totalPrice").innerText.replace(",","").replace(",",""),
			  "o_list":o_list.replace("splitting",""),
			  "o_list_detail":o_list_detaill,
			  "o_point":o_point,
			  "o_payment_list":o_payment_list
			  };
	  $.ajax({
             type: "POST",
             url: "/insertOrder.user",
             data: JSON.stringify(param),
             dataType: "json",
             contentType: "application/json",
          success:function(data){
        	  console.log(data);
        	  data = data.padStart(4, '0');//.padEnd(35, '+')
        	  orderNum = currentDate + data;
        	  realPay();
          },
          error:function(data){
             console.log("장바구니 삭제 통신에러");
          }
       }); //ajax 끝
  }
  function realPay (){
	  IMP.init('<spring:eval expression="@config.getProperty('IAMPORT_API_KEY')"/>'); //"가맹점 식별코드"를 사용
	  IMP.request_pay({
	    pg: paymethod,
	    pay_method: "card",
	    merchant_uid : orderNum,
	    name : o_list,
	    amount : parseInt(document.getElementById("totalPrice").innerText.replace(",","").replace(",","")),
	    buyer_email : document.getElementById("u_email").innerText,
	    buyer_name : document.getElementById("u_name").innerText,
	    buyer_tel : document.getElementById("u_tel").innerText,
	    buyer_addr : '수집하지않음',
	    buyer_postcode : '0000',
	    m_redirect_url: '/index.user'
	  }, function (rsp) { // callback
	      if (rsp.success) {
	    	  Swal.fire({
 	    		  icon: "success",
 	    		  title: "주문 완료",
 	    		  showConfirmButton: false,
 	    		  timer: 2500
 				});
	    	  var totalB_Seq = document.getElementById("totalB_Seq").innerText;
	    	  //결제 완료시, o_payment_status = true로 변경
	    	  $.ajax({
	              type: "POST",
	              url: "/successOrder.user",
	              data: JSON.stringify({
	            	  "si_code" : document.getElementById("si_code").innerText,
	            	  "b_seqs" : totalB_Seq,
	            	  "o_code":orderNum,
	            	  "u_id":u_id, 
	            	  "o_point":(o_point).toString(),
	            	  "o_total_price":document.getElementById("totalPrice").innerText.replace(",","").replace(",","")
	            	  }),
	              dataType: "json",
	              contentType: "application/json",
	           success:function(data){
	        	   location.href="orderc.user?o="+orderNum;
	           },
	           error:function(data){
	           }
	        }); //ajax 끝
	    	  
	      } else {
	    	  Swal.fire({
	    		  icon: "error",
	    		  title: "결제 실패",
	    		  showConfirmButton: false,
	    		  timer: 2500
				});
	      }
	  });  
  }
  function maxLengthCheck(object){
	    if (object.value > parseInt(object.max)){
	        object.value = parseInt(object.max);
	    }    
	}
  </script>
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>