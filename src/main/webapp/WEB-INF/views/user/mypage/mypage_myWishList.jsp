<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="no-js" lang="kor">


<head>
<meta charset="UTF-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>워킹오더 찜한 가게 보기</title>
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
<style>
.pagi {
    width: 100%;
}

.pagination {
    justify-content: flex-end;
}

.page-item.active .page-link{
   background-color: #ff778e;
   border-color: #ff778e;
}

.page-link{
   border: 0px;
    padding: 0.15rem 0.5rem;
    color: #828282;
   /*  margin-right:10px; */
}

.page-layer{
   display: flex;
   text-align : center;
}

</style>
</head>

<body>
	<!-- header import -->
	<%@ include file="/WEB-INF/views/user/inc/header.jsp"%>

	<!--mypage_main_jihyeon body 시작-->
	<section class="product spad">
		<div class="container">
			<div class="row">
				<%@ include file="/WEB-INF/views/user/inc/mypageaside.jsp" %>

				<div class="col-lg-9 col-md-7">
					<div class="row">
						<h3>
							My Wish List <i class="lni lni-heart-filled"></i>
						</h3>
					</div>
					<div class="row">
						<c:forEach var="myWishList" items="${myWishList}"
							varStatus="vs">
							
							<a class="col-11 search_result_list_col" href="/menuList.user?store=${myWishList.si_code }">
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
											<lable class="col-7 search_list_option_re ">${myWishList.si_openA}~${myWishList.si_closeA} </lable>
										</div>

									</div>
								</div>
							</a>
						</c:forEach>
						
						
							<ul style="list-style-type:none; margin:30px 40%;">
									<div class = "page-layer"></div>
							</ul> 
							
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
