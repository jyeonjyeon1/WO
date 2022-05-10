<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>워킹오더 매장관리자 페이지</title>

  <!-- Favicons -->
  <link href="resources/assets/images/admin/logo/logo_only.svg" rel="icon">
  <link href="resources/assets/images/admin/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="resources/assets/js/admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="resources/assets/js/admin/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="resources/assets/css/admin/style.css" rel="stylesheet">
  <link href="resources/assets/css/admin/style-responsive.css" rel="stylesheet">
  <style>
    /*기본정보변경 전체 css 추가*/
.wrapper {
    cursor: default;
    font-size: 14px;
    line-height: 21px;
    padding: 14px;
}
.box{
    width: 100%;
    float: left;
    margin-right: 25px;
}
.box li {
  color: black;
  font-size: 20px;
  font-weight: bolder;
  margin-top: 25px;
}

.box div {
  color: rgba(0, 0, 0, 0.664);
  font-size: 18px;
  margin-top: 5px;
}

.title {
    display: block;
    
    padding: 14px 0 15px 0;
    font-size: 25px;
    font-weight: bolder;
    margin-bottom: 10px;
    border-bottom: 1px solid;
}

ul {
    color: #666;
    list-style:square;
    padding: 0;
    margin-left: 20px;
    font-size: 12px;
}

.service_info:hover {
  cursor: pointer;
  color: #f56c4d;
}

.change_info {
  margin-left: 30px; 
  font-size: 15px; 
  border: 1px solid rgba(0, 0, 0, 0.562) ;
  padding: 5px;
  color : rgba(0, 0, 0, 0.562);
  border-radius: 5px;
}

.change_info:hover {
  background-color: #0a5c96;
  color: aliceblue;
}


.orange { color: #f56c4d; }

.blue{ color: #0a5c96; }

.green{ color: #89c527; }

.purple { color: #988CC3; }

.gold { color: #D8C86E; }

/*모달*/
.modalA{ 

  position:absolute; 
  width:100%; 
  height:100%; 
  background: rgba(0, 0, 0, 0.705); 
  top:0; 
  left:0; 
  display:none;
}


.modalA_content{
  width:400px; height:200px;
  background:rgba(255, 255, 255, 0.925); 
  border: 1px  solid rgba(0, 0, 0, 0.678);
  border-radius:5px;
  position:relative; top:50%; left:50%;
  margin-top:-200px; 
  margin-left:-200px;
  text-align:center;
  box-sizing:border-box; 
  padding:24px 0;
  line-height:23px; 

}

.modalB {
  position:absolute; 
  width:100%; 
  height:100%; 
  background: rgba(0, 0, 0, 0.705); 
  top:0; 
  left:0; 
  display:none;
}

.modalB_content{
  width:400px; height:300px;
  background:rgba(255, 255, 255, 0.925); 
  border: 1px  solid rgba(0, 0, 0, 0.678);
  border-radius:5px;
  position:relative; top:50%; left:50%;
  margin-top:-200px; 
  margin-left:-200px;
  text-align:center;
  box-sizing:border-box; 
  padding:5px 0;
  line-height:20px; 

}

.modalC {
  position:absolute; 
  width:100%; 
  height:100%; 
  background: rgba(0, 0, 0, 0.705); 
  top:0; 
  left:0; 
  display:none;
}

.modalC_content{
  width:400px; height:500px;
  background:rgba(255, 255, 255, 0.925); 
  border: 1px  solid rgba(0, 0, 0, 0.678);
  border-radius:5px;
  position:relative; top:50%; left:50%;
  margin-top:-200px; 
  margin-left:-200px;
  text-align:center;
  box-sizing:border-box; 
  padding:5px 0;
  line-height:20px; 

}

.UpdateBtn{
  margin-top: 20px;
  font-weight: bolder;
  font-size: 20px; 
  border: 1px solid rgba(0, 0, 0, 0.562) ;
  padding: 7px;
  color : rgba(0, 0, 0, 0.562);
  border-radius: 5px;
}

.UpdateBtn:hover {
  background-color: #f56c4d;
  border-color: #f56c4d;
  color: aliceblue;
}

.closeBtn {
  margin-top: 20px;
  font-weight: bolder;
  font-size: 20px; 
  border: 1px solid rgba(0, 0, 0, 0.562) ;
  padding: 7px;
  color : rgba(0, 0, 0, 0.562);
  border-radius: 5px;
}

.closeBtn:hover {
  background-color: #f56c4d;
  border-color: #f56c4d;
  color: aliceblue;
}

/*toggle버튼 css*/

#Toggle1{
  font-size:14px;
  color: #666;
}
#Toggle2{
  font-size:14px;
  color: #666;
}

.switch-button { 
  position: relative; 
  display: inline-block; 
  width: 55px; height: 30px; } 
  
  .switch-button input { opacity: 0; width: 0; height: 0; } 
  
  .onoff-switch { 
    position: absolute; cursor: pointer; 
    top: 0; left: 0; right: 0; bottom: 0; border-radius:20px; 
    background-color: #ccc; box-shadow: inset 1px 5px 1px #999; 
    -webkit-transition: .4s; transition: .4s; } 
    
    .onoff-switch:before { position: absolute; content: ""; 
    height: 22px; width: 22px; left: 4px; bottom: 4px; background-color: #fff; 
    -webkit-transition: .5s; transition: .4s; border-radius:20px; } 
    
    .switch-button input:checked + .onoff-switch { 
      background-color: #F2D522; box-shadow: inset 1px 5px 1px #E3AE56; } 
      
      .switch-button input:checked + .onoff-switch:before { 
        -webkit-transform: translateX(26px); -ms-transform: translateX(26px); transform: translateX(26px); 
      }
  /*라디오버튼 css*/


.radio {
  margin: 0.5rem;
}
.radio input[type=radio] {
  position: absolute;
  opacity: 0;
}
.radio input[type=radio] + .radio-label:before {
  content: "";
  background: #f4f4f4;
  border-radius: 100%;
  border: 1px solid #b4b4b4;
  display: inline-block;
  width: 1.4em;
  height: 1.4em;
  position: relative;
  top: -0.2em;
  margin-right: 1em;
  vertical-align: top;
  cursor: pointer;
  text-align: center;
  transition: all 250ms ease;
}
.radio input[type=radio]:checked + .radio-label:before {
  background-color: #ee8c31;
  box-shadow: inset 0 0 0 4px #f4f4f4;
}
.radio input[type=radio]:focus + .radio-label:before {
  outline: none;
  border-color: #ee8c31;
}
.radio input[type=radio]:disabled + .radio-label:before {
  box-shadow: inset 0 0 0 4px #f4f4f4;
  border-color: #b4b4b4;
  background: #b4b4b4;
}
.radio input[type=radio] + .radio-label:empty:before {
  margin-right: 0;
}


  </style>
    
  <script>

//modal js
function modal_a() {
  $(".modalA").fadeIn();
   
}

function close_modalA() {
  $(".modalA").fadeOut();
}
function modal_b() {
  $(".modalB").fadeIn();
   
}

function close_modalB() {
  $(".modalB").fadeOut();
}
function modal_c() {
  $(".modalC").fadeIn();
   
}

function close_modalC() {
  $(".modalC").fadeOut();
}

//toggle버튼 기능구현

function toggle_park() {
  $("#Toggle1").toggle();


  if(document.getElementById('Toggle1').style.display === 'none') {
      
      document.getElementById('park_disable').textContent = '설정안함';
    } else {
           
      document.getElementById('park_disable').textContent = '설정함';
    }

}

function toggle_facility() {
  $("#Toggle2").toggle();


  if(document.getElementById('Toggle2').style.display === 'none') {
      
      document.getElementById('facility_disable').textContent = '설정안함';
    } else {
           
      document.getElementById('facility_disable').textContent = '설정함';
    }

}



  </script>


</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="openup tooltips" data-placement="right" data-original-title="메뉴 여/닫기" ></div>
      </div>
      <!--logo start-->
      <a href="../index.html" class="logo"><b>walking<span>order</span></b></a>
      <!--logo end-->
      <div class="nav notify-row" id="top_menu">
        
      </div>
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="../login.html">Logout</a></li>
        </ul>
      </div>
    </header>    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a><img src="resources/assets/images/admin/doggy.jpg" class="img-circle" width="80"></a></p>
          <h5 class="centered">더리터 위례점</h5>
          <p class="sidebar-title" >주문 확인</p>
          <li class="sub-menu">
            <a href="../index.html">
              <i class="fa fa-h-square"></i>
              <span>HOME</span>
              </a>
          </li>
          <li class="sub-menu">
            <a href="lastOrder.html">
              <i class="fa fa-h-square"></i>
              <span>지난주문</span>
              </a>
              <ul class="sub">
                <li><a id="store-mng" href="/views_store/order/lastOrder_oneday.html">당일주문</a></li>
                <li><a id="store-menu" href="/views_store/order/lastOrder_period.html">기간주문</a></li>
              </ul>
          </li>
          
          <p class="sidebar-title" >Self Service</p>
          <li class="sub-menu">
            <a id="user-manage" href="/views_store/reviews/reviews.html">
              <i class="fa fa-user" style="font-size: 15px;"></i>
              <span>&nbsp;리뷰관리</span>
              </a>
          </li>
          <li class="sub-menu">
            <a id="store-manage" href="javascript:;">
              <i class="fa fa-group" style="font-size: 12px;"></i>
              <span>메뉴 관리</span>
              </a>
            <ul class="sub">
             <li><a id="store-mng" href="/views_store/menu/menu_crud.html">메뉴관리 (추가 / 수정)</a></li>
              <li><a id="store-menu" href="/views_store/menu/menu_pumjeol.html">품절 관리</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a id="order-manage" class="active dcjq-parent" href="javascript:void(0);">
              <i class="fa fa-shopping-cart"></i>
              <span>매장 정보 관리</span>
              </a>
            <ul class="sub">
              <li><a id="total-order" class="active" href="/views_store/info/info_basic.html">기본정보 변경</a></li>
              <li><a id="store-order" href="/views_store/info/info_manage.html">운영 정보 변경</a></li>
             
            </ul>
          </li>
          

          <p class="sidebar-title" >정산</p>
          <li class="sub-menu">
            <a id="settlement" href="javascript:;">
              <i class=" fa fa-krw"></i>
              <span>정산</span>
              </a>
            <ul class="sub">
             <li><a id="pg-comm" href="/views_store/calculate/calculate_today.html">오늘 매출</a></li>
              <li><a id="pg-stlmt" href="/views_store/calculate/calculate_period.html">기간 매출 정산</a></li>
            </ul>
          </li>
          
          
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->



    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
     
      <section class="wrapper" style="height: 1500px;">
       <div class="col-lg-12">
      <div class="card-header" style="padding-top: 20px; font-size: 20px; background-color: rgb(255, 255, 255); border-radius: 10px;">
        기본 정보 변경
      </div>
    </div>


          <div class="col-lg-12" style="min-width: 500px; ">
            <div class="form-panel" style="margin-top:0;  border-radius: 0 0 10px 10px;">
              <form class="form-horizontal style-form" method="get">
                <div class="row content-panel" style="border: none; box-shadow: none;padding: 0;margin:0 5px">
                  
                  <!-- /panel-heading -->
                  <div class="panel-body col-lg-12" style="padding: 0 11px 11px 11px;">


                    <div class="box blue">
                      <span class="title">가게정보 <a class="service_info" style="font-size: 13px; margin-left: 30px;" onclick="modal_a()" >변경요청은 고객센터로 문의해주세요</a></span>
                      <ul> 
                          <li>로고</li>
                          <img src="/views_store/no-image-cafe.png" style="width: 100px; height: 100px;">s
                          <li>가게 이름</li>
                            <div>더리터 위례점</div>
                          <li>가게 코드(사업자등록번호)</li>
                            <div>3922101126</div>
                          <li>가게 위치</li>
                            <div>(13647)경기도 성남시 수정구 창곡동 559-6 라크리음 1층 117호</div>
                         
                      </ul>
                  </div>
                  <!--모달1-->
                  <div class="modalA">
                    <div class="modalA_content">
                      <h2 style="font-size: 20px; color: black;">고객센터 전화번호 안내</h2>
                      <div style="font-size: 30px; font-weight: bolder; color: black;"> 1577-1577 </div>
                      
                      <div>
                      <button class="closeBtn" onclick="close_modalA()" >닫기</button>
                    </div>
                    </div>
                  </div>
                  <!--모달1 end-->


                  <div class="box orange">
                      <span class="title" style="margin-top: 30px;">가게 전화번호 <a class="change_info" onclick="modal_b()" >변경하기</a></span> 
                      <ul> 
                          <li>031-777-7777</li> 
                          
                      </ul>
                  </div>
                  <!--모달2-->
                  <div class="modalB">
                    <div class="modalB_content">
                      <h2 style="font-size: 20px; color: black; border-bottom: 1px solid rgba(0, 0, 0, 0.575); padding-bottom: 20px;">가게 전화번호</h2>
                      <div style="font-size: 15px; font-weight: bolder; margin-top: 60px; color: black; text-align: left; margin-left: 44px;">대표번호</div>
                      <input class="form-control" type="text" placeholder="031-7777-7777" value="" style="width: 50%; margin-left: 40px; margin-top: 5px;">
                      
                      <div>
                       <div class="row" style="margin-top: 30px;">
                         <div class="col-lg-6"></div>
                         <div class="col-lg-3" style="text-align: right;">
                          <button class="UpdateBtn" onclick="" >수정</button>
                         </div>
                        <div class="col-lg-3" style="text-align: left;">
                          <button class="closeBtn" onclick="close_modalB()" >닫기</button>
                        </div>
                       </div> 
                      
                    </div>
                    </div>
                  </div>
                  <!--모달2 end-->

                  <div class="box green">
                      <span class="title" style="margin-top: 30px;">가게 편의정보 <a class="change_info" onclick="modal_c()">변경하기</a></span> 
                      <ul> 
                          <li>주차</li>
                            <div>무료</div> 
                          <li>기타시설</li>
                            <div>룸 / 좌석 / 단체석 / 무선인터넷 / 반려동물 동반</div> 
                      </ul>
                  </div>
                  
                  <!--모달3-->
                  <div class="modalC">
                    <div class="modalC_content">
                      <h2 style="font-size: 20px; color: black; border-bottom: 1px solid rgba(0, 0, 0, 0.575); padding-bottom: 20px;">가게 편의정보</h2>
                      
                      <div class="row" style="margin-top: 60px; margin-left: 30px; ">
                        <div class="col-lg-3">
                      <div style="font-size: 15px; font-weight: bolder;  color: black; text-align: left; ">주차</div>
                    </div>
                    <div class="col-lg-6" style="text-align: right;">
                      <span id="park_disable" style="font-size: 13px; color: rgb(26, 25, 25);">설정안함</span>
                      <label  class="switch-button">  
                       
                        <input type="checkbox" id="btn_toggle" onclick="toggle_park()"  /> 
                        <span class="onoff-switch"></span> 
                      </label>
                    </div>
                      </div>

                                                               
                        <div class="container" id ="Toggle1" style="text-align: left; display: none;">
                          <div class="radio" style="padding: 0;">
                            <input id="radio-1" name="radio" type="radio" checked>
                            <label for="radio-1" class="radio-label">무료</label>
                          </div>
                        
                          <div class="radio">
                            <input id="radio-2" name="radio" type="radio">
                            <label for="radio-2" class="radio-label">유료</label>
                          </div>

                        </div>

                        <div class="row" style="margin-top: 60px; margin-left: 30px; ">
                          <div class="col-lg-3">
                        <div style="font-size: 15px; font-weight: bolder;  color: black; text-align: left; ">기타시설</div>
                      </div>
                      <div class="col-lg-6" style="text-align: right;">
                        <span id="facility_disable" style="font-size: 13px; color: rgb(26, 25, 25);">설정안함</span>
                        <label  class="switch-button">  
                         
                          <input type="checkbox" id="btn_toggle" onclick="toggle_facility()"  /> 
                          <span class="onoff-switch"></span> 
                        </label>
                      </div>
                        </div>

                        <!--기타시설 체크박스 -->
                      <div class="facility" id="Toggle2" style="display: none;">
                      <div class="row" style="margin-left: 44px; text-align: left;" >
                      <label class="checkbox-inline">
                        <input type="checkbox" id="inlineCheckbox1" value="option1" checked> 룸
                      </label>
                      <label class="checkbox-inline">
                        <input type="checkbox" id="inlineCheckbox2" value="option2"> 좌석
                      </label>
                      <label class="checkbox-inline">
                        <input type="checkbox" id="inlineCheckbox2" value="option2"> 단체석
                      </label>
                    </div>
                    <div class="row" style="margin-left: 44px; text-align: left;">
                      <label class="checkbox-inline">
                        <input type="checkbox" id="inlineCheckbox2" value="option2"> 무선인터넷
                      </label>
                    
                      <label class="checkbox-inline" >
                        <input type="checkbox" id="inlineCheckbox2" value="option2" > 유아용 의자
                      </label>

                    </div>
                    <div class="row" style="margin-left: 44px; text-align: left;">
                      <label class="checkbox-inline">
                        <input type="checkbox" id="inlineCheckbox2" value="option2"> 장애인 편의시설
                      </label>
                      <label class="checkbox-inline" >
                        <input type="checkbox" id="inlineCheckbox2" value="option2" > 반려동물 동반
                      </label>

                    </div>

                    </div>
                    <!--기타시설 체크박스 end-->

                      <div>
                       <div class="row" style="margin-top: 30px;">
                         <div class="col-lg-6"></div>
                         <div class="col-lg-3" style="text-align: right;">
                          <button class="UpdateBtn" onclick="" >수정</button>
                         </div>
                        <div class="col-lg-3" style="text-align: left;">
                          <button class="closeBtn" onclick="close_modalC()" >닫기</button>
                        </div>
                       </div> 
                      
                    </div>
                    </div>
                  </div>
                  <!--모달3 end-->
                  </div>

                </div>


              </form>
            </div>

          </div>
      </section>

      
        
    
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->



    <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights <strong>WalkingOrder</strong>. All Rights Reserved
        </p>
        <a href="../index.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="resources/assets/js/admin/bootstrap/js/bootstrap.min.js"></script>
  <script src="resources/assets/js/admin/jquery-ui-1.9.2.custom.min.js"></script>
  <script src="resources/assets/js/admin/jquery.ui.touch-punch.min.js"></script>
  <script class="include" type="text/javascript" src="resources/assets/js/admin/jquery.dcjqaccordion.2.7.js"></script>
  <script src="resources/assets/js/admin/jquery.scrollTo.min.js"></script>
  <script src="resources/assets/js/admin/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="resources/assets/js/admin/common-scripts.js"></script>
  <!--script for this page-->
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>


</body>

</html>
  