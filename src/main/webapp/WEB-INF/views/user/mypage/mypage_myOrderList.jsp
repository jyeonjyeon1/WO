<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html class="no-js" lang="kor">
 

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>워킹오더 지난 주문내역</title>
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
                            <li><a class="mypage_side_hover" href="myReview.user"><i class="lni lni-pencil-alt"> My리뷰</i></a></li>
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
            
            <div class="col-lg-9 col-md-7">
                
                    <h5>나의 주문내역</h5>
                    <div class="mypage_mypoint_middle1">
                    <div class="row" style="margin: 30px 0 0 0;">
                        <div class="col-lg-3 col-md-7">
                            
                                <h5 style="font-size: 15px; text-align: right;" >날짜를 선택해 주세요<i class="lni lni-heart-filled"></i> </h5>
                        
                        </div>
                        <div class="col-lg-2 col-md-7">
                            <select class="dateSelect" id="specificSizeSelect" >
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
                        

                    </div>
                    <c:forEach var="myOrderList" items="${myOrderList}">
                    <c:if test="${myOrderList.o_order_state eq '전달완료' }">
                    <div class="row" style="margin-top: 25px;">
                    <div class="col-lg-12 col-md-6 col-sm-12">
                        
                        <div class="menubar_currentOrder">
                            <div class="menubar_currentOrder_text" >
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-sm-12">
                                    <h4><a href="/menuList.user?store=${myOrderList.si_code}">${myOrderList.si_name} ${myOrderList.si_loc}> </a></h4>
                                    <h5><a>${myOrderList.o_payment_list}</a> | 
                                    <fmt:formatDate value="${myOrderList.o_order_date}" pattern="yy년MM월dd일 a hh:mm"/></h5>                                        
                                    
                                    <p>가져갈게요</p>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12">
                                        <div class="row">
                                            <div class="col-lg-12 col-md-6 col-sm-12">
                                        <h3>주문번호 : <a>${myOrderList.o_code}</a></h3>
                                    </div>
                                    <div class="col-lg-12 col-md-6 col-sm-12">
                                        <h2>${myOrderList.o_order_state}</h2>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    
                                    <div class="col-lg-2 col-md-6 col-sm-6">
                                 <h1>메뉴</h1>
                                </div>
                            
                                <div class="col-lg-10 col-md-6 col-sm-6">
                                 <h6>${myOrderList.o_list}</h6>
                                </div>
                                
                                </div>
                                <div class="row">
                                    <div class="col-lg-2 col-md-6 col-sm-6">
                                 <h1>결제금액</h1>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                 <h6><fmt:formatNumber value="${myOrderList.o_total_price}" 
                                 pattern="###,###"/> 원</h6>
                                </div>
                                </div>
                                <div class="menubar_currentOrder_line">
                                <div class="row">    
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <a href="/myOrder.user?order=${myOrderList.o_code}" class="menubar_btn">주문 확인 <span class="arrow_right"></span></a>
                                </div>
                                </div>
                                </div>
                            </div>
                        </div>
                       </div>
                    </div>
                    </c:if>
                    </c:forEach >
                    <c:forEach var="myOrderList" items="${myOrderList}">
                    <c:if test="${myOrderList.o_order_state ne '전달완료' }">
					<fmt:formatDate var="todayd" value="${nowDate}" pattern="yyyy-MM-dd"/>
					<fmt:formatDate var="ordd_date" value="${myOrderList.o_order_date}" pattern="yyyy-MM-dd"/>
					<fmt:parseDate var="today" value="${todayd}" pattern="yyyy-MM-dd"></fmt:parseDate>
					<fmt:parseDate var="ord_date" value="${ordd_date}" pattern="yyyy-MM-dd"></fmt:parseDate>
					<fmt:parseNumber value ="${today.time /(1000*60*60*24) }" var="now" integerOnly="true"></fmt:parseNumber>
					<fmt:parseNumber value ="${ord_date.time /(1000*60*60*24) }" var="ord" integerOnly="true"></fmt:parseNumber>
                    <div class="row" style="margin-top: 25px;">
                    <div class="col-lg-12 col-md-6 col-sm-12">
                        
                        <div class="menubar_lastOrder">
                            <div class="menubar_lastOrder_text" >
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-sm-12">
                                    <h4><a href="/menuList.user?store=${myOrderList.si_code}">${myOrderList.si_name} ${myOrderList.si_loc}> </a></h4>
                                    <h5><a>${myOrderList.o_payment_list}</a> | 
                                    <fmt:formatDate value="${myOrderList.o_order_date}" pattern="yy년MM월dd일 a hh:mm"/></h5>                                        
                                    
                                    <p>가져갈게요</p>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12">
                                        <div class="row">
                                            <div class="col-lg-12 col-md-6 col-sm-6">
                                        <h3>주문번호 : <a>${myOrderList.o_code}</a></h3>
                                    </div>
                                    <div class="col-lg-12 col-md-6 col-sm-6">
                                        <h2>${myOrderList.o_order_state }</h2>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    
                                    <div class="col-lg-2 col-md-6 col-sm-6">
                                 <h1>메뉴</h1>
                                </div>
                            
                                <div class="col-lg-10 col-md-6 col-sm-6">
                                 <h6>${myOrderList.o_list}</h6>
                                </div>
                                
                                </div>
                                <div class="row">
                                    <div class="col-lg-2 col-md-6 col-sm-6">
                                 <h1>결제금액</h1>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                 <h6><fmt:formatNumber value="${myOrderList.o_total_price}" 
                                 pattern="###,###"/> 원</h6>
                                </div>
                                </div>
                                <div class="menubar_lastOrder_line">
                                <div class="row">    
                                    <div class="col-lg-3 col-md-6 col-sm-6">
                                    <a href="#" class="menubar_btn">재주문할게요! <span class="arrow_right"></span></a>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                	<c:choose>
	                                <c:when test="${myOrderList.o_review eq true}">
	                                	<a class="menubar_btn orderList_disable">
                                    리뷰작성 완료! <span class="arrow_right"></span></a>
	                                </c:when>
                                	<c:when test="${myOrderList.o_review eq false && now - ord > 12 }">
                                	<a href="myReview.user?order=${myOrderList.o_code}" class="menubar_btn orderList_disable">
                                    리뷰작성기간만료 <span class="arrow_right"></span></a>
                                	</c:when>
                                	<c:otherwise>
                                		<a href="myReview.user?order=${myOrderList.o_code}" class="menubar_btn">
                                    리뷰작성 <span class="arrow_right"></span></a>
                                	</c:otherwise>
                                	</c:choose>
                                    
                                    
                                </div>
                                </div>
                                </div>
                            </div>
                        </div>
                       </div>
                    </div>
                    
                    </c:if>
                    </c:forEach>
                        

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
