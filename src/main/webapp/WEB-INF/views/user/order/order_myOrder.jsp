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
                <h3 style="font-size: 40px; margin-bottom: 10px;" >결제하기</h3>
            </label>
        </div>
            
            
            <div class="row" style="background-color: rgba(255, 228, 196, 0.788); padding: 15px; border-radius: 10px;" >
                <h6 style="font-size: 20px;">메가커피 종로3가역점</h6>
                <h6 style="font-size: 13px; color: rgba(0, 0, 0, 0.575);">서울 종로구 돈화문로 27 1층</h6>


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
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
            <div class="col-lg-12">
                    <div class="shoping__continue">
                        <div class="shoping__discount"  >
                            <h5 style="margin: 5px;">요청 사항</h5>
                            <form action="#">
                                <input type="text" placeholder="  예) 아메리카노 싱겁게 부탁드려요" style="width:85%;  text-align: left; background-color: rgba(148, 143, 143, 0.205); border-radius: 5px; border:none;">
                              
                                
                            </form>
                        </div>
                    </div>
                </div>
                </div>
            <div class="row">

                <div class="col-lg-6" style="margin-bottom: 0;">
                    <div class="shoping__continue" >
                        <div class="shoping__discount">
                            <h5 style="margin: 10px;">쿠폰 사용</h5>
                            <form action="#">
                                <input type="text" placeholder="쿠폰번호를 입력해주세요.">
                                <!-- <button type="submit" class="site-btn">쿠폰검색</button> -->
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">쿠폰검색</button>
                                
                                    <!-- Modal -->
                                    <div class="modal fade coupon_modal" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" style="min-width: 800px;" >
                                        <div class="modal-content" >
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="staticBackdropLabel" style="text-align: center;">사용 가능한 쿠폰</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><i class="fa fa-close"></i></button>
                                            </div>
                                            <div class="modal-body">
                                                <!-- <div>
                                                    쿠폰이름
                                                    쿠폰 발행일 ~ 쿠폰마감일
                                                    할인율
                                                    할인금액
                                                    사용 가능여부

                                                </div> -->
                                                    <!-- 사용가능한 쿠폰 -->
                                                    
                                                    <div class="coupon-check">
                                                        
                                                        <div class="coupon-box" >
                                                            <div class="row" >
                                                              <div class="col-md-3" style="margin-top: 80px;">
                                                            <input class="coupon-check-input" type="checkbox" value="" id="defaultCheck1">
                                                            </div> 
                                                            <div class="col-md-9">
                                                            <label class="coupon-check-label" for="defaultCheck1" >
                                                                <div class="coupon_card mb-3" style="max-width: 540px;">
                                                                    <div class="row g-0">
                                                                    <div class="col-md-4 col-sm-12">
                                                                        <img src="resources/assets/images/categories/cat-1.jpg" class="img-fluid rounded-start" alt="...">
                                                                    </div>
                                                                    <div class="col-md-8">
                                                                        <div class="coupon_card-body">
                                                                        <a class="coupon_card-title">[친구초대] 공짜리카노쿠폰</a>
                                                                        <p class="coupon_card-text1">1500원 할인</p>
                                                                        <p class="coupon_card-text2"><small class="text-muted">~2022.05.08 까지</small></p>
                                                                        </div>
                                                                    </div>
                                                                    </div>
                                                                </div>
                                                            </label>
                                                        </div>
                                                            </div>
                                                        </div>    
                                                    </div>
                                                     <!-- 사용가능한 쿠폰 -->
                                                    
                                                     <div class="coupon-check">
                                                        
                                                        <div class="coupon-box" >
                                                            <div class="row" >
                                                              <div class="col-md-3" style="margin-top: 80px;">
                                                            <input class="coupon-check-input" type="checkbox" value="" id="defaultCheck2">
                                                            </div> 
                                                            <div class="col-md-9">
                                                            <label class="coupon-check-label" for="defaultCheck2" >
                                                                <div class="coupon_card mb-3" style="max-width: 540px;">
                                                                    <div class="row g-0">
                                                                    <div class="col-md-4 col-sm-12">
                                                                        <img src="resources/assets/images/categories/cat-2.jpg" class="img-fluid rounded-start" alt="...">                                                                    </div>
                                                                    <div class="col-md-8">
                                                                        <div class="coupon_card-body">
                                                                        <a class="coupon_card-title">[첫주문할인] 100원 쿠폰</a>
                                                                        <p class="coupon_card-text1">아메리카노 100원</p>
                                                                        <p class="coupon_card-text2"><small class="text-muted">~2022.05.08 까지</small></p>
                                                                        </div>
                                                                    </div>
                                                                    </div>
                                                                </div>
                                                            </label>
                                                        </div>
                                                            </div>
                                                        </div>    
                                                    </div>

                                                   <!-- 사용가능한 쿠폰 -->
                                                    
                                                   <div class="coupon-check">
                                                        
                                                    <div class="coupon-box" >
                                                        <div class="row" >
                                                          <div class="col-md-3" style="margin-top: 80px;">
                                                        <input class="coupon-check-input" type="checkbox" value="" id="defaultCheck3" disabled>
                                                            </div> 
                                                        <div class="col-md-9">
                                                        <label class="coupon-check-label" for="defaultCheck3" >
                                                            <div class="coupon_card mb-3" style="max-width: 540px;">
                                                                <div class="row g-0">
                                                                    <div class="col-md-4 col-sm-12">
                                                                        <img src="resources/assets/images/categories/cat-3.jpg" class="img-fluid rounded-start" alt="...">                                                                </div>
                                                                    <div class="col-md-8">
                                                                        <div class="coupon_card-body">
                                                                        <a class="coupon_card-title">[민초단할인] 30%할인쿠폰</a>
                                                                        <p class="coupon_card-text1">제주말차프라푸치노 30% 할인</p>
                                                                        <p class="coupon_card-text2"><small class="text-muted">~2022.05.08 까지</small></p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </label>
                                                    </div>
                                                        </div>
                                                    </div>    
                                                </div>


                                            </div>
                                            
                                            <div class="modal-footer">
                                                <div class="col text-center">
                                            <!-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button> -->
                                            <button type="button" class="btn btn-primary btn-lg btn-block">쿠폰선택</button>
                                            <!-- <button type="button" class="btn btn-primary btn-lg btn-block">Block level button</button> -->

                                                </div>
                                            </div>
                                        
                                        </div>
                                        </div>
                                    </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="shoping__continue">
                        <div class="shoping__discount" style="margin-top: 35px;">
                            <h5 style="margin-bottom: 5px;">포인트 사용</h5>
                            <label style="color: rgba(255, 64, 64, 0.781);">사용가능 금액 : 1000p</label>
                            <form action="#">
                               
                                <input type="text" placeholder="금액을 입력해주세요.">
                                <!-- <button type="submit" class="site-btn">쿠폰검색</button> -->
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#PintUse" >사용하기</button>
                                
                                    <!-- Modal -->
                                    <div class="modal" id="PintUse" tabindex="-1">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <h5 class="modal-title">사용 가능한 포인트</h5>
									        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									      </div>
									      <div class="modal-body">
									        <p>1000 포인트를 사용합니다.</p>
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">확인</button>
									      </div>
									    </div>
									  </div>
									</div>


                                           
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="shoping__checkout">
                        <h5>결제수단</h5>
                        <ul>
                            <li>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                            <label class="form-check-label" for="flexRadioDefault1">
                             카카오페이
                            </label>
                          </div>
                        </li>
                        <li>
                          <div class="form-check">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                            <label class="form-check-label" for="flexRadioDefault2">
                             네이버페이
                            </label>
                          </div>
                        </li>
                        <li>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                              <label class="form-check-label" for="flexRadioDefault2">
                                신용카드
                              </label>
                            </div>
                          </li>
                          <li>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                              <label class="form-check-label" for="flexRadioDefault2">
                                휴대폰결제
                              </label>
                            </div>
                          </li>
                        </ul>
                       
                        
                    </div>
                </div>

                <div class="col-lg-12">
                    <div class="shoping__checkout">
                        <h5>합계금액</h5>
                        <ul>
                            <li>주문하신금액 <span>6,000</span></li>
                            <li>합계금액 <span>6,000</span></li>
                        </ul>
                        <a href="#" class="primary-btn" style="height: 45px;">결제하기</a>
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