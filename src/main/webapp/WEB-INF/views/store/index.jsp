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

    /*최소주문시간 설정 start*/
    #form-wrapper {
      width: 100%;
      display: flex;
      flex-direction: column;
      align-items: center;
    }
    
    form {
      width: 90%;
      max-width: 500px;
    }
    form #form-title {
      margin-top: 0;
      font-weight: 400;
      text-align: center;
    }
    form #debt-amount-slider {
      display: flex;
      flex-direction: row;
      align-content: stretch;
      position: relative;
      width: 100%;
      height: 50px;
      user-select: none;
    }
    form #debt-amount-slider::before {
      content: " ";
      position: absolute;
      height: 2px;
      width: 100%;
      width: calc(100% * (4 / 5));
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      background: #000;
    }
    form #debt-amount-slider input, form #debt-amount-slider label {
      box-sizing: border-box;
      flex: 1;
      user-select: none;
      cursor: pointer;
    }
    form #debt-amount-slider label {
      display: inline-block;
      position: relative;
      width: 20%;
      height: 100%;
      user-select: none;
    }
    form #debt-amount-slider label::before {
      content: attr(data-debt-amount);
      position: absolute;
      left: 50%;
      padding-top: 10px;
      transform: translate(-50%, 45px);
      font-size: 14px;
      letter-spacing: 0.4px;
      font-weight: 400;
      white-space: nowrap;
      opacity: 0.85;
      transition: all 0.15s ease-in-out;
    }
    form #debt-amount-slider label::after {
      content: " ";
      position: absolute;
      left: 50%;
      top: 50%;
      transform: translate(-50%, -50%);
      width: 30px;
      height: 30px;
      border: 2px solid #000;
      background: #fff;
      border-radius: 50%;
      pointer-events: none;
      user-select: none;
      z-index: 1;
      cursor: pointer;
      transition: all 0.15s ease-in-out;
    }
    form #debt-amount-slider label:hover::after {
      transform: translate(-50%, -50%) scale(1.25);
    }
    form #debt-amount-slider input {
      display: none;
    }
    form #debt-amount-slider input:checked + label::before {
      font-weight: 800;
      opacity: 1;
    }
    form #debt-amount-slider input:checked + label::after {
      border-width: 4px;
      transform: translate(-50%, -50%) scale(0.75);
    }
    form #debt-amount-slider input:checked ~ #debt-amount-pos {
      opacity: 1;
    }
    form #debt-amount-slider input:checked:nth-child(1) ~ #debt-amount-pos {
      left: 10%;
    }
    form #debt-amount-slider input:checked:nth-child(3) ~ #debt-amount-pos {
      left: 30%;
    }
    form #debt-amount-slider input:checked:nth-child(5) ~ #debt-amount-pos {
      left: 50%;
    }
    form #debt-amount-slider input:checked:nth-child(7) ~ #debt-amount-pos {
      left: 70%;
    }
    form #debt-amount-slider input:checked:nth-child(9) ~ #debt-amount-pos {
      left: 90%;
    }
    form #debt-amount-slider #debt-amount-pos {
      display: block;
      position: absolute;
      top: 50%;
      width: 12px;
      height: 12px;
      background: #000;
      border-radius: 50%;
      transition: all 0.15s ease-in-out;
      transform: translate(-50%, -50%);
      border: 2px solid #fff;
      opacity: 0;
      z-index: 2;
    }
    form:valid #debt-amount-slider input + label::before {
      transform: translate(-50%, 45px) scale(0.9);
      transition: all 0.15s linear;
    }
    form:valid #debt-amount-slider input:checked + label::before {
      transform: translate(-50%, 45px) scale(1.1);
      transition: all 0.15s linear;
    }
    form + button {
      display: block;
      position: relative;
      margin: 56px auto 0;
      padding: 10px 20px;
      appearance: none;
      transition: all 0.15s ease-in-out;
      font-family: inherit;
      font-size: 24px;
      font-weight: 600;
      background: #fff;
      border: 2px solid #000;
      border-radius: 8px;
      outline: 0;
      user-select: none;
      cursor: pointer;
    }
    form + button:hover {
      background: #000;
      color: #fff;
    }
    form + button:hover:active {
      transform: scale(0.9);
    }
    form + button:focus {
      background: #4caf50;
      border-color: #4caf50;
      color: #fff;
      pointer-events: none;
    }
    form + button:focus::before {
      animation: spin 1s linear infinite;
    }
    form + button::before {
      display: inline-block;
      width: 0;
      opacity: 0;
      content: "";
      font-family: "Font Awesome 5 Pro";
      font-weight: 900;
      margin-right: 0;
      transform: rotate(0deg);
    }
    form:invalid + button {
      pointer-events: none;
      opacity: 0.25;
    }
    
    @keyframes spin {
      from {
        transform: rotate(0deg);
        width: 24px;
        opacity: 1;
        margin-right: 12px;
      }
      to {
        transform: rotate(360deg);
        width: 24px;
        opacity: 1;
        margin-right: 12px;
      }
    }
    /*최소주문시간 설정 end*/

    /*order카드 css*/
    .order_card {
      width: auto;
      height: 300px;
      background-color: #dadad2;
      border-radius: 5px;
    }

    .order_status {
      width: auto;
      background-color: #ed5565;
      font-size: 17px;
      border: 1px solid #eb4657;
      color: rgb(255, 255, 255);
      padding: 5px;
      margin: 10px 0 0 25px ;
      border-radius: 10px;
    }

    .info_user {
     margin: 10px;
      border-bottom: 1px solid rgba(0, 0, 0, 0.418);
    }

    .info_menu {
      margin-left:30px;
    }

    .order_detail {
      background-color: transparent; 
      border: 1px solid rgba(0, 0, 0, 0.342);

    }

    .order_detail:hover {
      background-color: #c4c4bf;
    }

    .order_recieveBtn {
      width: 250px;
      height: 60px;
      background-color: #ed5565;
      font-size: 20px;
      border: 1px solid #eb4657;
      color: rgb(255, 255, 255);
      padding: 5px;
      margin-top: 10px;
      border-radius: 10px;
    }


          </style>
<script>

function setClock(){
    var dateInfo = new Date(); 
    var hour = modifyNumber(dateInfo.getHours());
    var min = modifyNumber(dateInfo.getMinutes());
    var sec = modifyNumber(dateInfo.getSeconds());
    var year = dateInfo.getFullYear();
    var month = dateInfo.getMonth()+1; //monthIndex를 반환해주기 때문에 1을 더해준다.
    var date = dateInfo.getDate();
    document.getElementById("time").innerHTML = hour + ":" + min  + ":" + sec;
    document.getElementById("date").innerHTML = year + "년 " + month + "월 " + date + "일";
}
function modifyNumber(time){
    if(parseInt(time)<10){
        return "0"+ time;
    }
    else
        return time;
}
window.onload = function(){
    setClock();
    setInterval(setClock,1000); //1초마다 setClock 함수 실행
}
</script>
</head>
<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!-- 헤더 import -->
    <%@ include file="inc/store_header.jsp" %>
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
            <a class="active" href="index.store">
              <i class="fa fa-h-square"></i>
              <span>HOME</span>
              </a>
          </li>
          <li class="sub-menu">
            <a id="store-manage" href="javascript:;">
              <i class="fa fa-group" style="font-size: 12px;"></i>
              <span>지난 주문</span>
              </a>
            <ul class="sub">
              <li><a id="store-mng" href="Ooneday.store">당일주문</a></li>
              <li><a id="store-menu" href="Operiod.store">기간주문</a></li>
            </ul>
          </li>
          
          <p class="sidebar-title" >Self Service</p>
          <li class="sub-menu">
            <a id="user-manage" href="reviews.store">
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
              <li><a id="store-mng" href="CRUD.store">메뉴관리 (추가 / 수정)</a></li>
              <li><a id="store-menu" href="pumjeol.store">품절 관리</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a id="order-manage" href="javascript:;">
              <i class="fa fa-shopping-cart"></i>
              <span>매장 정보 관리</span>
              </a>
            <ul class="sub">
              <li><a id="total-order" href="basic.store">기본정보 변경</a></li>
              <li><a id="store-order" href="manage.store">운영 정보 변경</a></li>
             </ul>
          </li>
          


          <p class="sidebar-title" >정산</p>
          <li class="sub-menu">
            <a id="settlement" href="javascript:;">
              <i class=" fa fa-krw"></i>
              <span>정산</span>
              </a>
            <ul class="sub">
              <li><a id="pg-comm" href="SOneday.store">오늘 매출</a></li>
              <li><a id="pg-stlmt" href="SPeriod.store">기간 매출 정산</a></li>
             
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
     
      <section class="wrapper" style="height: 1500px; padding:0px;">
       
          <div class="min_bringTime"  style="padding:0px; margin:0px; background-color: #0a253362; height: 150px;">
            <div class="row">
            
      
              <div id="form-wrapper" >
                <form action="/p/quote.php" method="GET">
                  <h3 id="form-title" style="color: rgb(255, 255, 255); padding-top: 20px;">최소 수령시간</h3>
                  <div id="debt-amount-slider" style="color: #000;">
                    <input type="radio" name="debt-amount" id="1" value="1" required checked>
                    <label  for="1"  data-debt-amount="지금수령"></label>
                    <input type="radio" name="debt-amount" id="2" value="2" required>
                    <label for="2" data-debt-amount="5분"></label>
                    <input type="radio" name="debt-amount" id="3" value="3" required>
                    <label for="3" data-debt-amount="10분"></label>
                    <input type="radio" name="debt-amount" id="4" value="4" required>
                    <label for="4" data-debt-amount="15분"></label>
                    <input type="radio" name="debt-amount" id="5" value="5" required>
                    <label for="5" data-debt-amount="20분"></label>
                   
                    <div id="debt-amount-pos"></div>
                  </div>
                </form>
             
              </div>
      </div>
    </div>

        
        <div class="row" style="margin: 10px; font-size: 40px; font-weight: 800; color: #000;" >
          <!--오늘날짜 -->
          <div class="col-lg-6">
          <div class="current_date"> 
            <div id="date" class="date" ></div>
        </div>
          </div>
          <!--현재 시간-->
          <div class="col-lg-6" >
              <div class="current_time">
              <div id="time" class="time"></div>
            </div>
          
        </div>

        </div>
        <!--주문창 start-->
        <div class="row" style="margin: 10px;">
          <!--주문1-->
          
          
          <div class="col-lg-3" >
           
           <div class="order_card">
              <div class="row"><label class="order_status">접수대기</label></div>
              
                <div class="info_user">
                  <table style=" margin-left: 30px;" >
                    
                    <tr>
                      <td rowspan="2" style="font-size: 50px; padding-right:15px; color: black; font-weight: bolder; ">4</td>
                      <td style="font-size: 20px; color: #000; padding: 0;">Takeout</td>
                      <td rowspan="2" style="padding-left: 20px;"><button class="order_detail">상세보기</button></td>
                    </tr>
                    <tr>
                      <td style="padding-bottom: 15px;">배고프젼</td>
                    </tr>
                    

                  </table>

                </div>
                <div class="info_menu">
                    <h4 style="color: black;">카페라떼(2)</h4>
                    <h4 style="color: black;">아메리카노(1)</h4>
                    <h5>오후 03:10</h5>
                </div>
                <div class="row" style="text-align: center;">
                
                  <button class="order_recieveBtn">주문접수하기</button>
                
              </div>

           </div>
            
          </div>

          <div class="col-lg-3" >
           
            <div class="order_card">
               <div class="row"><label class="order_status">접수대기</label></div>
               
                 <div class="info_user">
                   <table style=" margin-left: 30px;" >
                     
                     <tr>
                       <td rowspan="2" style="font-size: 50px; padding-right:15px; color: black; font-weight: bolder; ">4</td>
                       <td style="font-size: 20px; color: #000; padding: 0;">Takeout</td>
                       <td rowspan="2" style="padding-left: 20px;"><button class="order_detail">상세보기</button></td>
                     </tr>
                     <tr>
                       <td style="padding-bottom: 15px;">배고프젼</td>
                     </tr>
                     
 
                   </table>
 
                 </div>
                 <div class="info_menu">
                     <h4 style="color: black;">카페라떼(2)</h4>
                     <h4 style="color: black;">아메리카노(1)</h4>
                     <h5>오후 03:10</h5>
                 </div>
                 <div class="row" style="text-align: center;">
                 
                   <button class="order_recieveBtn">주문접수하기</button>
                 
               </div>
 
            </div>
             
           </div>

           <div class="col-lg-3" >
           
            <div class="order_card">
               <div class="row"><label class="order_status">접수대기</label></div>
               
                 <div class="info_user">
                   <table style=" margin-left: 30px;" >
                     
                     <tr>
                       <td rowspan="2" style="font-size: 50px; padding-right:15px; color: black; font-weight: bolder; ">4</td>
                       <td style="font-size: 20px; color: #000; padding: 0;">Takeout</td>
                       <td rowspan="2" style="padding-left: 20px;"><button class="order_detail">상세보기</button></td>
                     </tr>
                     <tr>
                       <td style="padding-bottom: 15px;">배고프젼</td>
                     </tr>
                     
 
                   </table>
 
                 </div>
                 <div class="info_menu">
                     <h4 style="color: black;">카페라떼(2)</h4>
                     <h4 style="color: black;">아메리카노(1)</h4>
                     <h5>오후 03:10</h5>
                 </div>
                 <div class="row" style="text-align: center;">
                 
                   <button class="order_recieveBtn">주문접수하기</button>
                 
               </div>
 
            </div>
             
           </div>

           <div class="col-lg-3" >
           
            <div class="order_card">
               <div class="row"><label class="order_status">접수대기</label></div>
               
                 <div class="info_user">
                   <table style=" margin-left: 30px;" >
                     
                     <tr>
                       <td rowspan="2" style="font-size: 50px; padding-right:15px; color: black; font-weight: bolder; ">4</td>
                       <td style="font-size: 20px; color: #000; padding: 0;">Takeout</td>
                       <td rowspan="2" style="padding-left: 20px;"><button class="order_detail">상세보기</button></td>
                     </tr>
                     <tr>
                       <td style="padding-bottom: 15px;">배고프젼</td>
                     </tr>
                     
 
                   </table>
 
                 </div>
                 <div class="info_menu">
                     <h4 style="color: black;">카페라떼(2)</h4>
                     <h4 style="color: black;">아메리카노(1)</h4>
                     <h5>오후 03:10</h5>
                 </div>
                 <div class="row" style="text-align: center;">
                 
                   <button class="order_recieveBtn">주문접수하기</button>
                 
               </div>
 
            </div>
             
           </div>

          
          

          
          

        </div>
        <!--/주문창 end-->
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
