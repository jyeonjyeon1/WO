<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html class="no-js" lang="kor">
 

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>워킹오더 나의리뷰 보기</title>
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
            <%@ include file="/WEB-INF/views/user/inc/mypageaside.jsp" %>
 
            <c:set var="reviewNum" value="0" />
            <c:forEach var="reviewList" items="${reviewList}" varStatus="vs">
            	<c:set var="reviewNum" value="${vs.count }" />
            </c:forEach>
            
            <div class="col-lg-9 col-md-7">
                <div class="mypage_myreview">
                    <div class="mypage_myreview_top">
                    <div class="row">
                        <div class="col-lg-4 col-md-7">
                            <h3>내가 쓴 리뷰 > ${reviewNum }개</h3>
                        </div>
                </div>
                <div class="row">
                    <a href="#">리뷰 수정 안내 <i class="lni lni-question-circle"></i></a>
                    
                </div>
                </div>

				
                <div class="mypage_myreview_middle">
                <c:forEach var="reviewList" items="${reviewList}" varStatus="vs">
	                <div class="myreview_content" style="margin-top: 10px;">
	                <div class="row"  style="margin-left:10px; margin-top: 10px;">
	                    <h3 class="mypage_myreview_middle_storename"><a href="/menuList.user?store=${reviewList.si_code }">${reviewList.si_name} ${reviewList.si_loc} > </a></h3>
	                    
	                </div>
	                <div class="row"  style="margin-left:10px;">
	                    <div class="col-lg-6 col-md-6">
	                        <ul class="review">
								<c:forEach var="full_star" begin = "0" end = "${reviewList.ur_star}" step="10">
									<c:if test="${ full_star gt 5 }">
										<i class="lni lni-star-filled"></i>
									</c:if>
								</c:forEach>
								<c:forEach var="half_star" begin = "10" end = "${reviewList.ur_star}" step="10">
									<c:if test="${ (reviewList.ur_star-half_star) eq 5 }">
										<i class="fa fa-star-half">&nbsp&nbsp</i>
									</c:if>
								</c:forEach>
									
								<c:forEach var="no_star" begin = "${reviewList.ur_star}" end = "40" step="10">
									<c:if test="${no_star lt 45 }">
										<i class="lni lni-star"></i>
									</c:if>
								</c:forEach>
								</ul>
	                          <h1>${reviewList.dif_date}일전</h1>
	                    </div>
	                    <div class="col-lg-6 col-md-6" style="text-align: right;">
	                        <a href="#" class="menubar_btn">삭제</a>
	                    </div>
	                </div>
	                <div class="row" >
	                    <div class="col-lg-4 col-md-6" style="margin: 10px;"> 
	                    <c:choose>
		                    <c:when test="${(reviewList.ur_pic_url).indexOf('__') eq -1}">
		                   	 <img src="https://walkingorder.s3.ap-northeast-2.amazonaws.com/reviews/no-image-available1.png" style="border-radius: 20px;">
		                    </c:when>
		                    <c:otherwise>
		                   	 <img src="${reviewList.ur_pic_url}" style="border-radius: 20px;">
		                    </c:otherwise>
	                    </c:choose>
	
	                    </div>
	                    <div class="col-lg-6 col-md-6" style="margin: 15px;">
	                        <div class="row">
	                            <div class="orderedMenu" style="padding: 0; margin: 0;">
		                            <c:set var="testVar">${reviewList.o_list_detail}</c:set>
									<c:forTokens items="${testVar}" delims=",,," var="value">
										<div class="orderedMenu_btn" style="margin:5px;">${value}</div>
									</c:forTokens>
	                            
	                            </div>
	                        </div>
	                        <div class="row" style="margin-top: 15px;">
	                            <h3 style="font-size: 20px;">${reviewList.ur_content}</h3>
	                        </div>
	                    </div>
	                    </div>
	                </div>
	                
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
    