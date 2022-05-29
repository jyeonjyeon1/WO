<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html class="no-js" lang="kor">

<head>
<meta charset="UTF-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Walking Order</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="resources/assets/images/logo/logo_only.svg" rel="icon" />

<!-- ========================= assets/css here ========================= -->

<!-- ========================= JS here ========================= -->
<script src="resources/assets/js/jquery-3.6.0.js"></script>
<script type="text/javascript">

		var search = "" ;      
		var storeListByPageCount = ${storeListByPageCount} ;
		var pageNum = ${cri.pageNum} ;
		
		$(document).ready(function(){
			
            search = $("#zz").val();
            if(search== null){search="";}
            
			
			setPage(pageNum);
			
		})
		
        jQuery(document).ready(function () {

            $(".showdetail_btn").click(function () {
                if ($('.option_select_form').hasClass('active') == false) {
                    $(".option_select_form").addClass("active");
                } else {
                    $(".option_select_form").removeClass("active");
                }
            });
            
        });
            //========= Hero Slider
            
	    
		
		
            
     
    	  	
  // 일단 위시리스트를 하기 위해서 주석처리  	  	
/*         	$("div a").click(function(){
        		
        		var pageN = $(this).html();
        		var pageNum = parseInt(pageN);
        		console.log(pageNum);
        		
        		
        		$.ajax({
            		type: "POST",
            		url: "/pagingProcess.user",
            		data: {"pageNum" : pageNum},
            		success:function(data){
            			console.log("보내짐")
            			console.log(data)
            			
            			
            		},
            		error:function(data){
            			console.log("에러")
            		}
            		
            	})
        	});
        	
        }); */
        
   function myWish() {
		var storecode = $("#storecode").val();
		//alert(storecode);
		 var param = {"storecode": storecode };
		$.ajax({
			type: "POST",
            url: "/myWish.user",
            data: JSON.stringify(param),
            dataType: "text",
            contentType: "application/json",
			success : function(data) {
				alert("성공적으로 변경되었습니다.")
			},
			error : function(data) {
				console.log("로그인 통신x")
			}

		});//ajax 끝 
	}  
        
   
		
	 function setPage(pageNum){ //paging
		 storeListByPageCount = ${storeListByPageCount} ;
         var total = storeListByPageCount;
         var amount = 10;
		console.log("total : " + total );
		console.log("pageNum : " + pageNum );
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
            location.href= "/storeList.user?search=" + search + "&page="+changePageNum;
            

         });

         
      } 
                       
            
		
            
    </script>

<style>
< /*페이징처리 css*/
* {
	box-sizing: border-box;
}

.pagination a {
	color: black;
	text-decoration: none;
	text-align: center;
	width: 30px; /* 12개니까 대충 계산하기 */
	float: left; /* a는 인라인이라 안먹으니까 추가 */
	text-align: center;
	/* 하고보니 빨간색 벗어남 => 오버플로 오토주기, pagination 가서 */
}

.pagination a:hover:not(.active) { /* .active 클래스를 가진 a태그는 제외시키자 (암기) */
	background: #ddd;
}

.pagination a.active {
	background: dodgerblue;
	color: white;
}

.pagination {
	/* border: 1px solid red; */ /* 기본적으로 보더는 부모꺼가 잡힌다 */
	width: 50%; /* 누구의 반이란거야? 부모 (여기선 body) */
	margin: 0 auto; /* border 가운데 정렬(항상 규칙마냥 씀) */
	overflow: auto;
}
</style>

</head>

<body>
<input type="hidden" id="zz" value="${search}"/>

	<!-- header import -->
	<%@ include file="/WEB-INF/views/user/inc/header.jsp"%>

	<div class="container-md"
		style="padding: 30px; background-color: white;">
		<div class="col-lg-12">
			<input class="tabinput" id="tab1" type="radio" name="tabs" checked>
			<!--디폴트 메뉴-->
			<label class="tablabel" for="tab1">크게보기</label> <input
				class="tabinput" id="tab2" type="radio" name="tabs"> <label
				class="tablabel" for="tab2">리스트로 보기</label>


			<button class="showdetail_btn" onclick="javacript:;"
				style="float: right; margin-right: 30px;">
				<i class="fa fa-list"></i>
			</button>
			<!--조건 검색 자바스크립트-->
			<form class="option_select_form_wrap">
				<div class="form-panel option_select_form" style = "margin-left: -330px">
					<div style="border-bottom: 1px dotted grey; padding-bottom: 13px;">
						조건 검색</div>
					<div class="row">
						<label class="col-sm-4 col-sm-4">주차여부</label>
						<div class="col-sm-8">
							<label class="radio-inline"> <input type="radio"
								name="inRad1" id="inlineRadio1" value="option1" checked>
								가능
							</label> <label class="radio-inline"> <input type="radio"
								name="inRad1" id="inlineRadio2" value="option2"> 불가능
							</label>
						</div>
					</div>
					<div class="row">
						<label class="col-sm-4 col-sm-4">기타시설</label>
						<div class="col-sm-8">
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="inlineCheckbox1" value="room"> <label
									class="form-check-label" for="inlineCheckbox1">룸</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="inlineCheckbox2" value="seat"> <label
									class="form-check-label" for="inlineCheckbox2">좌석</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="inlineCheckbox3" value="groupseat"> <label
									class="form-check-label" for="inlineCheckbox2">단체석</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="inlineCheckbox4" value="wifi"> <label
									class="form-check-label" for="inlineCheckbox2">무선인터넷</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="inlineCheckbox5" value="babyseat"> <label
									class="form-check-label" for="inlineCheckbox2">유아용 의자</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="inlineCheckbox6" value="disabled"> <label
									class="form-check-label" for="inlineCheckbox2">장애인 편의시설</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="inlineCheckbox7" value="pet"> <label
									class="form-check-label" for="inlineCheckbox2">반려동물 동반</label>
							</div>
						</div>
					</div>

					<div class="row" style="text-align: center; float: right; margin-right: 10px;">
						<button type="submit" class="btn btn-theme">검색</button>
					</div>

				</div>
			</form>

			<!-- 크게 보기-->
			<div class="tapsection" id="content1">

				<div class="product__details__tab__desc">
					<div class="row"></div>
					<!-- 검색결과 -->
					<!-- 재우스 -->
					<section class="">
						<div class="container-md ">
							<div class="row" style="float: none; margin: 100 auto;">

								<!-- 페이지 작동여부확인(열개데이터가나와야함) -->
								<c:forEach var="userPageChange" items="${userPageChange}"
									varStatus="vs">


									<a href="#" class="col-5 search_result_big_col"
										onclick="myWish()"> <input type="hidden"
										value="${userPageChange.si_code }" id="storecode">

										<div class="d-lg-block">
											<div class="col-12 search_big_img_bg">
												<img src="${fn:toLowerCase(userPageChange.si_image) }"
													alt="cafe" class="search_big_img">
											</div>

											<div class="padding__5">
												<strong class="text-primary">${userPageChange.si_loc}</strong>
												<h3>${userPageChange.si_name}</h3>
												<ul>
													<div class="row">
														<lable class="col-4 search_big_option">전화번호 </lable>
														<lable class="col-7 search_big_option_re ">${userPageChange.si_tel}
														</lable>
													</div>
													<div class="row">
														<lable class="col-4 search_big_option">주소 </lable>
														<lable class="col-7 search_big_option_re ">${userPageChange.si_address}
														</lable>
													</div>
													<div class="row">
														<lable class="col-4 search_big_option">영업시간 </lable>
														<lable class="col-7 search_big_option_re ">${userPageChange.si_openA}~${storeListByPage.si_closeA}
														</lable>
													</div>
													<div class="row">
														<lable class="col-4 search_big_option">정기휴무 </lable>
														<lable class="col-7 search_big_option_re ">${userPageChange.si_holiday_fix}
														</lable>
													</div>
													<div class="row">
														<lable class="col-4 search_big_option">임시휴무 </lable>
														<lable class="col-7 search_big_option_re ">${userPageChange.si_holiday_imsi}
														</lable>
													</div>
												</ul>
											</div>
										</div>

									</a>


								</c:forEach>

								
								<div class = "page-layer"></div>

							
							</div>
						</div>
					</section>

				</div>


			</div>
			<!-- Blog Section End -->




			<!-- 리스트로 보기-->
			<div class="tapsection" id="content2">
				<div class="product__details__tab__desc">
					<div class="row"></div>
					<!-- 검색결과 -->
					<section class="">
						<div class="container-md ">
							<div class="row" style="float: none; margin: 20px auto;">

								<!-- 리스트 -->
						<c:forEach var="userPageChange" items="${userPageChange}" varStatus="vs">

								<a class="col-11 search_result_list_col" href="jw3.html">
									<div class="row">
										<div class="col-2 search_list_img_bg">
											<img src="${fn:toLowerCase(userPageChange.si_image) }"
												alt="cafe" class="search_big_img">
										</div>

										<div class="col-2" style="float: left; padding: 2.5vh 0;">
											<strong class="text-primary">${userPageChange.si_loc}</strong>
											<h4>${userPageChange.si_name}</h4>
										</div>
										<div class="col-5" style="padding-top: 2.5vh;">
											<div class="row">
												<lable class="col-4 search_list_option">전화번호 </lable>
												<lable class="col-7 search_list_option_re ">${userPageChange.si_tel}
												</lable>
											</div>
											<div class="row">
												<lable class="col-4 search_list_option">주소 </lable>
												<lable class="col-7 search_list_option_re ">${userPageChange.si_address} </lable>
											</div>
											<div class="row">
												<lable class="col-4 search_list_option">영업시간 </lable>
												<lable class="col-7 search_list_option_re ">${userPageChange.si_openA} -
												${storeListByPage.si_closeA} </lable>
											</div>
											<div class="row">
												<lable class="col-4 search_list_option">정기휴무 </lable>
												<lable class="col-7 search_list_option_re ">${userPageChange.si_holiday_fix}
												</lable>
											</div>

										</div>
									</div>
								</a>

								<!-- 매장 한개끝 -->
								</c:forEach>

								
								<div class = "page-layer"></div>
								
							</div>
					</section>
					<!-- Blog Section End -->
				</div>
			</div>
			<!-- 조건검색-->

		</div>
	</div>

	<!-- footer import -->
	<%@ include file="/WEB-INF/views/user/inc/footer.jsp"%>
	<!-- Js Plugins -->
	<!-- 이 화면을 위한 js -->

</body>

</html>