<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="kor">

<head>
<meta charset="UTF-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>${storeInfo.si_name }</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="resources/assets/images/logo/logo_only.svg" rel="icon" />

<!-- ========================= CSS here ========================= -->
<link rel="stylesheet" href="resources/assets/css/font-awesome.min.css"
	type="text/css">
<!-- ========================= JS here ========================= -->

<style>

/*모달*/
.modal-title {
	font-size: 20px;
	text-align: center;
	font-weight: bolder;
}

.modal_table {
	width: 100%;
}

.gotoorder {
	border: 0;
	text-align: center;
	width: relative;
	background-color: white;
	font-size: 20px;
}

.gotoorder:hover {
	font-weight: bolder;
	cursor: pointer;
	color: rgb(218, 60, 12);
}
</style>

<script src="resources/assets/js/jquery-3.6.0.js"></script>
</head>
<body>
	<!-- header import -->
	<%@ include file="/WEB-INF/views/user/inc/header.jsp"%>

	<!-- 매장소개 -->
	<section style="margin: 40px;">
		<div class="container">
<c:set var="userInSession" value="no" />
<c:if test="${!empty userSession}">
<input type="hidden" id="u_id" value="${userSession.u_id }">
<c:set var="userInSession" value="yes" />
</c:if>
<input type="hidden" id="userInSession" value="${userInSession}">
<input type="hidden" id="si_code" value="${storeInfo.si_code }">

			<div class="row">
				<div class="col-lg-5 col-md-5 col-sm-12 col-12">
					<div class="kio_img_bg">
						<img src="${storeInfo.si_image }"
							alt="cafe" class="kio_img">
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-12" style="margin-left: 20px">
					<div class="product__details__text">
						<h3>${storeInfo.si_name }&nbsp;${storeInfo.si_loc }</h3>
						<div class="product__details__rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star-half-o"></i> <span>(18 reviews)</span>
						</div>
						<p style="margin-bottom: 20px">${storeInfo.si_referinfo }</p>
						<button type="button" class="btn btn-warning btn-sm">
							<a href="#myReview" style="color: black;">리뷰 바로가기</a>
						</button>
						&nbsp&nbsp&nbsp&nbsp&nbsp
						<!-- 간격띄우기 -->
						<button type="button" class="btn btn-warning btn-sm">찾아오시는
							길</button>
						<ul style="margin: 30px 0 0; padding: 30px 0 0">
							<li><b>전화번호</b> <span>${storeInfo.si_tel }</span></li>
							<li><b>주소</b> <span>${storeInfo.si_address }
									${storeInfo.si_addr_detail } </span></li>
							<c:choose>
								<c:when test="${storeInfo.si_Allday eq true }">
									<li><b>영업시간</b> <span>${storeInfo.si_openA } ~
											${storeInfo.si_closeA }</span></li>
								</c:when>
								<c:otherwise>
									<li><b>영업시간</b> <span>주중 : ${storeInfo.si_openW } ~
											${storeInfo.si_closeW }</span></li>
									<li><b></b> <span>토욜 : ${storeInfo.si_openSat } ~
											${storeInfo.si_closeSat }</span></li>
									<li><b></b> <span>일욜 : ${storeInfo.si_openSun } ~
											${storeInfo.si_closeSun }</span></li>
								</c:otherwise>
							</c:choose>


							<li><b>정기휴무</b> <span>${storeInfo.si_holiday_fix }</span></li>
							<li><b>임시휴무</b> <span>${storeInfo.si_holiday_imsi }</span></li>
						</ul>
					</div>
				</div>
			</div>

		</div>
	</section>

	<!-- 키오스크 -->
	<div class="container"
		style="padding-bottom: 30px; background-color: white;">
		<div class="col-lg-12">
			<c:forEach var="menuTitle" items="${menuTitle }" varStatus="titleVs">
				<c:if test="${titleVs.index eq 0 }">
					<input class="tabinput" id="tab${titleVs.index +1 }" type="radio"
						name="tabs" checked="checked">
				</c:if>
				<c:if test="${titleVs.index ne 0 }">
					<input class="tabinput" id="tab${titleVs.count }" type="radio"
						name="tabs">
				</c:if>
				<label class="tablabel_k" for="tab${titleVs.count }">${menuTitle.mg_name }</label>
			</c:forEach>


			<c:forEach var="menuTitle" items="${menuTitle }" varStatus="tVs">
				<div class="tapsection" id="content${tVs.count }"
					style="border-top: 1px solid #ddd;">
					<div class="product__details__tab__desc">
						<div class="row">
							<c:set var="mgcode" value="${menuTitle.mg_code }" />
							<c:forEach var="menuList" items="${menuList }" varStatus="mVs">
								<c:if test="${menuList.mg_code eq mgcode }">
									<div class="col-lg-3 col-md-4 col-sm-4">
										<div class="product__item">
											<div class="product__item__pic set-bg">
												<img src="${menuList.m_img_file }"
													style="width: 100%; height: 100%;">
												<ul class="product__item__pic__hover">
													<div class="button">
													<c:choose>
														<c:when test="${menuList.m_oos eq true}">
														<a class="btn">
															<i class="lni lni-close"></i> 품절
														</a>
														</c:when>
														<c:otherwise>
														<a class="btn" id="chooseMenu" data-bs-toggle="modal"
															data-bs-target="#menu_select${tVs.count }${mVs.count }">
															<i class="lni lni-cart"></i> 주문하기
														</a>
														</c:otherwise>
													</c:choose>
													</div>
												</ul>
											</div>
											<div class="product__item__text">
												<h6>${menuList.m_name }</h6>
												<h5>${menuList.opb_price }원</h5>
											</div>
										</div>
									</div>
								</c:if>
							</c:forEach>

							<c:forEach var="menuList" items="${menuList }" varStatus="mVs">
								<c:if test="${menuList.mg_code eq mgcode }">
									<!------------- 모달 -------------->
									<div class="modal fade"
										id="menu_select${tVs.count }${mVs.count }" role="dialog">
										<div class="modal-dialog">
											<div class="modal-content"
												style="height: auto; padding-bottom: 30px;">
												<div class="modal-header">
													<!-- header -->
													<h4 class="modal-title" style="text-align: center">옵션을
														선택해 주세요</h4>
													<button type="button" class="btn btn-secondary"
														data-bs-dismiss="modal">취소</button>
												</div>
												<div class="modal-body">
													<!-- body -->

													<form method="post" action="/addMenu.user" name="addMenuForm_${tVs.count }${mVs.count }">
														<input type="hidden" name="si_code" value="${storeInfo.si_code }">
														<input type="hidden" name="m_seq"
															value="${menuList.m_seq }">
														<input type="hidden" name="u_id" value="${userSession.u_id}">
														<c:set var="mcode" value="${menuList.m_code }" />
														<c:set var="opcode" value="" />
														<c:set var="opbcode" value="" />
														<c:set var="opcode" value="" />
														<c:set var="ogcode" value="" />
														<h3
															style="color: black; font-weight: bolder; text-align: center;">
															${menuList.m_name }</h3>
														<div class="row"
															style="border-top: 1px solid black; margin: 15px 7px 0 7px;">
															<label
																style="font-weight: bolder; font-size: 20px; margin: 5px 0 5px 0;">기본옵션(필수)</label>
														</div>
														<c:forEach var="basicOptionList"
															items="${basicOptionList }" varStatus="oVs">
															<c:if test="${basicOptionList.m_code eq mcode }">
																<div class="form-check">
																	<input class="form-check-input" type="radio"
																		name="opb_code"
																		id="opb_code${mVs.index }${oVs.index }"
																		value="${basicOptionList.opb_code }" checked> <label
																		for="opb_code${mVs.index }${oVs.index }"
																		class="form-check-label" style="font-size: 15px;">
																		${basicOptionList.opb_name} &nbsp&nbsp&nbsp <span
																		style="color: blue">+
																			${basicOptionList.opb_price }원</span>
																	</label>

																</div>
																<%-- <button type="button">
																		${basicOptionList.opb_name }</br> ${basicOptionList.opb_price }원
																	</button> --%>
															</c:if>
														</c:forEach>
														<c:set var="count" value="0" />

														<c:forEach var="optionList" items="${optionList }"
															varStatus="oVs">

															<c:if test="${menuList.mg_code eq mgcode }">

																<c:if test="${optionList.m_code eq mcode }">
																	<c:if test="${opcode ne optionList.op_code }">

																		<c:if test="${ogcode ne optionList.og_code }">
																			<div class="row"
																				style="border-top: 1px solid black; margin: 15px 7px 0 7px;">
																				<label
																					style="font-weight: bolder; font-size: 20px; margin: 5px 0 5px 0;">${optionList.og_name }</label>
																			</div>
																			<c:set var="ogcode" value="${optionList.og_code }" />
																			<c:set var="count" value="${count + 1 }" />
																		</c:if>
																		<div class="form-check" style="margin: 5px;">

																			<input class="form-check-input" type="checkbox"
																				name="op_code${count }"
																				id="op_code${mVs.index }${oVs.index }"
																				value="${optionList.op_code }"> <label
																				for="op_code${mVs.index }${oVs.index }"
																				class="form-check-label" style="font-size: 15px;">
																				${optionList.op_name } &nbsp&nbsp&nbsp <span
																				style="color: blue">+ ${optionList.op_price }원</span>
																			</label>
																		</div>
																		<c:set var="opcode" value="${optionList.op_code }" />

																	</c:if>
																</c:if>

															</c:if>

														</c:forEach>

														<div class="row" style="height: 20px;">
															<button id="addMenuId_${tVs.count }_${mVs.count }" class="gotoorder"
															 type="button" onclick="addMenu__${tVs.count}_${mVs.count}()"
																style="padding: 10px;">주문하기</button>
														</div>
<script>
function addMenu__${tVs.count}_${mVs.count}(){
	var userInSession = $("#userInSession").val();
	if(userInSession == "no"){
		Swal.fire({
		  title: "로그인이 필요합니다",
		  content: "로그인페이지로 이동하시겠습니까?",
		  icon: "warning",
		  showCancelButton: true,
		  confirmButtonColor: "#3085d6",
		  cancelButtonColor: "#d33",
		  confirmButtonText: "로그인",
		  cancelButtonText: "아니오"
		}).then((result) => {
		  if (result.isConfirmed) {
			  location.href="/login.user";
		  }//if (result.isConfirmed)
		})//then((result)
	}else{
		let si_code = $("#si_code").val();
		let u_id = $("#u_id").val();
		let param = {"si_code" : si_code, "u_id":u_id};
		$.ajax({
            type: "POST",
            url: "/siBasket.user",
            data: JSON.stringify(param),
            dataType: "json",
            contentType: "application/json",
         success:function(data){
       	  console.log(data);
       	  if(data==1){
       		Swal.fire({
       		  icon: "success",
       		  title: "장바구니에 담았습니다.",
       		  confirmButtonText:"확인"
         	})
       		document.addMenuForm_${tVs.count }${mVs.count }.submit();
       	  }else{
       		Swal.fire({
       		  icon: "warning",
       		  title: "장바구니에 담을 수 없어용",
       		  text: "동일한 매장에서의 음료만 담을 수 있어요",
       		  confirmButtonText:"확인"
       		})
       	  }
         },
         error:function(data){
            console.log(" 통신에러");
         }
      }); //ajax 끝
// 		location.href=location.href;
	}
	
}
</script>
													</form>
												</div>
											</div>
										</div>
									</div>
								</c:if>
							</c:forEach>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<section>

		<div class="container" style="padding: 40px; background-color: white;">
			<a name="myReview">
				<div class="product__details__text"">
					<h3>우리매장 Reviews</h3>
					<div class="product__details__rating">
						<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star-half-o"></i> <span>(3 reviews)</span>
					</div>


					<!-- 리뷰한개 -->
					<div style="text-align: center;">
						<div class="col-lg-11 kio_review">
							<div class="kio_review_img_bg">
								<img src="resources/assets/images/jaewoo/starbucks_img.jpg"
									alt="cafe" class="search_big_img">

							</div>
							<div class="kio_review_center">
								<h5>김재우</h5>
								<h6>아이스아메리카노</h6>
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-half-o"></i>
								<div>2020.04.08</div>
							</div>
							<div class="kio_review_content">
								<h6>아아존맛탱!!!</h6>
								<p style="margin-bottom: 20px; margin-top: 5px;">Mauris
									blandit aliquet elit, eget tincidunt nibh pulvinar a.
									Vestibulum ac diam sit amet quam vehicula elementum sed sit
									amet dui. Sed porttitor lectus nibh.</p>
							</div>
						</div>
					</div>
					<!-- 리뷰한개 -->
					<div style="text-align: center;">
						<div class="col-lg-11"
							style="float: none; display: inline-block; text-align: center; background-color: white; padding: 0px; border-radius: 10px; padding: auto; margin: auto; margin-bottom: 10px; margin-top: 10px; display: inline-block; border: 1px solid gray; box-shadow: 0 2px 2px gray;">

							<div style="width: 30%; height: 150px; float: left;">
								<img src="resources/assets/images/jaewoo/starbucks_img.jpg"
									alt="cafe"
									style="width: 130px; height: 130px; margin: 10px 0 0 10px; border-radius: 10px;">
								<img src="resources/assets/images/jaewoo/latte.jpg" alt="cafe"
									style="width: 130px; height: 130px; margin: 10px 0 0 10px; border-radius: 10px;">

							</div>
							<div
								style="width: 15%; height: 100px; float: left; margin-left: 20px; margin-top: 20px; text-align: left">
								<h5>김재우</h5>
								<h6>아이스아메리카노</h6>
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-half-o"></i>
								<div>2020.04.08</div>
							</div>
							<div
								style="width: 40%; height: 100px; float: left; text-align: left; margin-top: 18px;">
								<h6>아아존맛탱!!!</h6>
								<p style="margin-bottom: 20px; margin-top: 5px;">Mauris
									blandit aliquet elit, eget tincidunt nibh pulvinar a.
									Vestibulum ac diam sit amet quam vehicula elementum sed sit
									amet dui. Sed porttitor lectus nibh.</p>
							</div>
						</div>
						<!-- 리뷰한개 -->
						<div style="text-align: center;">
							<div class="col-lg-11"
								style="float: none; display: inline-block; text-align: center; background-color: white; padding: 0px; border-radius: 10px; padding: auto; margin: auto; margin-bottom: 10px; margin-top: 10px; display: inline-block; border: 1px solid gray; box-shadow: 0 2px 2px gray;">

								<div style="width: 30%; height: 150px; float: left;">
									<img src="resources/assets/images/jaewoo/starbucks_img.jpg"
										alt="cafe"
										style="width: 130px; height: 130px; margin: 10px 0 0 10px; border-radius: 10px;">
									<img src="resources/assets/images/jaewoo/latte.jpg" alt="cafe"
										style="width: 130px; height: 130px; margin: 10px 0 0 10px; border-radius: 10px;">

								</div>
								<div
									style="width: 15%; height: 100px; float: left; margin-left: 20px; margin-top: 20px; text-align: left">
									<h5>김재우</h5>
									<h6>아이스아메리카노</h6>
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star-half-o"></i>
									<div>2020.04.08</div>
								</div>
								<div
									style="width: 40%; height: 100px; float: left; text-align: left; margin-top: 18px;">
									<h6>아아존맛탱!!!</h6>
									<p style="margin-bottom: 20px; margin-top: 5px;">Mauris
										blandit aliquet elit, eget tincidunt nibh pulvinar a.
										Vestibulum ac diam sit amet quam vehicula elementum sed sit
										amet dui. Sed porttitor lectus nibh.</p>
								</div>
							</div>
						</div>
						<div style="text-align: center; margin-bottom: 50px;">

							<div style="display: inline-block">
								<div class="product__pagination" style="margin: auto;">
									<a href="#">1</a> <a href="#">2</a> <a href="#">3</a> <a
										href="#"> <i class="fa fa-long-arrow-right"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
	</section>
	<!-- 리뷰끝 -->
	<!-- 찾아오는길 -->

	<section>
		<div class="container"
			style="padding: 00px 0px 100px 20px; background-color: white;">
			<div class="row col-lg-12">
				<div class="product__details__text ">
					<h3>우리매장 찾아오는길</h3>

					<!-- * 카카오맵 - 지도퍼가기 -->
					<!-- 1. 지도 노드 -->
					<div style="text-align: center; margin-bottom: 30px;">
						<div id="daumRoughmapContainer1649530534824"
							class="root_daum_roughmap root_daum_roughmap_landing"
							style="margin: 0; width: 100%;"></div>

						<!-- 2. 설치 스크립트 * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다. -->
						<script charset="UTF-8" class="daum_roughmap_loader_script"
							src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

						<!-- 3. 실행 스크립트 -->
						<script charset="UTF-8">
							new daum.roughmap.Lander({
								"timestamp" : "1649530534824",
								"key" : "29s83",
								"mapWidth" : "100%",
								"mapHeight" : "360"
							}).render();
						</script>
					</div>
				</div>
			</div>
			<p style="margin-bottom: 20px; margin-top: 5px;">Mauris blandit
				aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit
				amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus
				nibh.</p>
		</div>
	</section>
	<!-- 찾아오는길끝 -->
	<!-- footer import -->
	<%@ include file="/WEB-INF/views/user/inc/footer.jsp"%>
	<!-- Js Plugins -->
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>