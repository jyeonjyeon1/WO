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
		var pageNum = ${criStore.pageNum} ;
		var searchType = "";
		
		// 조건검색 라디오
		var parking = "";
		// 조건검색 체크박스
		
		var room = "";
		var seat = "";
		var groupseat = "";
		var wifi = "";
		var babyseat = "";
		var disabled = "";
		var pet = "";
		
		$(document).ready(function(){
			
            search = $("#searchCHK").val();
            searchType = $("#searchTypeCHK").val();
            
            parking = $("#parkingCHK").val();
            room = $("#roomCHK").val();
            seat = $("#seatCHK").val();
            groupseat = $("#groupseatCHK").val();
            wifi = $("#wifiCHK").val();
            babyseat = $("#babyseatCHK").val();
            disabled = $("#disabledCHK").val();
            pet = $("#petCHK").val();
            
            
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
		// 조건검색 펑션
		function details_button() {
			
			parking = "";
			room = "";
			seat = "";
			groupseat = "";
			wifi = "";
			babyseat = "";
			disabled = "";
			pet = "";
			
			// 라디오
			parking = $('input:radio[name="inRad1"]:checked').val();
			
			// 룸 체크박스
			const room_checkbox = document.getElementById('room');
			const room_checked = room_checkbox.checked;
			if (room_checked == true) {
				room = $('input:checkbox[id="room"]').val();
			} 
			
			// 좌석 체크박스
			const seat_checkbox = document.getElementById('seat');
			const seat_checked = seat_checkbox.checked;
			if (seat_checked == true) {
				seat = $('input:checkbox[id="seat"]').val();
			} 
			
			// 단체석 체크박스
			const groupseat_checkbox = document.getElementById('groupseat');
			const groupseat_checked = groupseat_checkbox.checked;
			if (groupseat_checked == true) {
				groupseat = $('input:checkbox[id="groupseat"]').val();
			} 
			
			// 무선인터넷 체크박스
			const wifi_checkbox = document.getElementById('wifi');
			const wifi_checked = wifi_checkbox.checked;
			if (wifi_checked == true) {
				wifi = $('input:checkbox[id="wifi"]').val();
			} 
			
			// 유아용 체크박스
			const babyseat_checkbox = document.getElementById('babyseat');
			const babyseat_checked = babyseat_checkbox.checked;
			if (babyseat_checked == true) {
				babyseat = $('input:checkbox[id="babyseat"]').val();
			} 
			
			// 장애인 편의시설 체크박스
			const disabled_checkbox = document.getElementById('disabled');
			const disabled_checked = disabled_checkbox.checked;
			if (disabled_checked == true) {
				disabled = $('input:checkbox[id="disabled"]').val();
			} 
			
			// 반려동물 동반 체크박스
			const pet_checkbox = document.getElementById('pet');
			const pet_checked = pet_checkbox.checked;
			if (pet_checked == true) {
				pet = $('input:checkbox[id="pet"]').val();
			} 
			
			
			location.href= "/storeList.user?search=" + search +  "&searchType=" + searchType + "&parking=" + parking + "&room=" + room + 
					 "&seat=" + seat + "&groupseat=" + groupseat + "&wifi=" + wifi + "&babyseat=" + babyseat + "&disabled=" + disabled + "&pet=" + pet;
			
			
		}
    	  	
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
				alert("성공적으로 반영 되었습니다.")
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
         var endPage = Math.ceil(pageNum/10.0)*10;
         var startPage = endPage - 9;
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
            
            //searchType = ${searchType};
            var changePageNum = $(this).attr("href");
            
            location.href= "/storeList.user?search=" + search +  "&searchType="+searchType + "&page=" + changePageNum
            		+ "&parking=" + parking + "&room=" + room + "&seat=" + seat + "&groupseat=" + groupseat + "&wifi=" 
            		+ wifi + "&babyseat=" + babyseat + "&disabled=" + disabled + "&pet=" + pet;
            

         });

         
      } 
                       
            
		
            
    </script>

</head>

<body>
<input type="hidden" id="searchCHK" value="${search}"/>
<input type="hidden" id="searchTypeCHK" value="${searchType}"/>
<input type="hidden" id="parkingCHK" value="${parking}"/>
<input type="hidden" id="roomCHK" value="${room}"/>
<input type="hidden" id="seatCHK" value="${seat}"/>
<input type="hidden" id="groupseatCHK" value="${groupseat}"/>
<input type="hidden" id="wifiCHK" value="${wifi}"/>
<input type="hidden" id="babyseatCHK" value="${babyseat}"/>
<input type="hidden" id="disabledCHK" value="${disabled}"/>
<input type="hidden" id="petCHK" value="${pet}"/>

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
			<form class="option_select_form_wrap" >
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
									id="room" value="room"> <label
									class="form-check-label" for="room">룸</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="seat" value="seat"> <label
									class="form-check-label" for="seat">좌석</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="groupseat" value="groupseat"> <label
									class="form-check-label" for="groupseat">단체석</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="wifi" value="wifi"> <label
									class="form-check-label" for="wifi">무선인터넷</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="babyseat" value="babyseat" > <label
									class="form-check-label" for="babyseat">유아용 의자</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="disabled" value="disabled"> <label
									class="form-check-label" for="disabled">장애인 편의시설</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									id="pet" value="pet"> <label
									class="form-check-label" for="pet">반려동물 동반</label>
							</div>
						</div>
					</div>

					<div class="details_button" style="text-align: center; float: right; margin-right: 10px;">
						<button type="button" class="btn btn-theme" onclick = "details_button();">검색</button>
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