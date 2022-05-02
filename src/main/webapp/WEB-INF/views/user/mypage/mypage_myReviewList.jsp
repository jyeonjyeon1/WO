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
            <div class="col-lg-3 col-md-5">
                     <div class="mypage_sidebar">
                        <h4>My Page</h4>
                        <ul>
                            
                            <li><a class="mypage_side_hover" href="myCoupon.user"><i class="lni lni-ticket"> My쿠폰</i></a></li>
                            <li><a class="mypage_side_hover" href="myPoint.user"><i class="lni lni-database"> My포인트</i></a></li>
                            <li class="active"><a class="mypage_side_hover" href="myReviewList.user"><i class="lni lni-pencil-alt"> My리뷰</i></a></li>
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
                <div class="mypage_myreview">
                    <div class="mypage_myreview_top">
                    <div class="row">
                        <div class="col-lg-4 col-md-7">
                            <h3>내가 쓴 총 리뷰 4개</h3>
                        </div>
                </div>
                <div class="row">
                    <a href="#">리뷰 수정 안내 <i class="lni lni-question-circle"></i></a>
                    
                </div>
                </div>


                <div class="mypage_myreview_middle">
                <div class="myreview_content" style="margin-top: 10px;">
                <div class="row"  style="margin-left:10px; margin-top: 10px;">
                    <h3 class="mypage_myreview_middle_storename"><a href="#">컴포즈커피> </a></h3>
                    
                </div>
                <div class="row"  style="margin-left:10px;">
                    <div class="col-lg-6 col-md-6">
                        <h1><i class="lni lni-star-filled"></i><i class="lni lni-star-filled"></i><i class="lni lni-star-filled"></i><i class="lni lni-star-filled"></i><i class="lni lni-star"></i>
                          3개월전</h1>
                    </div>
                    <div class="col-lg-6 col-md-6" style="text-align: right;">
                        <a href="#" class="menubar_btn">삭제</a>
                    </div>
                    
                </div>
                <div class="row" >
                    <div class="col-lg-4 col-md-6" style="margin: 10px;"> 
                        <img src="resources/assets/images/blog/blog-6.jpg" style="border-radius: 20px;">

                    </div>
                    <div class="col-lg-6 col-md-6" style="margin: 15px;">
                        <div class="row">
                            <div class="orderedMenu" style="padding: 0; margin: 0;">
                            <div class="orderedMenu_btn" style="margin:5px;">(ice)아메리카노 1</div>
                            <div class="orderedMenu_btn" style="margin:5px;">(hot)카페라떼 2</div>
                            <div class="orderedMenu_btn" style="margin:5px;">(ice)초코라떼 1</div>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 15px;">
                            <h3 style="font-size: 20px;">완전 맛있어요 ♡</h3>
                        </div>
                    </div>
                    
                    </div>

                </div>
                <div class="myreview_content" style="margin-top: 10px;">
                    <div class="row"  style="margin-left:10px; margin-top: 10px;">
                        <h3 class="mypage_myreview_middle_storename"><a href="#">컴포즈커피> </a></h3>
                        
                    </div>
                    <div class="row"  style="margin-left:10px;">
                        <div class="col-lg-6 col-md-6">
                            <h1><i class="lni lni-star-filled"></i><i class="lni lni-star-filled"></i><i class="lni lni-star-filled"></i><i class="lni lni-star-filled"></i><i class="lni lni-star"></i>
                              3개월전</h1>
                        </div>
                        <div class="col-lg-6 col-md-6" style="text-align: right;">
                            <a href="#" class="menubar_btn">삭제</a>
                        </div>
                        
                    </div>
                    <div class="row" >
                        <div class="col-lg-4 col-md-6" style="margin: 10px;"> 
                            <img src="resources/assets/images/blog/blog-6.jpg" style="border-radius: 20px;">
    
                        </div>
                        <div class="col-lg-6 col-md-6" style="margin: 15px;">
                            <div class="row">
                                <div class="orderedMenu" style="padding: 0; margin: 0;">
                                <div class="orderedMenu_btn" style="margin:5px;">(ice)아메리카노 1</div>
                                <div class="orderedMenu_btn" style="margin:5px;">(hot)카페라떼 2</div>
                                <div class="orderedMenu_btn" style="margin:5px;">(ice)초코라떼 1</div>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 15px;">
                                <h3 style="font-size: 20px;">완전 맛있어요 ♡</h3>
                            </div>
                        </div>
                        
                        </div>
    
                    </div>
                    <div class="myreview_content" style="margin-top: 10px;">
                        <div class="row"  style="margin-left:10px; margin-top: 10px;">
                            <h3 class="mypage_myreview_middle_storename"><a href="#">컴포즈커피> </a></h3>
                            
                        </div>
                        <div class="row"  style="margin-left:10px;">
                            <div class="col-lg-6 col-md-6">
                                <h1><i class="lni lni-star-filled"></i><i class="lni lni-star-filled"></i><i class="lni lni-star-filled"></i><i class="lni lni-star-filled"></i><i class="lni lni-star"></i>
                                  3개월전</h1>
                            </div>
                            <div class="col-lg-6 col-md-6" style="text-align: right;">
                                <a href="#" class="menubar_btn">삭제</a>
                            </div>
                            
                        </div>
                        <div class="row" >
                            <div class="col-lg-4 col-md-6" style="margin:0 10px 10px 10px"> 
                                <img src="resources/assets/images/blog/blog-6.jpg" style="border-radius: 20px;">
        
                            </div>
                            <div class="col-lg-6 col-md-6" style="margin: 15px;">
                                <div class="row">
                                    <div class="orderedMenu" style="padding: 0; margin: 0;">
                                    <div class="orderedMenu_btn" style="margin:5px;">(ice)아메리카노 1</div>
                                    <div class="orderedMenu_btn" style="margin:5px;">(hot)카페라떼 2</div>
                                    <div class="orderedMenu_btn" style="margin:5px;">(ice)초코라떼 1</div>
                                    </div>
                                </div>
                                <div class="row" style="margin-top: 15px;">
                                    <h3 style="font-size: 20px;">완전 맛있어요 ♡</h3>
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
<%@ include file="/WEB-INF/views/user/inc/footer.jsp" %>

</body>
</html>
    