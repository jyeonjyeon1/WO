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
    <link href="resources/assets/images/logo/logo_only.svg" rel="icon"/>

    
    <!-- ========================= CSS here ========================= -->
    <!-- Css Styles 추가 -->

    <!--Css icon from mings-->

     <!-- ========================= JS here ========================= -->
     <script src="resources/assets/js/jquery-3.6.0.js"></script> 
    
</head>

<body>
<!-- header import -->
<%@ include file="/WEB-INF/views/user/inc/header.jsp" %>

<!--mypage_main_jihyeon body 시작-->
<section class="product spad">
    <div class="container">
        <div class="row">
            <%@ include file="/WEB-INF/views/user/inc/mypageaside.jsp" %>
            
            <div class="col-lg-9 col-md-7">
                <div class="row">
                   
                    <div class="col-lg-12 col-md-12 col-sm-12" style="text-align: center;">
                    <button class="w-btn-outline w-btn-skin-outline" type="button" onclick="location.href='currentOrder.user'" style="width: 100%;">
                        <div class="mypage_menubar_text" >
                            <h5><a href="currentOrder.user">현재 주문 확인하기</a></h5>
                            <p>7분후 조리완료</p>
                        </div>
                    </button>
                    </div>
               
                    <div class="col-lg-4 col-md-6 col-sm-6" style="text-align: right;">
                        <button class="w-btn-outline w-btn-skin-outline" type="button" onclick="location.href='myCoupon.user'" style="width: 100%;">
                            <div class="mypage_menubar_text" >
                                <h5><a href="myCoupon.user">My쿠폰</a></h5>
                                <p>3장</p>
                            </div>
                        </button>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6" style="text-align: center;">
                        <button class="w-btn-outline w-btn-skin-outline" type="button" onclick="location.href='myPoint.user'" style="width: 100%;">
                            <div class="mypage_menubar_text" >
                                <h5><a href="myPoint.user">My포인트</a></h5>
                                <p>100point</p>
                            </div>
                        </button>

                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6" style="text-align: left;">

                        <button class="w-btn-outline w-btn-skin-outline" type="button" onclick="location.href='myReview.user'" style="width: 100%;">
                            <div class="mypage_menubar_text" >
                                <h5><a href="myReview.user">My리뷰</a></h5>
                                <p>11개</p>
                            </div>
                        </button>

                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6" style="text-align: right;">
                        <button class="w-btn-outline w-btn-skin-outline" type="button" onclick="location.href='OrderList.user'"  style="width: 100%;">
                            <div class="mypage_menubar_text" >
                                <h5><a href="myOrderList.user">주문내역</a></h5>
                                <p>31개</p>
                            </div>
                        </button>

                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6" style="text-align: center;">

                        <button class="w-btn-outline w-btn-skin-outline" type="button" onclick="location.href='myWishList.user'" style="width: 100%;">
                            <div class="mypage_menubar_text" >
                                <h5><a href="myWishList.user">위시리스트</a></h5>
                                <p>1개</p>
                            </div>
                        </button>

                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6" style="text-align: left;">
                    <button class="w-btn-outline w-btn-skin-outline" type="button" onclick="location.href='cart.user'" style="width: 100%;">
                        <div class="mypage_menubar_text" >
                            <h5><a href="cart.user">장바구니</a></h5>
                            <p>2개</p>
                        </div>
                    </button>
                    </div>
                    
                    
                </div>
            </div>
        </div>
    </div>
</section>


<!--mypage_main body 끝-->
<!-- footer import -->
<%@ include file="/WEB-INF/views/user/inc/footer.jsp" %>

</body>
</html>

