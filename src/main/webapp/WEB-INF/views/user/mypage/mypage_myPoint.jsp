<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html class="no-js" lang="kor">


<head>
<meta charset="UTF-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>워킹오더 포인트 조회</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="resources/assets/images/logo/logo_only.svg" rel="icon" />

<!-- ========================= CSS here ========================= -->
<!-- Css Styles 추가 -->

<!-- ========================= JS here ========================= -->
<script src="resources/assets/js/jquery-3.6.0.js"></script>
<script src="resources/assets/js/main.js"></script>

</head>

<body>
	<!-- header import -->
	<%@ include file="/WEB-INF/views/user/inc/header.jsp"%>

	<!--mypage_main_jihyeon body 시작-->
	<section class="product spad">
		<div class="container">
			<div class="row">
				<%@ include file="/WEB-INF/views/user/inc/mypageaside.jsp" %>

				<div class="col-lg-9 col-md-7">
					<div class="mypage_mypoint_top" role="alert">
						<div class="row">
							<div class="col-lg-6 col-md-7">
								<h5>My 포인트</h5>
							</div>
							<div class="col-lg-6 col-md-7">
								<h2>

									<span class="point_icon">P</span>
									<fmt:formatNumber value="${userSession.u_point }"
										pattern="###,###" />
								</h2>
							</div>

						</div>
					</div>
					<div class="mypage_mypoint_middle1">

						<div class="row">
							<div class="col-lg-2 col-md-7">

								<h5>날짜선택 :</h5>

							</div>
							<div class="col-lg-2 col-md-7">
								<select class="dateSelect" id="specificSizeSelect">
									<!--오늘날짜로 selected 하기-->
									<option selected>2021년</option>
									<option value="2019">2010년</option>
									<option value="2020">2020년</option>
									<option value="2021">2021년</option>
								</select>
							</div>
							<div class="col-lg-2 col-md-7">
								<select class="dateSelect" id="specificSizeSelect">
									<option selected>4월</option>
									<option value="1">1월</option>
									<option value="2">2월</option>
									<option value="3">3월</option>
									<option value="4">4월</option>
									<option value="5">5월</option>
									<option value="6">6월</option>
									<option value="7">7월</option>
									<option value="8">8월</option>
									<option value="9">9월</option>
									<option value="10">10월</option>
									<option value="11">11월</option>
									<option value="12">12월</option>
								</select>
							</div>
							<div class="col-lg-2 col-md-7">
								<select class="dateSelect" id="specificSizeSelect">
									<option selected>7일</option>
									<option value="1">1일</option>
									<option value="2">2일</option>
									<option value="3">3일</option>
								</select>
							</div>

						</div>






					</div>
					<div class="mypage_mypoint_middle2">

						<table class="table">
							<thead>
								<tr>
									<th scope="col"></th>
									<th scope="col"></th>
									<th scope="col"></th>
									<th scope="col"></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="userPointList" items="${userPointList}"
									varStatus="vs">
									<tr>

										<td colspan="3">
										<c:choose><c:when test="${empty userPointList.si_name}"></c:when>
										<c:otherwise><a href="/menuList.user?store=${userPointList.si_code }"><h6>${userPointList.si_name}(${userPointList.si_loc})</h6></a></c:otherwise></c:choose>
										
										<h4>${userPointList.pt_description}</h4>
											<p>${(userPointList.pt_regdate).substring(0,19)} (2022.03.23 만료)</p></td>
										<td>
											
											<c:choose>
													<c:when test="${userPointList.pt_amount gt 0}">
														<h3>+${userPointList.pt_amount}</h3>
														<p class="plus">적립</p>
													</c:when>
													<c:otherwise>
														<h2>${userPointList.pt_amount}</h2>
														<p class="minus">사용</p>
													</c:otherwise>
												</c:choose>
											
										</td>
									</tr>

								</c:forEach>

							</tbody>
						</table>


					</div>
				</div>
			</div>
		</div>
	</section>


	<!--mypage_main body 끝-->
	<!-- footer import -->
	<%@ include file="/WEB-INF/views/user/inc/footer.jsp"%>

</body>
</html>
