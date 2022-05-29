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
<script>

	var myWishListCount = ${myWishListCount} ;
	var pageNum = ${cri.pageNum} ;

	
	$(document).ready(function(){
		myWishListCount = ${myWishListCount};
		pageNum = ${cri.pageNum};
		setPage(pageNum);
		
	})
		
	 function setPage(pageNum){ //paging
          console.log("setpage");
          var total = myWishListCount;
          var amount = 3;
		console.log("total : " + total );
          var endPage = Math.ceil(pageNum/10.0)*10;
          var startPage = endPage - 9;
          console.log("endPage : " + endPage +"/ startPage : "+ startPage);
          if(total == 0){
             var realEnd = 1;
          }else{
             var realEnd = Math.ceil((total*1.0)/amount);
          }

           if(realEnd < endPage){
              endPage = realEnd;
           }
           
           var prev = startPage > 1;
           var next = endPage < realEnd; // 쓸지안쓸지
           
           
           console.log(startPage);
           console.log(endPage);
           
           $(".page-layer").html("");
           
         for(var i=startPage; i<=endPage; i++){
            
            if(pageNum == i){
               var li = '<li class="page-item active"><a class="page-link" href="'+i+'">'+i+'</a></li>';
               //<li class= "paging"><a href="#">1</a></li>  
            }else{
               var li = '<li class="page-item"><a class="page-link" href="'+i+'">'+i+'</a></li>';
            }
            
            $(".page-layer").append(li);
            
         }
         
          // paging a link click
           $(".page-item a").on("click", function(e){

             e.preventDefault();
             var changePageNum = $(this).attr("href");
             location.href= "myWishList.user?page="+changePageNum;

          });

          
       }

	 
	 
// 	 function paging() {
// 		 console.log(pageNum);
// 		 var param = {"pageNum": pageNum };
// 			$.ajax({
// 				type: "POST",
// 	            url: "/myWishList.user",
// 	            data: JSON.stringify(param),
// 	            dataType: "json",
// 		        contentType: "application/json",
// 				success : function(data) {
// 					pageNum = 2;
// 					myWishListCount  = ${myWishListCount} ;
					
// 					console.log("myWishListCount :" + myWishListCount);
// 					console.log("newpageNum :" + pageNum);
// 					console.log("okok");
// 					setPage(pageNum);
// 				},
// 				error : function(data) {
// 					console.log("로그인 통신x")
// 				}

// 			});//ajax 끝 
// 	 }

</script>
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
						<c:forEach var="myWishList" items="${myWishList}"
							varStatus="vs">
							
							<a class="col-11 search_result_list_col" href="jw3.html">
								<div class="row">
									<div class="col-2 search_list_img_bg">
										<img src="${myWishList.si_image}"
											alt="cafe" class="search_big_img">
									</div>

									<div class="col-2" style="float: left; padding: 2.5vh 0;">
										<strong class="text-primary">${myWishList.si_loc}</strong>
										<h5>${myWishList.si_name}</h5>
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
											<lable class="col-7 search_list_option_re ">${myWishList.si_open}~${myWishList.si_close} </lable>
										</div>

									</div>
								</div>
							</a>
						</c:forEach>
						
						
							<div class = "page-layer"></div>
							
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
