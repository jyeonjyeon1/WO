<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
            
     //paging 처리 (값보내기)
            
       $(document).ready(function(){
        	$("div a").click(function(){
        		
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
            			/* $.each(data, function(index,item)) {
            				$("#demo").append(index + "");
            				$("#demo").append(item.si_name + "");
            				
            			} */
            			
            		},
            		error:function(data){
            			console.log("에러")
            		}
            		
            	})
        	});
        	
        });
            
            //paging처리 
            
                       
            
		
            
    </script>
    
    <style>
    </*페이징처리 css*/
*{box-sizing: border-box;}
.pagination a{
	color: black;
	text-decoration: none;
	text-align:center;
	width: 30px; /* 12개니까 대충 계산하기 */
	float: left; /* a는 인라인이라 안먹으니까 추가 */
	text-align: center;
	/* 하고보니 빨간색 벗어남 => 오버플로 오토주기, pagination 가서 */
	
}
.pagination a:hover:not(.active){ /* .active 클래스를 가진 a태그는 제외시키자 (암기) */
	background: #ddd;
}
.pagination a.active{
	background: dodgerblue;
	color:white;
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
    <!-- header import -->
    <%@ include file="/WEB-INF/views/user/inc/header.jsp" %>

    <div class="container-md" style="padding:30px; background-color: white;">
        <div class="col-lg-12">
            <input class="tabinput" id="tab1" type="radio" name="tabs" checked>
            <!--디폴트 메뉴-->
            <label class="tablabel" for="tab1">크게보기</label>

            <input class="tabinput" id="tab2" type="radio" name="tabs">
            <label class="tablabel" for="tab2">리스트로 보기</label>


            <button class="showdetail_btn" onclick="javacript:;" style=" float: right; margin-right: 30px;">
                <i class="fa fa-list"></i>
            </button>
            <!--조건 검색 자바스크립트-->
            <form class="option_select_form_wrap">
                <div class="form-panel option_select_form">
                    <div style="border-bottom: 1px dotted grey; padding-bottom: 13px; ">
                        상세 검색</div>
                    <div class="row">
                        <label class="col-sm-4 col-sm-4">주차여부</label>
                        <div class="col-sm-8">
                            <label class="radio-inline">
                                <input type="radio" name="inRad1" id="inlineRadio1" value="option1" checked> 가능
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="inRad1" id="inlineRadio2" value="option2"> 불가능
                            </label>
                        </div>
                    </div>
                    <div class="row">
                        <label class="col-sm-4 col-sm-4">매장사용</label>
                        <div class="col-sm-8">
                            <label class="radio-inline">
                                <input type="radio" name="inRad2" id="inlineRadio1" value="option1" checked> 가능
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="inRad2" id="inlineRadio2" value="option2"> 불가능
                            </label>
                        </div>
                    </div>
                    <div class="row">
                        <label class="col-sm-4 col-sm-4 control-label">조건</label>
                        <div class="col-sm-8">
                            <input class="form-control round-form" type="text" value="10"
                                style="height:24px;width: 50%;">
                        </div>
                    </div>
                    <div class="row" style="text-align: center;">
                        <button type="submit" class="btn btn-theme">검색</button>
                    </div>

                </div>
            </form>

            <!-- 크게 보기-->
            <div class="tapsection" id="content1">
					
	                <div class="product__details__tab__desc">
                    <div class="row"><select id="dataPerPage" style="width: 100px; margin:20px;">
        <option value="10">10개씩보기</option>
        <option value="15">15개씩보기</option>
        <option value="20">20개씩보기</option>
</select></div>
                    <!-- 검색결과 -->
                    <!-- 재우스 -->
                    <section class="">
                        <div class="container-md ">
                            <div class="row" style="float: none; margin:100 auto;">
                      			
								<!-- 페이지 작동여부확인(열개데이터가나와야함) -->
								<c:forEach var="userPageChange" items="${userPageChange}" varStatus="vs">
									
						
										<a href="#" class="col-5 search_result_big_col">

                                    <div class="d-lg-block">
                                        <div class="col-12 search_big_img_bg">
                                            <img src="${fn:toLowerCase(userPageChange.si_image) }" alt="cafe"
                                                class="search_big_img">
                                        </div>

                                        <div class="padding__5">
                                            <strong class="text-primary">${userPageChange.si_loc}</strong>
                                            <h3>${userPageChange.si_name}</h3>
                                            <ul>
                                                <div class="row">
                                                    <lable class="col-4 search_big_option">전화번호
                                                    </lable>
                                                    <lable class="col-7 search_big_option_re ">${userPageChange.si_tel}
                                                    </lable>
                                                </div>
                                                <div class="row">
                                                    <lable class="col-4 search_big_option">주소
                                                    </lable>
                                                    <lable class="col-7 search_big_option_re ">${userPageChange.si_address}
                                                    </lable>
                                                </div>
                                                <div class="row">
                                                    <lable class="col-4 search_big_option">영업시간
                                                    </lable>
                                                    <lable class="col-7 search_big_option_re ">${userPageChange.si_open}~${storeListByPage.si_close}
                                                    </lable>
                                                </div>
                                                <div class="row">
                                                    <lable class="col-4 search_big_option">정기휴무
                                                    </lable>
                                                    <lable class="col-7 search_big_option_re ">${userPageChange.si_holiday_fix}
                                                    </lable>
                                                </div>
                                                <div class="row">
                                                    <lable class="col-4 search_big_option">임시휴무
                                                    </lable>
                                                    <lable class="col-7 search_big_option_re ">${userPageChange.si_holiday_imsi}
                                                    </lable>
                                                </div>
                                            </ul>
                                        </div>
                                    </div>

                                </a>
										
										
									</c:forEach>
								
								<!-- 매장list start(4개데이터가나와야함) 
									<c:forEach var="storeListByPage" items="${storeListByPage}" varStatus="vs">
									
						
										<a href="#" class="col-5 search_result_big_col">

                                    <div class="d-lg-block">
                                        <div class="col-12 search_big_img_bg">
                                            <img src="${fn:toLowerCase(storeListByPage.si_image) }" alt="cafe"
                                                class="search_big_img">
                                        </div>

                                        <div class="padding__5">
                                            <strong class="text-primary">${storeListByPage.si_loc}</strong>
                                            <h3>${storeListByPage.si_name}</h3>
                                            <ul>
                                                <div class="row">
                                                    <lable class="col-4 search_big_option">전화번호
                                                    </lable>
                                                    <lable class="col-7 search_big_option_re ">${storeListByPage.si_tel}
                                                    </lable>
                                                </div>
                                                <div class="row">
                                                    <lable class="col-4 search_big_option">주소
                                                    </lable>
                                                    <lable class="col-7 search_big_option_re ">${storeListByPage.si_address}
                                                    </lable>
                                                </div>
                                                <div class="row">
                                                    <lable class="col-4 search_big_option">영업시간
                                                    </lable>
                                                    <lable class="col-7 search_big_option_re ">${storeListByPage.si_open}~${storeListByPage.si_close}
                                                    </lable>
                                                </div>
                                                <div class="row">
                                                    <lable class="col-4 search_big_option">정기휴무
                                                    </lable>
                                                    <lable class="col-7 search_big_option_re ">${storeListByPage.si_holiday_fix}
                                                    </lable>
                                                </div>
                                                <div class="row">
                                                    <lable class="col-4 search_big_option">임시휴무
                                                    </lable>
                                                    <lable class="col-7 search_big_option_re ">${storeListByPage.si_holiday_imsi}
                                                    </lable>
                                                </div>
                                            </ul>
                                        </div>
                                    </div>

                                </a>
										
										
									</c:forEach>
									 매장 list 끝 -->
			
                                
                               <!--   매장 한개 
                               <a href="#" class="col-5 search_result_big_col">

                                    <div class="d-lg-block">
                                        <div class="col-12 search_big_img_bg">
                                            <img src="resources/assets/images/cafe/no-image-cafe.png" alt="cafe"
                                                class="search_big_img">
                                        </div>

                                        <div class="padding__5">
                                            <strong class="text-primary">종로3가점</strong>
                                            <h3>스타벅스</h3>
                                            <ul>
                                                <div class="row">
                                                    <lable class="col-4 search_big_option">전화번호
                                                    </lable>
                                                    <lable class="col-7 search_big_option_re ">02-1234-1234
                                                    </lable>
                                                </div>
                                                <div class="row">
                                                    <lable class="col-4 search_big_option">주소
                                                    </lable>
                                                    <lable class="col-7 search_big_option_re ">서울 송파구 백제고분로 358
                                                    </lable>
                                                </div>
                                                <div class="row">
                                                    <lable class="col-4 search_big_option">영업시간
                                                    </lable>
                                                    <lable class="col-7 search_big_option_re ">07:00 - 21:00
                                                    </lable>
                                                </div>
                                                <div class="row">
                                                    <lable class="col-4 search_big_option">정기휴무
                                                    </lable>
                                                    <lable class="col-7 search_big_option_re ">토요일/공휴일
                                                    </lable>
                                                </div>
                                                <div class="row">
                                                    <lable class="col-4 search_big_option">임시휴무
                                                    </lable>
                                                    <lable class="col-7 search_big_option_re ">5월5일
                                                    </lable>
                                                </div>
                                            </ul>
                                        </div>
                                    </div>

                                </a>     
                                -->
                                
                                <div class="pagination">
	<a href="#" class="active" id="pageNum" data-num="1" onclick="paging()">1</a>
	<a href="#" id="pageNum" data-num="2" onclick="paging()">2</a>
	<a href="#" id="pageNum" data-num="3" onclick="paging()">3</a>
	<a href="#" id="pageNum" data-num="4" onclick="paging()">4</a>
	<a href="#" id="pageNum" data-num="5" onclick="paging()">5</a>
	<a href="#" id="pageNum" data-num="6" onclick="paging()">6</a>
	<a href="#" id="pageNum" data-num="7" onclick="paging()">7</a>
	<a href="#" id="pageNum" data-num="8" onclick="paging()">8</a>
	<a href="#" id="pageNum" data-num="9" onclick="paging()">9</a>
	<a href="#" id="pageNum" data-num="10" onclick="paging()">10</a>
	<a href="#">&gt;</a>
	<a href="#">&raquo;</a>
</div>                  
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
                            <div class="row" style="float: none; margin:20px auto;">

                                <!-- 매장 한개 -->
                                <c:forEach var="storeList" items="${storeList}" varStatus="vs">
                                <a class="col-11 search_result_list_col" href="jw3.html">
                                        <div class="row">
                                            <div class="col-2 search_list_img_bg">
                                                <img src="${fn:toLowerCase(storeList.si_image) }" alt="cafe"
                                                    class="search_big_img">
                                            </div>

                                            <div class="col-2" style="float: left;padding:2.5vh 0;">
                                                <strong class="text-primary">${storeList.si_loc}</strong>
                                                <h3>${storeList.si_name}</h3>
                                            </div>
                                            <div class="col-5" style="padding-top:2.5vh;">
                                                <div class="row">
                                                    <lable class="col-4 search_list_option">전화번호
                                                    </lable>
                                                    <lable class="col-7 search_list_option_re ">${storeList.si_tel}
                                                    </lable>
                                                </div>
                                                <div class="row">
                                                    <lable class="col-4 search_list_option">주소
                                                    </lable>
                                                    <lable class="col-7 search_list_option_re ">${storeList.si_address}
                                                    </lable>
                                                </div>
                                                <div class="row">
                                                    <lable class="col-4 search_list_option">영업시간
                                                    </lable>
                                                    <lable class="col-7 search_list_option_re ">${storeList.si_open}~${storeList.si_close}
                                                    </lable>
                                                </div>
                                                <div class="row">
                                                    <lable class="col-4 search_list_option">정기휴무
                                                    </lable>
                                                    <lable class="col-7 search_list_option_re ">${storeList.si_holiday_fix}
                                                    </lable>
                                                </div>
                                               
                                            </div>
                                        </div>
                                    </a>
                                    </c:forEach>
                                    <!-- 매장한개 끝 -->
                                
                                    <a class="col-11 search_result_list_col" href="jw3.html">
                                        <div class="row">
                                            <div class="col-2 search_list_img_bg">
                                                <img src="resources/assets/images/jaewoo/starbucks_img.jpg" alt="cafe"
                                                    class="search_big_img">
                                            </div>

                                            <div class="col-2" style="float: left;padding:2.5vh 0;">
                                                <strong class="text-primary">종로3가점</strong>
                                                <h3>스타벅스</h3>
                                            </div>
                                            <div class="col-5" style="padding-top:2.5vh;">
                                                <div class="row">
                                                    <lable class="col-4 search_list_option">전화번호
                                                    </lable>
                                                    <lable class="col-7 search_list_option_re ">02-1234-1234
                                                    </lable>
                                                </div>
                                                <div class="row">
                                                    <lable class="col-4 search_list_option">주소
                                                    </lable>
                                                    <lable class="col-7 search_list_option_re ">서울 송파구 백제고분로 358
                                                    </lable>
                                                </div>
                                                <div class="row">
                                                    <lable class="col-4 search_list_option">영업시간
                                                    </lable>
                                                    <lable class="col-7 search_list_option_re ">07:00 - 21:00
                                                    </lable>
                                                </div>
                                                <div class="row">
                                                    <lable class="col-4 search_list_option">정기휴무
                                                    </lable>
                                                    <lable class="col-7 search_list_option_re ">일요일/공휴일
                                                    </lable>
                                                </div>
                                               
                                            </div>
                                        </div>
                                    </a>
                                
                                <!-- 매장 한개끝 -->

                                <div style="text-align: center;">

                                    <div style="display:inline-block ">
                                        <div class="product__pagination" style="margin:auto;">
                                            <a href="">1</a>
                                            <a href="#">2</a>
                                            <a href="#">3</a>
                                            <a href="#">
                                                <i class="fa fa-long-arrow-right"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </section>
                    <!-- Blog Section End -->
                </div>
            </div>
            <!-- 조건검색-->

        </div>
    </div>

    <!-- footer import -->
    <%@ include file="/WEB-INF/views/user/inc/footer.jsp" %>
    <!-- Js Plugins -->
    <!-- 이 화면을 위한 js -->

</body>

</html>