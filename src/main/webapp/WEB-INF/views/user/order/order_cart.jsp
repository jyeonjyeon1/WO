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
    <link href="resources/assets/images/logo/logo_only.svg" rel="icon" />


    <!-- ========================= CSS here ========================= -->
    <!-- 아이콘은 font-awesome으로 대체 -->
    <!-- <link rel="stylesheet" href="css/elegant-icons.css" type="text/css"> -->
    <!-- ========================= JS here ========================= -->
    <script src="resources/assets/js/jquery-3.6.0.js"></script>

    <style>
        .shoping__cart__table table tbody tr td.shoping__cart__item img {
           align-items: center;
           margin-bottom: 15px;
        }
        .shoping__cart__table table tbody tr td.shoping__cart__item label {
            font-size: 20px;
            
        }
        .shoping__cart__table table tbody tr td.shoping__cart__item h3 {
            font-size: 15px;
            color: rgba(0, 0, 0, 0.575);
        }
        .shoping__cart__table table tbody tr td.shoping__cart__item button h5:hover {
            color: rgb(240, 57, 57);
                      
        }


    </style>
    

</head>

<body>
    <!-- header import -->
    <!-- <%@ include file="/WEB-INF/views/user/inc/header.jsp" %> -->
      <div id="headers"></div>
    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad" style="padding:0;">
        <div class="container" style="padding:20px; background-color: white;">
            
            <div class="row" style="text-align: center;">
            <label>
                <h3 style="font-size: 40px; margin-bottom: 10px;" >My Cart</h3>
            </label>
        </div>
            <div class="row" >
                <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="order_alert" style="background-color: rgba(167, 161, 161, 0.425); border-radius: 10px; padding: 15px; margin: 0 40px 0 50px;" >
                <h6>주문하는 매장 위치를 확인해 주세요!</h6>
                </div>
                </div>
            </div>
            
            <div class="row" >
                <div class="col-lg-12 col-md-12 col-sm-12" style="text-align: center;">
                
                <!-- * 카카오맵 - 지도퍼가기 -->
                <!-- 1. 지도 노드 -->
                    
                    <div id="daumRoughmapContainer1649752833849"
                        class="root_daum_roughmap root_daum_roughmap_landing rounded-lg" style="width: 90%; margin: 10px 30px 10px 50px;">
                        <div class="order_store" style="text-align: left; margin: 10px;">
                            <h6 style="font-size: 20px;">메가커피 종로3가역점</h6>
                            <h6 style="font-size: 13px; color: rgba(0, 0, 0, 0.575);">서울 종로구 돈화문로 27 1층</h6>
                             </div>
                    </div>
                    
                        

                <!--   2. 설치 스크립트   * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.-->
                <script charset="UTF-8" class="daum_roughmap_loader_script"
                    src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

                <!-- 3. 실행 스크립트 -->
                <script charset="UTF-8">
                    new daum.roughmap.Lander({
                        "timestamp": "1649752833849",
                        "key": "29tay",
                        "mapWidth": "90%",
                        "mapHeight": "100%"
                    }).render();
                </script>
                
            </div>



            </div>
            
            <div class="row">
                
                <div class="col-lg-12">

                    <div class="shoping__cart__table" style="margin-top: 30px;">
                        <table>
                            <thead>
                                <tr>
                                    <th class="shoping__product" style="font-size: 20px;">상품 주문정보</th>
                                    
                                    <th>가격</th>
                                    <th>수량</th>
                                    <th>합계</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="shoping__cart__item">
                                        <img class="d-lg-inline-block d-md-inline-block d-none"
                                            src="resources/assets/images/jaewoo/latte.jpg" alt="">
                                        <label>아이스아메리카노
                                        <h3>HOT ML / 1샷추가 / 헤이즐럿시럽추가</h3>
                                    </label>
                                    </td>
                                    
                                    <td class="shoping__cart__price">
                                        2,000
                                    </td>
                                    <td class="shoping__cart__quantity">
                                        <!-- <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="1">
                                            </div>
                                        </div> -->
                                        <input class="qtybtn__" type='button' onclick='count("minus")' value='-' />
                                        <div class="qtyqty">
                                            <div id='result' style="display: inline;">1</div>
                                        </div>
                                        <input class="qtybtn__" type='button' onclick='count("plus")' value='+' />
                                    </td>
                                    <td class="shoping__cart__total">
                                        2,000
                                    </td>
                                    <td class="shoping__cart__item__close">
                                        <a href="" style="color: gray;"><i class="fa fa-close"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="shoping__cart__item">
                                        <img src="resources/assets/images/jaewoo/latte.jpg" alt="">
                                        <h5>라떼는말야</h5>
                                    </td>
                                    
                                    <td class="shoping__cart__price">
                                        2,000
                                    </td>
                                    <td class="shoping__cart__quantity">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="1">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="shoping__cart__total">
                                        2,000
                                    </td>
                                    <td class="shoping__cart__item__close">
                                        <span class="icon_close"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="shoping__cart__item">
                                        <img src="resources/assets/images/jaewoo/latte.jpg" alt="">
                                        <h5>이렇게하면바나나</h5>
                                    </td>
                                    
                                    <td class="shoping__cart__price">
                                        2,000
                                    </td>
                                    <td class="shoping__cart__quantity">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="1">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="shoping__cart__total">
                                        2,000
                                    </td>
                                    <td class="shoping__cart__item__close">
                                        <span class="icon_close"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4" class="shoping__cart__item" style="text-align: center; ">
                                        <button style="border:none; background-color: transparent; height: 50px;">
                                        <h5> <i class="lni lni-circle-plus"></i> 메뉴 더 추가하러가기</h5>
                                        </button>
                                    </td>
                                    
                                    
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">

               
                
                
                <div class="col-lg-12">
                    <div class="shoping__checkout">
                        <h5>합계금액</h5>
                        <ul>
                            <li>주문하신금액 <span>6,000</span></li>
                            <li>합계금액 <span>6,000</span></li>
                        </ul>
                        <a href="myOrder.user" class="primary-btn" style="height: 45PX;">결제하기</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shoping Cart Section End -->



    <!-- footer import -->
    <!-- <%@ include file="/WEB-INF/views/user/inc/footer.jsp" %> -->
      <div id="footers"></div>
    <!-- Js Plugins -->
    <script src="resources/assets/js/jquery.nice-select.min.js"></script>
    <script src="resources/assets/js/jquery-ui.min.js"></script>
    <script src="resources/assets/js/jquery.slicknav.js"></script>
    <script src="resources/assets/js/owl.carousel.min.js"></script>
    <script src="resources/assets/js/main_1.js"></script>
</body>

</html>