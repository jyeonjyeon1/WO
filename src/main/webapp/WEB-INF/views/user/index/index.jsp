<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>워킹오더~</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="resources/assets/images/logo/logo_only.svg" rel="icon" />

<link rel="stylesheet" href="resources/assets/css/font-awesome.min.css">
<!-- ========================= CSS here ========================= -->
<link rel="stylesheet" href="resources/assets/css/main.css" />
<link rel="stylesheet" href="resources/assets/owlcarousel/assets/owl.carousel.min.css" />
</head>

<body>

	<!-- Page Preloder -->

	<!-- /End Preloader -->

	<!-- 헤더 import -->
	<%@ include file="../inc/header.jsp" %>

	<!-- Start Hero Area -->
	<section class="hero-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-12 custom-padding-right">
					<div class="slider-head">
						<!-- Start Hero Slider -->
						<div class="hero-slider">
							<!-- Start Single Slider -->
							<c:forEach var="eventBoardList" items="${eventBoardList}" varStatus="vs">
							<div class="single-slider"
								style="background-image: url(${eventBoardList.b_image}); border-radius: 20px 20px 20px 20px;">
								<div class="content">
									<div class="button">
										<a href="${eventBoardList.b_click_url}" class="btn">이벤트 보러가기</a>
									</div>
								</div>
							</div>
							</c:forEach>
							<!-- End Single Slider -->
						</div>
						<!-- End Hero Slider -->
					</div>
				</div>
				<div class="col-lg-4 col-12">
					<div class="row">
					<c:forEach var="todayDrinkList" items="${todayDrinkList}" varStatus="vs">
						<div class="col-lg-12 col-md-6 col-12 md-custom-padding">
							<!-- Start Small Banner -->
							<div class="hero-small-banner"
								style="margin-top: 20px; background-image: url(${todayDrinkList.td_image}); border-radius: 20px 20px 20px 20px;">
							</div>
							<!-- End Small Banner -->
						</div>
						<div class="col-lg-12 col-md-6 col-12">
							<!-- Start Small Banner -->
							<div class="hero-small-banner style2">
								<div class="content">
									<h2>${todayDrinkList.td_name }</h2>
									<p>${todayDrinkList.td_content }</p>
									<div class="button">
										<a class="btn" href="${todayDrinkList.td_url }">${todayDrinkList.td_name } 파는 카페 보러가기</a>
									</div>
								</div>
							</div>
							<!-- Start Small Banner -->
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Hero Area -->


	<%! String str = "none"; %>
	<!-- Start Trending Product Area -->
	<c:forEach var="myStoreList" items="${myStoreList}" varStatus="vs">
		<% str = "block"; %>
	</c:forEach>
	
	<section class="trending-product pt-4" style="margin-top: 12px; display: <%= str%>">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title">
						<h4>자주 주문한 카페</h4>
					</div>
				</div>
			</div>
			<div class="owl-carousel owl-theme">
			<c:forEach var="myStoreList" items="${myStoreList}" varStatus="vs">
				<div class="ms-2 me-4">
					<div class="card">
						<div class="single-product">
							<div class="product-image">
								<img src=${fn:toLowerCase(myStoreList.si_image) } alt="#">
								<div class="button">
									<a href="/menuList.user?store=${myStoreList.si_code}" class="btn"><i
										class="lni lni-cart"></i> 주문하기</a>
								</div>
							</div>
							<div class="product-info">
								<span class="category">${myStoreList.si_addr }</span>
								<h4 class="title">
									<a href="/menuList.user?store=${myStoreList.si_code }">${myStoreList.si_name } ${myStoreList.si_loc }</a>
								</h4>
								<ul class="review">
									<c:forEach var="full_star" begin = "0" end = "${myStoreList.si_star}" step="10">
										<c:if test="${ full_star gt 5 }">
											<li><i class="lni lni-star-filled"></i></li>
										</c:if>
									</c:forEach>
									<c:forEach var="half_star" begin = "10" end = "${myStoreList.si_star}" step="10">
										<c:if test="${ (myStoreList.si_star-half_star) lt 10 }">
											<c:if test="${ (myStoreList.si_star-half_star) gt 5 }">
												<li><i class="fa fa-star-half">&nbsp&nbsp</i></li>
											</c:if>
										</c:if>
									</c:forEach>
									
									<c:forEach var="no_star" begin = "${myStoreList.si_star}" end = "45" step="10">
										<c:if test="${no_star lt 45 }">
											<li><i class="lni lni-star"></i></li>
										</c:if>
									</c:forEach>
									<li><span>${myStoreList.si_stars } 점 / 리뷰</span></li>
								</ul>
								<ul class="location">
									<li><span class="icon-clock"></span></li>
									<li><a>
									<c:choose>
									<c:when test="${myStoreList.si_due_time eq 0}">즉시 수령 가능</c:when>
									<c:otherwise>${myStoreList.si_due_time } 분</c:otherwise>
									</c:choose>
									<li><span class="icon-location-pin"></span></li>
									<li><a>1.2km</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
		
	</section>
	
	<!-- End Trending Product Area -->

	<!-- Start Trending Product Area -->
	<section class="trending-product-2 pt-4" style="margin-top: 12px;">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title">
						<h4>추천 카페</h4>
					</div>
				</div>
			</div>
			<div class="owl-carousel owl-theme">
			<c:forEach var="recStoreList" items="${recStoreList}" varStatus="vs">
				<div class="ms-2 me-4">
					<div class="card">
						<!-- Start Single Product -->
						<div class="single-product">
							<div class="product-image">
								<img src=${fn:toLowerCase(recStoreList.si_image) } alt="#">
								<div class="button">
									<a href="/menuList.user?store=${recStoreList.si_code}" class="btn"><i
										class="lni lni-cart"></i> 주문하기</a>
								</div>
							</div>
							<div class="product-info">
								<span class="category">${recStoreList.si_addr }</span>
								<h4 class="title">
									<a href="/menuList.user?store=${recStoreList.si_code}">${recStoreList.si_name } ${recStoreList.si_loc }</a>
								</h4>
								<ul class="review">
									<c:forEach var="full_star" begin = "0" end = "${recStoreList.si_star}" step="10">
										<c:if test="${ full_star gt 5 }">
											<li><i class="lni lni-star-filled"></i></li>
										</c:if>
									</c:forEach>
									<c:forEach var="half_star" begin = "10" end = "${recStoreList.si_star}" step="10">
										<c:if test="${ (recStoreList.si_star-half_star) eq 5 }">
											<li><i class="fa fa-star-half">&nbsp&nbsp</i></li>
										</c:if>
									</c:forEach>
									
									<c:forEach var="no_star" begin = "${recStoreList.si_star}" end = "40" step="10">
										<c:if test="${no_star lt 45 }">
											<li><i class="lni lni-star"></i></li>
										</c:if>
									</c:forEach>
									<li><span>${recStoreList.si_stars } 점 / 리뷰</span></li>
								</ul>
								<ul class="location">
									<li><span class="icon-clock"></span></li>
									<li><a>
									<c:choose>
									<c:when test="${recStoreList.si_due_time eq 0}">즉시 수령 가능</c:when>
									<c:otherwise>${recStoreList.si_due_time } 분</c:otherwise>
									</c:choose>
									</a></li>
									<li><span class="icon-location-pin"></span></li>
									<li><a>2.9km</a></li>
								</ul>
							</div>
						</div>
						<!-- End Single Product -->
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</section>
	<!-- End Trending Product Area -->

	<!-- Start Trending Product Area -->
	<section class="trending-product pt-4" style="margin-top: 12px;">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title">
						<h4>신규 카페</h4>
					</div>
				</div>
			</div>

			<div class="owl-carousel owl-theme">
			<c:forEach var="newStoreList" items="${newStoreList}" varStatus="vs">
				<div class="ms-2 me-4">
					<div class="card">
						<!-- Start Single Product -->
						<div class="single-product">
							<div class="product-image">
								<img src=${fn:toLowerCase(newStoreList.si_image) } alt="#">
								<span class="new-tag">New</span>
								<div class="button">
									<a href="/menuList.user?store=${newStoreList.si_code}" class="btn"><i
										class="lni lni-cart"></i> 주문하기</a>
								</div>
							</div>
							<div class="product-info">
								<span class="category">${newStoreList.si_addr }</span>
								<h4 class="title">
									<a href="/menuList.user?store=${newStoreList.si_code}">${newStoreList.si_name } ${newStoreList.si_loc }</a>
								</h4>
								<ul class="review">
									<c:forEach var="full_star" begin = "0" end = "${newStoreList.si_star}" step="10">
										<c:if test="${ full_star gt 5 }">
											<li><i class="lni lni-star-filled"></i></li>
										</c:if>
									</c:forEach>
									<c:forEach var="half_star" begin = "10" end = "${newStoreList.si_star}" step="10">
										<c:if test="${ (newStoreList.si_star-half_star) eq 5 }">
											<li><i class="fa fa-star-half">&nbsp&nbsp</i></li>
										</c:if>
									</c:forEach>
									
									<c:forEach var="no_star" begin = "${newStoreList.si_star}" end = "40" step="10">
										<c:if test="${no_star lt 45 }">
											<li><i class="lni lni-star"></i></li>
										</c:if>
									</c:forEach>
									<li><span>${newStoreList.si_stars } 점 / 리뷰</span></li>
								</ul>
								<ul class="location">
									<li><span class="icon-clock"></span></li>
									<li><a>
									<c:choose>
									<c:when test="${newStoreList.si_due_time eq 0}">즉시 수령 가능</c:when>
									<c:otherwise>${newStoreList.si_due_time } 분</c:otherwise>
									</c:choose>
									</a></li>
									<li><span class="icon-location-pin"></span></li>
									<li><a>0.9km</a></li>
								</ul>
							</div>
						</div>
						<!-- End Single Product -->
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</section>
	<!-- End Trending Product Area -->
















	






































	<!-- footer import -->
	<%@ include file="../inc/footer.jsp" %>

	<!-- ========================= scroll-top ========================= -->
	<a href="#" class="scroll-top"> <i class="lni lni-chevron-up"></i>
	</a>

	<!-- ========================= JS here ========================= -->
	<script src="resources/assets/js/tiny-slider.js"></script>
	<script src="resources/assets/js/jquery-3.6.0.js"></script>
	<script src="resources/assets/js/main.js"></script>
	<script src="resources/assets/owlcarousel/owl.carousel.min.js"></script>
	<script type="text/javascript">
        jQuery(document).ready(function () {
            $('#headers').load("header.user");
            $('#footers').load("footer.user");

            $(".owl-carousel").owlCarousel({
                items: 4,
                autoplay: true,
                autoplayHoverPause: true,
                autoplayTimeout: 3000,
                smartSpeed: 1200,
                autoHeight: false,
                loop: true,
                nav: true,
                animateOut: 'fadeOut',
                animateIn: 'fadeIn',
                // navText: ["<div class='nav-btn prev-slide'></div>", "<div class='nav-btn next-slide'></div>"],
                navText: ['<button type="button" class="nav__btn_customized"><i class="fa fa-angle-left" aria-hidden="true">&nbsp;</i></button>',
                    '<button type="button" class="nav__btn_customized">&nbsp;<i class="fa fa-angle-right" aria-hidden="true"></i></button>'],
                responsive: {
                    0: {
                        items: 1
                    },
                    769: {
                        items: 1
                    },

                    770: {
                        items: 2
                    },

                    960: {
                        items: 3
                    },

                    1220: {
                        items: 4
                    }

                }

            });
        });
        //========= Hero Slider 
        tns({
            container: '.hero-slider',
            slideBy: 'page',
            autoplay: true,
            autoplayButtonOutput: false,
            mouseDrag: true,
            gutter: 0,
            items: 1,
            nav: false,
            controls: true,
            controlsText: ['<i class="lni lni-chevron-left"></i>', '<i class="lni lni-chevron-right"></i>'],
        });

        //======== Brand Slider
        tns({
            container: '.brands-logo-carousel',
            autoplay: true,
            autoplayButtonOutput: false,
            mouseDrag: true,
            gutter: 15,
            nav: false,
            controls: false,
            responsive: {
                0: {
                    items: 1,
                },
                540: {
                    items: 3,
                },
                768: {
                    items: 5,
                },
                992: {
                    items: 6,
                }
            }
        });
        
        
    </script>
</body>

</html>