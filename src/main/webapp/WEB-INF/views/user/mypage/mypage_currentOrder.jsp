<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html class="no-js" lang="kor">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>워킹오더 진행중인 주문</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="resources/assets/images/logo/logo_only.svg" rel="icon"/>

    
    <!-- ========================= CSS here ========================= -->
    <!-- Css Styles 추가 -->

    <!--Css icon from mings-->



     <!-- ========================= JS here ========================= -->
     <script src="resources/assets/js/jquery-3.6.0.js"></script> 
     <script src="resources/assets/js/main.js"></script>
     <script type="text/javascript">
          jQuery(document).ready(function () {
             $('#headers').load("header.user");
             $('#footers').load("footer.user");  
         });
         //========= Hero Slider 
     </script>
    
</head>

<body>
<!-- header import -->
<%@ include file="/WEB-INF/views/user/inc/header.jsp" %>

<!--mypage_main_jihyeon body 시작-->
<section class="product spad">
    <div class="container">
        <div class="row">
            <!--메뉴바 시작!-->
            <div class="col-lg-3 col-md-5">
                
                    <div class="mypage_sidebar">
                        <h4>My Page</h4>
                        <ul>
                            
                            <li><a class="mypage_side_hover" href="myCoupon.user"><i class="lni lni-ticket"> My쿠폰</i></a></li>
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
                            <li class="active"><a class="mypage_side_hover" href="currentOrder.user"><i class="lni lni-ticket-alt"> 현재주문 확인하기</i></a></li>
                            
                        </ul>
                    </div>
               
            </div>
            <!-- 메뉴바 끝!-->
            <!-- 현재주문확인하기 content 시작!-->
            <div class="col-lg-9 col-md-7 col-sm-12" >
            <c:forEach var="myCurrentList" items="${myCurrentList }">
            
            <div class="col-lg-12 col-md-12 col-sm-12" style="margin-bottom:20px;">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="menubar_currentOrder">
                            <div class="menubar_currentOrder_text" >
                                    <div class="row">
                                        <div class="col-lg-6 col-md-12 col-sm-12">
                                    <h4><a href="/menuList.user?store=${myCurrentList.si_code}">${myCurrentList.si_name } ${myCurrentList.si_loc } > </a></h4>
                                    <h5><a>${myCurrentList.o_payment_list}</a> | <fmt:formatDate value="${myCurrentList.o_order_date}" pattern="yy년MM월dd일 a hh:mm"/>
                                 </h5>                        
                                    
                                    <p>가져갈게요</p>
                                    </div>
                                    <div class="col-lg-6 col-md-12 col-sm-12">
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-6">
                                        <h3>주문번호 : <a>${myCurrentList.o_code}</a></h3>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-6">
                                        <h2>${myCurrentList.o_order_state}</h2>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-lg-2 col-md-6 col-sm-6">
                                 <h1>메뉴</h1>
                                </div>
                            
                                <div class="col-lg-10 col-md-6 col-sm-6">
                                 <h6>${myCurrentList.o_list}</h6>
                                </div>
                                
                                </div>
                                <div class="row">
                                    <div class="col-lg-2 col-md-6 col-sm-6">
                                 <h1>결제금액</h1>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                 <h6><fmt:formatNumber value="${myCurrentList.o_total_price}" 
                                 pattern="###,###"/> 원</h6>
                                </div>
                                </div>
                                <div class="menubar_currentOrder_line">
                                <div class="row">    
                                    <div class="col-lg-3 col-md-6 col-sm-6">
                                    <a href="/myorder.user?order=${myCurrentList.o_code}" class="menubar_btn">주문 확인 <span class="arrow_right"></span></a>
                                </div>
                                </div>
                                </div>
                            </div>
                        </div>
                       </div>
                    </div>
                </div>
                </c:forEach>
                </div>
            <!-- 현재주문확인하기 content 끝!-->

        </div>
    </div>
</section>


<!--mypage_main body 끝-->
<!-- footer import -->
<%@ include file="/WEB-INF/views/user/inc/footer.jsp" %>

</body>
</html>
