<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="kor">

  <meta charset="UTF-8" />
  <meta http-equiv="x-ua-compatible" content="ie=edge" />
  <title>Walking Order</title>
  <meta name="description" content="" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link href="resources/assets/images/logo/logo_only.svg" rel="icon" />


  <!-- ========================= CSS here ========================= -->
  <!-- Css Styles 추가 -->

  <!--Css icon from mings-->




  <!-- ========================= JS here ========================= -->
  <script src="resources/assets/js/jquery-3.6.0.js"></script>
  <script type="text/javascript">
    jQuery(document).ready(function () {
      $('#headers').load("header.html");
      $('#footers').load("footer.html");
    });
         //========= Hero Slider


  </script>

</head>

<body>


  <!-- header import -->
  <!-- <%@ include file="/WEB-INF/views/user/inc/header.jsp" %> -->
      <div id="headers"></div>

  <!--mypage_main_jihyeon body 시작-->
  <section class="product spad">
    <div class="container">
      <div class="row">
        <div class="col-lg-3 col-md-5">
			 <div class="mypage_sidebar">
                        <h4>My Page</h4>
                        <ul>
                            
                            <li class="active"><a class="mypage_side_hover" href="myCoupon.user"><i class="lni lni-ticket"> My쿠폰</i></a></li>
                            <li><a class="mypage_side_hover" href="myPoint.user"><i class="lni lni-database"> My포인트</i></a></li>
                            <li><a class="mypage_side_hover" href="myReviewList.user"><i class="lni lni-pencil-alt"> My리뷰</i></a></li>
                            <div class="sidebar_line">
                            <li><a class="mypage_side_hover" href="myOrderList.user"><i class="lni lni-radio-button"> 주문내역</i></a></li>
                            </div>
                            <li><a class="mypage_side_hover" href="myWishList.user"><i class="lni lni-heart"> 위시리스트</i></a></li>
                            <li><a class="mypage_side_hover" href="cart.user"><i class="lni lni-cart"> 장바구니</i></a></li>
                            
                            <div class="sidebar_line">
                            <li><a class="mypage_side_hover" href="#"><i class="lni lni-user"> 회원정보변경/탈퇴</i></a></li>
                            </div>
                            <li><a class="mypage_side_hover" href="faq.user"><i class="lni lni-headphone-alt"> 고객센터 문의하기</i></a></li>
                            <li><a class="mypage_side_hover" href="currentOrder.user"><i class="lni lni-ticket-alt"> 현재주문 확인하기</i></a></li>
                            
                        </ul>
                    </div>

        </div>

        <div class="col-lg-9 col-md-7">
          <div class="row">
            <div class="col-lg-12 col-md-">
              <div class="mypage_myCoupon">
				<!-- <a href="#"><i class="lni lni-ticket"> 쿠폰등록하기</i></a>  -->
				
                <h1>쿠폰함을 확인해보세요.</h1>
                <h2>Check your coupon box! <i class="lni lni-happy"></i></h2>

              </div>
            </div>


            <div class="mypage_myCoupon_sort">

              <ul class="nav coupon_tab" id="myTab" role="tablist">

                <li class="col-lg-6 col-md-7 coupon_item" role="presentation">
                  <button class="coupon_link" id="tab_use" data-bs-toggle="tab" data-bs-target="#home" type="button"
                    role="tab" aria-controls="home" aria-selected="true">사용가능쿠폰
                    <h5>2장</h5>
                  </button>

                </li>


                <li class="col-lg-6 col-md-7 coupon_item" role="presentation">
                  <button class="coupon_link" id="tab_used" data-bs-toggle="tab" data-bs-target="#profile" type="button"
                    role="tab" aria-controls="profile" aria-selected="false">사용불가쿠폰
                    <h5>1장</h5>
                  </button>
                </li>

              </ul>
              <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="tab_use">
                  <div class="coupon_card mb-3" style="max-width: 540px;">
                    <div class="row g-0">
                      <div class="col-md-4 col-sm-12">
                        <img src="resources/assets/images/categories/cat-1.jpg" class="img-fluid rounded-start" alt="...">
                      </div>
                      <div class="col-md-8">
                        <div class="coupon_card-body">
                          <a href="#" class="coupon_card-title">[친구초대] 공짜리카노쿠폰</a>
                          <p class="coupon_card-text1">1500원 할인</p>
                          <p class="coupon_card-text2"><small class="text-muted">~2022.05.08 까지</small></p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="coupon_card mb-3" style="max-width: 540px;">
                    <div class="row g-0">
                      <div class="col-md-4">
                        <img src="resources/assets/images/categories/cat-2.jpg" class="img-fluid rounded-start" alt="...">
                      </div>
                      <div class="col-md-8">
                        <div class="coupon_card-body">
                          <a href="#" class="coupon_card-title">[첫주문할인] 100원 쿠폰</a>
                          <p class="coupon_card-text1">아메리카노 100원</p>
                          <p class="coupon_card-text2"><small class="text-muted">~2022.05.08 까지</small></p>
                        </div>
                      </div>
                    </div>
                  </div>

                </div>
                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="tab_used">

                  <div class="coupon_usedcard mb-3" style="max-width: 540px;">
                    <div class="row g-0">
                      <div class="col-md-4">
                        <img src="resources/assets/images/categories/cat-3.jpg" class="img-fluid rounded-start" alt="...">
                      </div>
                      <div class="col-md-8">
                        <div class="coupon_card-body">
                          <h5 class="coupon_card-title">[첫주문할인] 100원 쿠폰</h5>
                          <p class="coupon_card-text">아메리카노 100원</p>
                          <p class="coupon_card-text"><small class="text-muted">~2020.05.08 까지</small></p>
                        </div>
                      </div>
                    </div>
                  </div>

                </div>

              </div>

            </div>


          </div>
        </div>

      </div>
    </div>
  </section>


  <!--mypage_main body 끝-->
  <!-- footer import -->
  <!-- <%@ include file="/WEB-INF/views/user/inc/footer.jsp" %> -->
      <div id="footers"></div>

</body>

</html>