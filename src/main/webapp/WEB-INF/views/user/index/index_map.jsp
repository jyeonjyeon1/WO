<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>워킹오더 주소로~</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="resources/assets/images/logo/logo_only.svg" rel="icon" />


<!-- ========================= CSS here ========================= -->
<link rel="stylesheet" href="resources/assets/css/main.css" />
<link rel="stylesheet"
	href="resources/assets/owlcarousel/assets/owl.carousel.min.css" />


<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js">
    </script>
<script>
var nansu = 0;
        function findAddr() {
            new daum.Postcode({
                oncomplete: function (data) {
                    //사용자 주소를 받아올 변수 정의
                    var addr = '';
                    //사용자가 선택한 주소 타입에 따라 해당 주소값을 가져온다.
                    if (data.userSelectedType === 'R') {
                        //사용자가 도로명 주소를 선택했을 경우(R)
                        addr = data.roadAddress;
                    } else {
                        //사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }

                    //부모창의 주소칸에 받아온 주소를 넣는다
                    $("#c_main_address").val(addr);
                    var param = {"addr":addr};
                    $.ajax({
            	        url : "addMap.user?addr="+addr+"&nansu="+nansu,
            	        dataType: "html",	// 이 부분이 반환 타입을 핸들링하는 곳이다.
            	        type: "get",
            	        success: function(data) {
            	        	 if(nansu==0){
               	        	  try{
                   	        	  $("#deleteOriginal").remove();
                   	          }catch(error){}
               	          }
            	        	 else if(nansu != 0){
								try{
									var newnan = parseInt(nansu) -1;
		             	        	  $("#searchDiv"+newnan.toString()).remove();
		              	          }catch(error){
		              	        	  console.log(error);
		              	          }
							}
            	        	nansu++;
            	          $("#forprepend").append(data); // forprepend
            	          
            	        },
            	        error: function (){alert("실패");}
            	    });
                }
            }).open();
        }

    </script>

<!-- /* 주소로검색 js부분 */ -->
<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
<script>

        $(document).ready(function () {
            // menu 클래스 바로 하위에 있는 btn_address 클래스를 클릭했을때
            $(".menu_for_map>.btn_address").click(function () {
                var submenu = $(this).next("ul");
                submenu.slideDown();

            });
        });

        $(document).ready(function () {
            // menu 클래스 바로 하위에 있는 btn_map 클래스를 클릭했을때
            $(".menu_for_map>.btn_position").click(function () {
                var submenu = $(this).next().next("ul");
                submenu.slideUp();

            });
        });


    </script>
</head>

<body>

	<!-- Preloader -->
	<div class="preloader">
		<div class="preloader-inner">
			<div class="preloader-icon">
				<span></span> <span></span>
			</div>
		</div>
	</div>
	<!-- /End Preloader -->

	<!-- 헤더 import -->
	<%@ include file="../inc/header.jsp" %>

	<div class="container">

		<div>
			<ul>
				<li class="menu_for_map"><label
					class="btn_position btn btn-warning">현재위치</label>&nbsp;&nbsp; <label
					class="btn_address btn btn-warning">주소로 검색</label>

					<ul class="address_hide">
						<div class="col-lg-7" style="padding: 15px 10px 10px 10px;">
							<label class="col-2" for="c_main_address" onclick="findAddr()"
								style="margin-right: 5px;"> 주소로 입력하기</label> <input type="text"
								class="col-6" id="c_main_address" placeholder="주소를 검색해주세요" onclick="findAddr()"
								style="padding: 2px 5px; height: 33px; border-color: rgba(124, 124, 138, 0.589); border-radius: 6px;"
								readonly>
							<button class="col-3" type="button" id="addressSearch"
								onclick="findAddr()"
								style="padding: 2px 5px; margin-left: 10px; width: 80px; height: 33px; border-color: rgba(124, 124, 138, 0.589); border-radius: 6px;">
								주소 검색</button>
						</div>
					</ul></li>
			</ul>
		</div>

		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-12">
				<!-- * 카카오맵 - 지도퍼가기 -->
				<!-- 1. 지도 노드 -->
				<div class="img-thumbnail_modified">
					<div id="daumRoughmapContainer1649752833849"
						class="root_daum_roughmap root_daum_roughmap_landing rounded-lg"
						style="width: 100%; margin: 0;"></div>
				</div>

				<!--
   2. 설치 스크립트
   * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
-->
				<script charset="UTF-8" class="daum_roughmap_loader_script"
					src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

				<!-- 3. 실행 스크립트 -->
				<script charset="UTF-8">
                    new daum.roughmap.Lander({
                        "timestamp": "1649752833849",
                        "key": "29tay",
                        "mapWidth": "100%",
                        "mapHeight": "575"
                    }).render();
                </script>
			</div>

			<div class="col-lg-6 col-md-6 col-sm-12">


				<div class="mapListss"><div id="forprepend"></div><div id="deleteOriginal">
				<c:forEach var="addrStoreList" items="${addrStoreList}" varStatus="vs">
					<!-- 한개 -->
					<div class="card mb-3" style="max-width: 700px; max-height: auto;">
						<div class="row g-0" style="height: auto;">
							<div class="col-md-4" style="height: 130px; width: 140px;">
								<img src=${fn:toLowerCase(addrStoreList.si_image) }
									class="img-fluid rounded-start"
									style="height: 130px; width: 140px;">
							</div>
							<div class="col-md-8">
								<div class="card-body" style="padding: 22px 16px 16px 16px;">
									<h5 class="card-title"><a href="/menuList.user?store=${addrStoreList.si_code}">${addrStoreList.si_name} ${addrStoreList.si_loc}</a></h5>
									<h6 class="card-title">${addrStoreList.si_addr_road}<c:if test="${addrStoreList.si_addr_detail eq '' || addrStoreList.si_addr_detail eq null }"></c:if> ${addrStoreList.si_addr_detail}</h6>
									<div class="row">
										<div class="col-lg-8 col-md-8 col-sm-12">
											<p class="card-text">
												<ul class="reviewwww">
									<c:forEach var="full_star" begin = "0" end = "${addrStoreList.si_star}" step="10">
										<c:if test="${ full_star gt 5 }">
											<li><i class="lni lni-star-filled"></i></li>
										</c:if>
									</c:forEach>
									<c:forEach var="half_star" begin = "10" end = "${addrStoreList.si_star}" step="10">
										<c:if test="${ (addrStoreList.si_star-half_star) eq 5 }">
											<li><i class="fa fa-star-half">&nbsp&nbsp</i></li>
										</c:if>
									</c:forEach>
									
									<c:forEach var="no_star" begin = "${addrStoreList.si_star}" end = "40" step="10">
										<c:if test="${no_star lt 45 }">
											<li><i class="lni lni-star"></i></li>
										</c:if>
									</c:forEach>
									<li><span>${addrStoreList.si_star /10 } 점 / 리뷰</span>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;대기시간 : &nbsp;<span><c:choose>
									<c:when test="${addrStoreList.si_due_time eq 0}">즉시 수령 가능</c:when>
									<c:otherwise>${addrStoreList.si_due_time } 분</c:otherwise>
									</c:choose></span></li>
								</ul>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 한개 -->
					</c:forEach></div>
					

				</div>
			</div>




		</div>
	</div>

	<!-- Start Trending Product Area -->
	<section class="trending-product-2 pt-4" style="margin-top: 12px;">
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
									<li><a><c:choose>
									<c:when test="${newStoreList.si_due_time eq 0}">즉시 수령 가능</c:when>
									<c:otherwise>${newStoreList.si_due_time } 분</c:otherwise>
									</c:choose></a></li>
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

	<!-- Start Footer Area -->
	<%@ include file="../inc/footer.jsp" %>
	
	<!--/ End Footer Area -->

	<!-- ========================= scroll-top ========================= -->
	<a href="#" class="scroll-top"> <i class="lni lni-chevron-up"></i>
	</a>

	<!-- ========================= JS here ========================= -->
	<script src="resources/assets/js/jquery-3.6.0.js"></script>
	<script src="resources/assets/owlcarousel/owl.carousel.min.js"></script>
	<script type="text/javascript">
        jQuery(document).ready(function () {
            $(".owl-carousel").owlCarousel({
                items: 4,
                // autoplay: true,
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
    </script>
</body>

</html>