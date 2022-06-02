<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
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
    
    .table15_2 thead th {
        font-size: 15px;
        font-weight:bold;
        background-color:#d8d8d8;
        color:#202020;
        border: 1px solid #d8d8d8;
        border-width:1px
    }
    .table15_2,.table15_2 th,.table15_2 td {  
        text-align:center;
        padding:4px;
        border-collapse:collapse;
    }
    
    .table15_2 tbody td {
        border: 1px solid #d8d8d8;
        border-width:1px
    }
    .table15_2 tbody tr {
        border: 1px solid #ffffff;
    }
    .table15_2 tbody tr:nth-child(odd){
        background-color:#f7f7f7;
    }
    .table15_2 tbody tr:nth-child(even){
        background-color:#ffffff;
    }
    </style>

<script>


$(document).ready(function(){
	
	 $( 'input[name="dateOneday"]' ).change( function() {
		 var picked_date1 = $("#dateOneday").val();
			console.log(picked_date1);
			
		 var param = {"picked_date1" : picked_date1}
        
         $.ajax({
 	        url : "dateSoneday.store?picked_date1="+picked_date1,
 	        dataType: "html",	// 이 부분이 반환 타입을 핸들링하는 곳이다.
 	        type: "get",
 	        success: function(data) {
 	        	console.log("성공");
 	        	
 	           $("#SSOneday").html(data);  // forprepend 
 	        
 	        },
 	        error: function(data){alert("실패");}
 	    });
	 });

});
</script>
    

</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
<!-- 헤더 import -->
<%@ include file="../inc/store_header.jsp" %>
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a><img src="${storeSession.si_image}" class="img-circle" width="80"></a></p>
          <h5 class="centered">${storeSession.si_name } ${storeSession.si_loc}</h5>
          <p class="sidebar-title" >주문 확인</p>
          <li class="sub-menu">
            <a  href="index.store">
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
            <a id="settlement" class="active dcjq-parent" href="javascript:;">
              <i class=" fa fa-krw"></i>
              <span>정산</span>
              </a>
            <ul class="sub">
              <li><a class="active" id="pg-comm" href="SOneday.store">오늘 매출</a></li>
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
     
      <section class="wrapper" style="height: 1500px;">
        <div class="col-lg-11" style="min-width: 500px;">
            <div class="card-header" style="font-size: 16px;">
                <div class="calculate_title" style="margin-bottom: 20px;">
              <i class="fa fa-plus-circle" style="font-size: 14px; "></i>
              오늘 매출
              </div>
               <div class="row">
        <div class="col-lg-3" style="margin-bottom: 20px;"> 
<input id="dateOneday" name="dateOneday" class="form-control round-form" type="date" value="년.월.일" style="width: 70%; display: inline-block; float:left;"> 
                        
</div>
        
      </div>
            </div>

            <div class="form-panel" style="margin-top:0;  border-radius: 0 0 10px 10px;">
              <form class="form-horizontal style-form" method="get">
                <div class="row content-panel" style="border: none; box-shadow: none;padding: 0;margin:0 5px">
                  
                  <!-- /panel-heading -->
                  <div class="panel-body col-lg-12" id="SSOneday" style="padding: 0 11px 11px 11px;">
                    <div class="tab-content">
                      <!-- 메뉴관리 -->
                      <div id="menu" class="tab-pane active no-padding">
                        <div class="row content-panel" style="border: none; box-shadow: none;padding: 0;margin:0 5px">
                          <!--  / 옵션편집 / 대표메뉴 / 메뉴모음컷 / 주문안내 -->
                          <div class="panel-heading col-lg-12 col-md-12 col-sm-12 no-padding"
                            style="margin-bottom: 5px;">
                            <ul class="nav nav-tabs nav-justified">
                              <li class="active">
                                <a data-toggle="tab" href="#faq__111">매출 내역</a>
                              </li>
                              <li>
                                <a data-toggle="tab" href="#faq__222">매출 상세</a>
                              </li>
                              <li>
                                <a data-toggle="tab" href="#faq__333">상품별 매출</a>
                              </li>
                             
                              
                            </ul>
                          </div>
                          <!-- /panel-heading -->
                          <div class="panel-body col-lg-12">
                            <div class="tab-content">
                              <!-- 메뉴편집 -->
                              <div id="faq__111" class="tab-pane active" >
                              
                                <div class="row" >
                                    <div class="col-lg-12" >
                                <table class=table15_2 style="width:100%; margin:15px 0; border:0;">
                                    <thead>
                                    <tr>
                                        <th>항목</th><th>건수/금액</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    
                                    <tr>
                                        <td>매출액</td><td>
                                         <c:set var = "total1" value = "0" />
								<c:forEach var="orderList" items="${orderList}" varStatus="status"> 
								<c:set var= "total1" value="${total1 + orderList.o_total_price}"/>
								</c:forEach>
								<fmt:formatNumber value="${total1}" pattern="###,###"/> 원
                                        </td>
                                    </tr>
                                </tbody>
                               
                                    
                                    </table>
                                </div>
                            </div>
          
          </div>
                              <!-- /tab-pane -->
                              <!-- 옵션편집 -->
                              <div id="faq__222" class="tab-pane">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <table class=table15_2 style="width:100%; margin:15px 0; border:0;">
                                            
                                            <thead>
                                            <tr>
                                                <th>결제시간</th><th>주문번호</th><th>매출액</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${ orderList}" var="orderList" varStatus="vsvs">
                                        	<tr>
                                        	<td><fmt:formatDate value="${orderList.o_order_date}" pattern="yyyy.MM.dd  |  a hh:mm"/></td>
                                        	
                                        	<td>${ orderList.o_code}</td>
                                        	<td>
											<fmt:formatNumber value="${orderList.o_total_price}" pattern="###,###"/> 원                                        	
                                        	</td>
                                        	</tr>
                                        </c:forEach>
                                        </tbody>
                                            </table>
                                </div>
                            </div>
                                    
                                <!-- /메뉴관리 -->
                              </div>
                              <!-- /tab-pane -->
                              <!-- 대표메뉴 -->
                              <div id="faq__333" class="tab-pane">
                                <div class="row">
                                    <div class="col-lg-12" >
                                    <table class=table15_2 style="width:100%; margin:15px 0; border:0;">
                                            
                                            <thead>
                                            <tr>
                                                <th>메뉴명</th><th>판매수량</th><th>판매금액</th><th>비율</th>
                                            </tr>  
                                        </thead>
                                        <tbody>
                                        
                                            <tr>
                                                <td>아메리카노</td><td>87</td><td>870,000</td><td>40%</td>
                                            </tr>
                                            <tr>
                                                <td>바닐라라떼</td><td>10</td><td>10,000</td><td>12%</td>
                                            </tr>
                                            <tr>
                                                <td>밀크쉐이크</td><td>9</td><td>90,000</td><td>11%</td>
                                            </tr>
                                            <tr>
                                                <td>카페라떼</td><td>8</td><td>80,000</td><td>10%</td>
                                            </tr>
                                        </tbody>
                                            </table>
                                </div>
                            </div>
                                <!-- /메뉴관리 -->
                              </div>
                            </div>
                            <!-- /tab-content -->
                          </div>
                        </div>

                        <!-- /메뉴관리 -->
                      </div>
                      <!-- /tab-pane -->
                      
                    </div>
                    <!-- /tab-content -->
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

