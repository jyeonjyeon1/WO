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
<!-- Css Styles 추가 -->

<!-- ========================= JS here ========================= -->
<script src="resources/assets/js/jquery-3.6.0.js"></script>

</head>

<body>
	<!-- header import -->
	<%@ include file="/WEB-INF/views/user/inc/header.jsp"%>

	<!--mypage_main_jihyeon body 시작-->
	<section class="product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-5">
					<div class="mypage_sidebar">
						<h4>My Page</h4>
						<ul>

							<li><a class="mypage_side_hover" href="myCoupon.user"><i
									class="lni lni-ticket"> My쿠폰</i></a></li>
							<li><a class="mypage_side_hover" href="myPoint.user"><i
									class="lni lni-database"> My포인트</i></a></li>
							<li><a class="mypage_side_hover" href="myReviewList.user"><i
									class="lni lni-pencil-alt"> My리뷰</i></a></li>
							<div class="sidebar_line">
								<li><a class="mypage_side_hover" href="myOrderList.user"><i
										class="lni lni-radio-button"> 주문내역</i></a></li>
							</div>
							<li class="active"><a class="mypage_side_hover"
								href="myWishList.user"><i class="lni lni-heart"> 위시리스트</i></a></li>
							<li><a class="mypage_side_hover" href="cart.user"><i
									class="lni lni-cart"> 장바구니</i></a></li>

							<div class="sidebar_line">
								<li><a class="mypage_side_hover" href="#"><i
										class="lni lni-user"> 회원정보변경/탈퇴</i></a></li>
							</div>
							<li><a class="mypage_side_hover" href="faq.user"><i
									class="lni lni-headphone-alt"> 고객센터 문의하기</i></a></li>
							<li><a class="mypage_side_hover" href="currentOrder.user"><i
									class="lni lni-ticket-alt"> 현재주문 확인하기</i></a></li>

						</ul>
					</div>
				</div>

				<div class="col-lg-9 col-md-7">
					<div class="row">
						<h3>
							My Wish List <i class="lni lni-heart-filled"></i>
						</h3>
					</div>
					<div class="row">
						<c:forEach var="myWishList" items="${myWishList}" varStatus="vs">

							<a class="col-11 search_result_list_col" href="jw3.html">
								<div class="row">
									<div class="col-2 search_list_img_bg">
										<img src="resources/assets/images/jaewoo/starbucks_img.jpg"
											alt="cafe" class="search_big_img">
									</div>

									<div class="col-2" style="float: left; padding: 2.5vh 0;">
										<strong class="text-primary">${myWishList.si_loc}</strong>
										<h3>${myWishList.si_name}</h3>
									</div>
									<div class="col-5" style="padding-top: 2.5vh;">
										<div class="row">
											<lable class="col-4 search_list_option">전화번호 </lable>
											<lable class="col-7 search_list_option_re ">${myWishList.si_tel}
											</lable>
										</div>
										<div class="row">
											<lable class="col-4 search_list_option">주소 </lable>
											<lable class="col-7 search_list_option_re ">${myWishList.si_addr_road}</lable>
										</div>
										<div class="row">
											<lable class="col-4 search_list_option">영업시간 </lable>
											<lable class="col-7 search_list_option_re ">${myWishList.si_open}~${myWishList.si_close}
											</lable>
										</div>

									</div>
								</div>
							</a>
						</c:forEach>

					</div>
					<!-- 게시판 하단의 페이징 버튼 -->
					<div class="box-footer clearfix">
						<ul class="pagination pagination-sm no-margin pull-right">

							<li th:if="${pageMaker.prev} == true"><a
								th:href="@{/myWishList.user(page=${pageMaker.startPage}-1,perPageNum=${pageMaker.cri.perPageNum})}">&laquo;</a>
							</li>

							<li
								th:each="idx,iterStat : ${#numbers.sequence(pageMaker.startPage,pageMaker.endPage)}"
								th:classappend="${pageMaker.cri.page} == ${idx} ? active : null">
								<a
								th:href="@{/myWishList.user(page=${idx},perPageNum=${pageMaker.cri.perPageNum})}"
								th:text="${idx}"></a>
							</li>

							<li
								th:if="${pageMaker.next} == true and ${pageMaker.endPage > 0}">
								<a
								th:href="@{/myWishList.user(page=${pageMaker.endPage}+1,perPageNum=${pageMaker.cri.perPageNum})}">&raquo;</a>
							</li>

						</ul>

					</div>
				</div>
				<!-- /.box -->

			</div>
		</div>
		</div>
	</section>


	<!--mypage_main body 끝-->
	<!-- footer import -->
	<%@ include file="/WEB-INF/views/user/inc/footer.jsp"%>

</body>
</html>
