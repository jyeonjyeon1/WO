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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <style>
/*메뉴그룹추가버튼*/
.change_info {
  width: auto;
  font-size: 15px; 
  background-color: #a3d1f14f;
  border: 1px solid #0a5c96a9 ;
  padding: 10px;
  color : rgba(0, 0, 0, 0.562);
  border-radius: 5px;
  cursor: pointer;
  font-weight: bolder;

}

.change_info:hover {
  background-color: #0a5c96;
  color: aliceblue;
}

/*메뉴그룹 리스트 css*/
nav {
  width: 100%;
  margin-top: 20px;
}
ul { padding: 0; }

li {

  list-style: none;
  line-height: 50px;
  
}

.menuGroup {
  display: block; /* 중요 */
  text-decoration: none;
  color: #616161;
  text-align: center;
}


.menu_one {
  display: block; /* 중요 */
  text-decoration: none;
  color: #616161;
  text-align: center;
}

.menuGroup {
  font-size: 20px;
  font-weight: bolder;
}

.menu_one {
  border-bottom: 1px solid rgba(0, 0, 0, 0.288);
}

.snd_menu { background: #efefef; }
.trd_menu { background: #ddd; }
.sub_menu { display: none; } /* 서브메뉴들 숨김 */

.selec { background: rgba(226, 77, 94, 0.733); color: #efefef; }


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
position:absolute; top:50%; left:50%;
margin-top:100px; 
margin-left:-200px;
text-align:center;
box-sizing:border-box; 
padding:24px 0;
line-height:23px; 

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




    </style>


<script>
                              
//메뉴그룹리스트 js
  $(document).ready(function(){
  
  $("#ffss").click(function(){
	console.log("ddd");
    $(this).next($('.snd_menu')).slideToggle('fast');
  })
  $(".snd_menu > li > a").click(function(e){
	 console.log("ddd");
    e.stopPropagation();
    $(this).next($('.trd_menu')).slideToggle('fast');
  })
  
  // 버튼 클릭 시 색 변경
  $('li > a').focus(function(){
    $(this).addClass('selec');
  })
  $("li > a").blur(function(){
    $(this).removeClass('selec');
  })
  
})

//모달1 메뉴그룸추가
function modal_a() {
  $(".modalA").fadeIn();
   
}

function close_modalA() {
  $(".modalA").fadeOut();
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
            <a id="store-manage" class="active dcjq-parent" href="javascript:void(0);">
              <i class="fa fa-group" style="font-size: 12px;"></i>
              <span>메뉴 관리</span>
              </a>
            <ul class="sub">
             <li><a id="store-mng" class="active" href="/views_store/menu/menu_crud.html">메뉴관리 (추가 / 수정)</a></li>
              <li><a id="store-menu" href="/views_store/menu/menu_pumjeol.html">품절 관리</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a id="order-manage" href="javascript:;">
              <i class="fa fa-shopping-cart"></i>
              <span>매장 정보 관리</span>
              </a>
            <ul class="sub">
              <li><a id="total-order" href="/views_store/info/info_basic.html">기본정보 변경</a></li>
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
              <li><a id="pg-comm"  href="/views_store/calculate/calculate_today.html">오늘 매출</a></li>
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
        <div class="col-lg-11" style="min-width: 500px;">
            <div class="card-header" style="font-size: 16px; margin-top: 40px;">
                <div class="calculate_title" style="margin-bottom: 20px;">
              <i class="fa fa-plus-circle" style="font-size: 14px; "></i>
              메뉴관리(추가/삭제)
              </div>
              
            </div>

            <div class="form-panel" style="margin-top:0;  border-radius: 0 0 10px 10px;">
              <form class="form-horizontal style-form" method="get">
                <div class="row content-panel" style="border: none; box-shadow: none;padding: 0;margin:0 5px">
                  
                 
                  <div class="panel-body col-lg-12" style="padding: 0 11px 11px 11px;">
                    <div class="tab-content">
                      
                      <div id="menu" class="tab-pane active no-padding">
                        <div class="row content-panel" style="border: none; box-shadow: none;padding: 0;margin:0 5px">
                          
                          <div class="panel-heading col-lg-12 col-md-12 col-sm-12 no-padding"
                            style="margin-bottom: 5px;">
                            <ul class="nav nav-tabs nav-justified">
                              <li class="active">
                                <a data-toggle="tab" href="#faq__111">메뉴편집</a>
                              </li>
                              <li>
                                <a data-toggle="tab" href="#faq__222">옵션편집</a>
                              </li>
                              <li>
                                <a data-toggle="tab" href="#faq__333">주문안내/원산지</a>
                              </li>
                              
                              
                            </ul>
                          </div>
                          
                          <div class="panel-body col-lg-12">
                            <div class="tab-content">

                              <!--메뉴편집 start-->
                              <div id="faq__111" class="tab-pane active" >
                                <div class="row" style="text-align: right;">
                                <a class="change_info" onclick="modal_a()"> + 메뉴그룹추가</a>
                                </div>

                              <!--그룹 리스트 start-->
                              <nav>
                                <ul id="main_menu">
                                  <li>
                                      <a id="ffss" class="menuGroup" href="javascript:" >Coffee1
                                        <button type="button" onclick="javascript:deleteAlert();" class="btn btn-danger btn-xs" style="float: right; margin-right: 10px;"><i class="fa fa-trash-o "></i></button>
                                        <button class="btn btn-primary btn-xs" style="float: right; margin-right: 10px;"><i class="fa fa-pencil"></i></button>
                                      </a>
                                    <!--서브메뉴시작-->
                                    <ul class="snd_menu sub_menu">
                                      <li>
                                        <a class="menu_one" href="#" >
                                          <div class="row">
                                            <div class="col-lg-2" style="text-align: left;">
                                              <img src="/views_store/cart-1.jpg" style="width: 100px; 
                                              height: 100px; border: 1px solid rgba(0, 0, 0, 0.692); border-radius: 5px; padding: 10px; margin: 10px;">
                                            </div>
                                            <div class="col-lg-8" style="text-align: left; margin-top: 5px;">
                                              
                                              <h4 style=" font-weight: bolder; margin-left: 0;">아메리카노</h4>
                                              <div class="menu_oneOption" >
                                              <h6 style="margin-top:0;">ICE : 2000 원</h6>
                                              <h6>HOT : 1500 원</h6>
                                              </div>
                                            
                                            </div>
                                            
                                          </div> 
                                        
                                        </a>
                                        <ul class="trd_menu sub_menu">
                                          <li><a class="menu_one" href="#">Hue</a></li>
                                          <li><a class="menu_one" href="#">Saturation</a></li>
                                          <li><a class="menu_one" href="#">Value</a></li>
                                      </ul>
                                      </li>
                                      <li>
                                        <a class="menu_one" href="#" >
                                          <div class="row">
                                            <div class="col-lg-2" style="text-align: left;">
                                              <img src="/views_store/cart-1.jpg" style="width: 100px; 
                                              height: 100px; border: 1px solid rgba(0, 0, 0, 0.692); border-radius: 5px; padding: 10px; margin: 10px;">
                                            </div>
                                            <div class="col-lg-8" style="text-align: left; margin-top: 5px;">
                                              
                                              <h4 style=" font-weight: bolder; margin-left: 0;">카페라떼</h4>
                                              <div class="menu_oneOption" >
                                              <h6 style="margin-top:0;">ICE : 2000 원</h6>
                                              <h6>HOT : 1500 원</h6>
                                              </div>
                                            
                                            </div>
                                            
                                          </div> 
                                        
                                        </a>
                                        <ul class="trd_menu sub_menu">
                                          <li><a class="menu_one" href="#">Hue</a></li>
                                          <li><a class="menu_one" href="#">Saturation</a></li>
                                          <li><a class="menu_one" href="#">Value</a></li>
                                      </ul>
                                      </li>
                                    </ul>
                                    <!--서브메뉴끝-->
                                  </li>
                                  <li><a class="menuGroup" href="#">Latte (non Coffee)
                                    <button type="button" onclick="javascript:deleteAlert();" class="btn btn-danger btn-xs" style="float: right; margin-right: 10px;"><i class="fa fa-trash-o "></i></button>
                                        <button class="btn btn-primary btn-xs" style="float: right; margin-right: 10px;"><i class="fa fa-pencil"></i></button>
                                      </a>
                                    
                                      <ul class="snd_menu sub_menu">
                                      <li>
                                        <a class="menu_one" href="#" >
                                          <div class="row">
                                            <div class="col-lg-2" style="text-align: left;">
                                              <img src="/views_store/cart-1.jpg" style="width: 100px; 
                                              height: 100px; border: 1px solid rgba(0, 0, 0, 0.692); border-radius: 5px; padding: 10px; margin: 10px;">
                                            </div>
                                            <div class="col-lg-8" style="text-align: left; margin-top: 5px;">
                                              
                                              <h4 style=" font-weight: bolder; margin-left: 0;">고구마라떼</h4>
                                              <div class="menu_oneOption" >
                                              <h6 style="margin-top:0;">ICE : 2000 원</h6>
                                              <h6>HOT : 1500 원</h6>
                                              </div>
                                            
                                            </div>
                                           
                                          </div> 
                                        
                                        </a>
                                        <ul class="trd_menu sub_menu">
                                          <li><a class="menu_one" href="#">Hue</a></li>
                                          <li><a class="menu_one" href="#">Saturation</a></li>
                                          <li><a class="menu_one" href="#">Value</a></li>
                                      </ul>
                                      </li>
                                      <li>
                                        <a class="menu_one" href="#" >
                                          <div class="row">
                                            <div class="col-lg-2" style="text-align: left;">
                                              <img src="/views_store/cart-1.jpg" style="width: 100px; 
                                              height: 100px; border: 1px solid rgba(0, 0, 0, 0.692); border-radius: 5px; padding: 10px; margin: 10px;">
                                            </div>
                                            <div class="col-lg-8" style="text-align: left; margin-top: 5px;">
                                              
                                              <h4 style=" font-weight: bolder; margin-left: 0;">민트초코라떼</h4>
                                              <div class="menu_oneOption" >
                                              <h6 style="margin-top:0;">ICE : 2000 원</h6>
                                              <h6>HOT : 1500 원</h6>
                                              </div>
                                            
                                            </div>
                                            
                                          </div> 
                                        
                                        </a>
                                        <ul class="trd_menu sub_menu">
                                          <li><a class="menu_one" href="#">Hue</a></li>
                                          <li><a class="menu_one" href="#">Saturation</a></li>
                                          <li><a class="menu_one" href="#">Value</a></li>
                                      </ul>
                                      </li>
                                    </ul>
                                    
                                    
                                    
                                    
                                    
                                    </li>






                                  <li><a  class="menuGroup" href="#">Tea & Fruit Juice
                                    <button type="button" onclick="javascript:deleteAlert();" class="btn btn-danger btn-xs" style="float: right; margin-right: 10px;"><i class="fa fa-trash-o "></i></button>
                                        <button class="btn btn-primary btn-xs" style="float: right; margin-right: 10px;"><i class="fa fa-pencil"></i></button>
                                      </a></li>
                                  <li><a  class="menuGroup" href="#">Ade
                                    <button type="button" onclick="javascript:deleteAlert();" class="btn btn-danger btn-xs" style="float: right; margin-right: 10px;"><i class="fa fa-trash-o "></i></button>
                                        <button class="btn btn-primary btn-xs" style="float: right; margin-right: 10px;"><i class="fa fa-pencil"></i></button>
                                      </a></li>
                                  <li><a  class="menuGroup" href="#">Shake
                                    <button type="button" onclick="javascript:deleteAlert();" class="btn btn-danger btn-xs" style="float: right; margin-right: 10px;"><i class="fa fa-trash-o "></i></button>
                                        <button class="btn btn-primary btn-xs" style="float: right; margin-right: 10px;"><i class="fa fa-pencil"></i></button>
                                      </a></li>
                                  <li><a  class="menuGroup" href="#">Desert
                                    <button type="button" onclick="javascript:deleteAlert();" class="btn btn-danger btn-xs" style="float: right; margin-right: 10px;"><i class="fa fa-trash-o "></i></button>
                                        <button class="btn btn-primary btn-xs" style="float: right; margin-right: 10px;"><i class="fa fa-pencil"></i></button>
                                      </a></li>
                                </ul>
                              </nav>

                              <!--그룹 리스트 end-->


                              <!--modalA start-->
                                <div class="modalA">
                                  <div class="modalA_content">
                                    <h2 style="font-size: 20px; color: black;">메뉴그룹 추가</h2>
                                   
                                    
                                    <div>
                                    <button class="closeBtn" onclick="close_modalA()" >닫기</button>
                                  </div>
                                  </div>
                                </div>
                                <!--modalA end-->
          
                            </div>
                             <!--메뉴편집 end--> 

                            <!--옵션편집 start-->
                              <div id="faq__222" class="tab-pane">
                                
                                    
                                
                              </div>
                             <!--옵션편집 end-->

                              <!--주문안내/원산지 편집 start-->
                              <div id="faq__333" class="tab-pane">
                                
                               
                              </div>
                             <!--주문안내/원산지 편집 end-->
                              
                             
                              
                              
                            
                            </div>
                            
                          </div>
                        </div>

                        
                      </div>
                    
                      
                    </div>
                  
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
