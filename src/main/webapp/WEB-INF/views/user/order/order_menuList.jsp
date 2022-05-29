<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="kor">

    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="x-ua-compatible" content="ie=edge"/>
        <title>Walking Order</title>
        <meta name="description" content=""/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link href="resources/assets/images/logo/logo_only.svg" rel="icon"/>

        <!-- ========================= CSS here ========================= -->
        <link rel="stylesheet" href="resources/assets/css/font-awesome.min.css" type="text/css">
        <!-- ========================= JS here ========================= -->
        <script src="resources/assets/js/jquery-3.6.0.js"></script>
        
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

        <!-- 매장소개 -->
        <section style="margin: 40px;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-5 col-sm-12 col-12">
                        <div class="kio_img_bg">
                            <img src="resources/assets/images/cafe/no-image-cafe.png" alt="cafe" class="kio_img">
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-12" style="margin-left:20px">
                        <div class="product__details__text">
                            <h3>스타벅스 종로3가점</h3>
                            <div class="product__details__rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-o"></i>
                                <span>(18 reviews)</span>
                            </div>
                            <p style="margin-bottom: 20px">Mauris blandit aliquet elit, eget tincidunt nibh
                                pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet
                                dui. Sed porttitor lectus nibh.</p>
                            <button type="button" class="btn btn-warning btn-sm">리뷰 바로가기</button>&nbsp&nbsp&nbsp&nbsp&nbsp
                            <!-- 간격띄우기 -->
                            <button type="button" class="btn btn-warning btn-sm">찾아오시는 길</button>
                            <ul style="margin: 30px 0 0; padding: 30px 0 0">
                                <li>
                                    <b>전화번호</b>
                                    <span>1522-3232</span></li>
                                <li>
                                    <b>주소</b>
                                    <span>서울 송파구 백제고분로 358
                                    </span>
                                </li>
                                <li>
                                    <b>영업시간</b>
                                    <span>07:00 - 21:00</span></li>
                                <li>
                                    <b>정기휴무</b>
                                    <span>일요일/공휴일</span></li>
                                <li>
                                    <b>임시휴무</b>
                                    <span>5월5일</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        

        <!-- 키오스크 -->
        <div class="container" style="padding-bottom: 30px; background-color: white;">
            <div class="col-lg-12">
            <c:forEach var="menuTitle" items="${menuTitle }" varStatus="titleVs">
                <%-- <c:if test="${titleVs.index eq 0 }">
                	<input class="tabinput" id="tab${titleVs.index +1 }" type="radio" name="tabs" checked="checked">
                </c:if>
                <c:if test="${titleVs.index ne 0 }"> --%>
                	<input class="tabinput" id="tab${titleVs.count }" type="radio" name="tabs">
                <%-- </c:if> --%>
            	<label class="tablabel_k" for="tab${titleVs.count }">${menuTitle.mg_name }</label>

	            <%-- <c:forEach var="menuTitle" items="${menuTitle }" varStatus="titleVs"> --%>
	                <div class="tapsection" id="content${titleVs.count }" style="border-top: 1px solid #ddd;">
	                    <div class="product__details__tab__desc">
	                        <div class="row">
	                          <c:set var="mgcode" value="${titleVs.count + 10 }" />
	                            <c:forEach var="menuList" items="${menuList }" varStatus="vs">
	                              
	                              <c:if test="${menuList.mg_code eq mgcode }">
		                            <div class="col-lg-3 col-md-4 col-sm-4">
		                                <div class="product__item">
		                                    <div class="product__item__pic set-bg"><img src="${menuList.m_img_file }" style="width:100%; height:100%;">
		                                        <ul class="product__item__pic__hover">
		                                            <div class="button">
		                                                <a onclick="cartcart${vs.index }${titleVs.index }()" class="btn">
		                                                    <i class="lni lni-cart"></i>
		                                                    주문하기</a>
		                                            </div>
		                                        </ul>
		                                    </div>
		                                    <div class="product__item__text">
		                                        <h6>${menuList.m_name } </h6>
		                                        <h5>${menuList.opb_price }원</h5>
		                                    </div>
		                                </div>
		                            </div>
		                          </c:if>
		                          
		                          <script>
		                            function cartcart${vs.index }${titleVs.index }() {
		                            	alert(${vs.index } + "/"+ ${titleVs.index } );
		                                $('#menu_updateOption1').modal();
		                                
		                             }
		                            </script>
		                          
	                            </c:forEach>
	 
	                           
	                          
	                        </div>
	                    </div>
	                </div>
	              <%-- </c:forEach> --%>
              </c:forEach>
                                         <!-------------메뉴편집_메뉴옵션수정 Modal start-------------->
		<div class="modal fade" id="menu_updateOption1" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<!-- header -->
						<h4 class="modal-title">메뉴옵션수정</h4>
						<h3 style="color: black; font-weight: bolder; text-align: center;">ffffff</h3>
						<button type="button" class="close"
							data-dismiss="modal"
							style="font-size: 20px; color: black;">취소</button>
					</div>
					<div class="modal-body">
						<!-- body -->
						
							
				</div>
			</div>
		</div>
		</div>

		<!-------------메뉴편집_메뉴옵션수정 Modal end--------------->
                        <!-- <div style="text-align: center; margin-bottom: 50px;">

                            <div style="display:inline-block ">
                                <div class="product__pagination" style="margin:auto;">
                                    <a href="#">1</a>
                                    <a href="#">2</a>
                                    <a href="#">3</a>
                                    <a href="#">
                                        <i class="fa fa-long-arrow-right"></i>
                                    </a>
                                </div>
                            </div>
                        </div> -->
            </div>
          </div>

        <section >
            <div class="container" style="padding: 40px; background-color: white;">
                <div class="product__details__text">
                    <h3>우리매장 Reviews</h3>
                    <div class="product__details__rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-o"></i>
                        <span>(3 reviews)</span>
                    </div>
                    

                    <!-- 리뷰한개 -->
                    <div style="text-align: center;">
                        <div
                            class="col-lg-11 kio_review">
                            <div class="kio_review_img_bg">
                                <img src="resources/assets/images/jaewoo/starbucks_img.jpg" alt="cafe"
                                                    class="search_big_img">

                            </div>
                            <div class="kio_review_center">
                                <h5 >김재우</h5>
                                <h6 >아이스아메리카노</h6>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-o"></i>
                                <div>2020.04.08</div>
                            </div>
                            <div class="kio_review_content">
                                <h6 >아아존맛탱!!!</h6>
                                <p style="margin-bottom: 20px; margin-top: 5px;">Mauris blandit aliquet elit,
                                    eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula
                                    elementum sed sit amet dui. Sed porttitor lectus nibh.</p>
                            </div>
                        </div>
                    </div>
                    <!-- 리뷰한개 -->
                    <div style="text-align: center;">
                        <div
                            class="col-lg-11"
                            style="float: none;   display:inline-block; text-align:
             center; background-color:white; padding: 0px;
             border-radius: 10px; padding: auto; margin:auto; margin-bottom: 10px; margin-top: 10px; display:inline-block;  border: 1px solid gray; box-shadow: 0 2px 2px gray; ">

                            <div style="width: 30%; height:150px; float: left; ">
                                <img
                                    src="resources/assets/images/jaewoo/starbucks_img.jpg"
                                    alt="cafe"
                                    style="width:130px;height: 130px; margin: 10px 0 0 10px; border-radius: 10px;  ">
                                <img
                                    src="resources/assets/images/jaewoo/latte.jpg"
                                    alt="cafe"
                                    style="width:130px;height: 130px; margin: 10px 0 0 10px; border-radius: 10px;  ">

                            </div>
                            <div
                                style="width: 15%; height:100px; float: left; margin-left: 20px; margin-top: 20px; text-align: left">
                                <h5 >김재우</h5>
                                <h6 >아이스아메리카노</h6>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-o"></i>
                                <div>2020.04.08</div>
                            </div>
                            <div
                                style="width: 40%; height:100px; float: left; text-align: left; margin-top: 18px;">
                                <h6 >아아존맛탱!!!</h6>
                                <p style="margin-bottom: 20px; margin-top: 5px;">Mauris blandit aliquet elit,
                                    eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula
                                    elementum sed sit amet dui. Sed porttitor lectus nibh.</p>
                            </div>
                        </div>
                        <!-- 리뷰한개 -->
                        <div style="text-align: center;">
                            <div
                                class="col-lg-11"
                                style="float: none;   display:inline-block; text-align:
             center; background-color:white; padding: 0px;
             border-radius: 10px; padding: auto; margin:auto; margin-bottom: 10px; margin-top: 10px; display:inline-block;  border: 1px solid gray; box-shadow: 0 2px 2px gray; ">

                                <div style="width: 30%; height:150px; float: left; ">
                                    <img
                                        src="resources/assets/images/jaewoo/starbucks_img.jpg"
                                        alt="cafe"
                                        style="width:130px;height: 130px; margin: 10px 0 0 10px; border-radius: 10px;  ">
                                    <img
                                        src="resources/assets/images/jaewoo/latte.jpg"
                                        alt="cafe"
                                        style="width:130px;height: 130px; margin: 10px 0 0 10px; border-radius: 10px;  ">

                                </div>
                                <div
                                    style="width: 15%; height:100px; float: left; margin-left: 20px; margin-top: 20px; text-align: left">
                                    <h5 >김재우</h5>
                                    <h6 >아이스아메리카노</h6>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                                    <div>2020.04.08</div>
                                </div>
                                <div
                                    style="width: 40%; height:100px; float: left; text-align: left; margin-top: 18px;">
                                    <h6 >아아존맛탱!!!</h6>
                                    <p style="margin-bottom: 20px; margin-top: 5px;">Mauris blandit aliquet elit,
                                        eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula
                                        elementum sed sit amet dui. Sed porttitor lectus nibh.</p>
                                </div>
                            </div>
                        </div>
                        <div style="text-align: center; margin-bottom: 50px;">

                            <div style="display:inline-block ">
                                <div class="product__pagination" style="margin:auto;">
                                    <a href="#">1</a>
                                    <a href="#">2</a>
                                    <a href="#">3</a>
                                    <a href="#">
                                        <i class="fa fa-long-arrow-right"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- 리뷰끝 -->
            <!-- 찾아오는길 -->

            <section >
                <div class="container" style="padding: 00px 0px 100px 20px; background-color: white;">
                    <div class="row col-lg-12">
                        <div class="product__details__text ">
                            <h3>우리매장 찾아오는길</h3>

                            <!-- * 카카오맵 - 지도퍼가기 -->
                            <!-- 1. 지도 노드 -->
                            <div style="text-align: center; margin-bottom: 30px;">
                                <div
                                    id="daumRoughmapContainer1649530534824"
                                    class="root_daum_roughmap root_daum_roughmap_landing" style="margin: 0;width: 100%;"
                                    ></div>

                                <!-- 2. 설치 스크립트 * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다. -->
                                <script
                                    charset="UTF-8"
                                    class="daum_roughmap_loader_script"
                                    src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

                                <!-- 3. 실행 스크립트 -->
                                <script charset="UTF-8">
                                    new daum
                                        .roughmap
                                        .Lander({"timestamp": "1649530534824", "key": "29s83", "mapWidth": "100%", "mapHeight": "360"})
                                        .render();
                                </script>
                            </div>
                        </div>
                    </div>
                    <p style="margin-bottom: 20px; margin-top: 5px;">Mauris blandit aliquet elit,
                        eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula
                        elementum sed sit amet dui. Sed porttitor lectus nibh.</p>
                </div>
            </section>
            <!-- 찾아오는길끝 -->
            <!-- footer import -->
            <%@ include file="/WEB-INF/views/user/inc/footer.jsp" %>
            <!-- Js Plugins -->
        </body>

    </html>