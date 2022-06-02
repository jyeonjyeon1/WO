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


    <!--datepicker-->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />

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

<!-- 테이블용 css -->
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />

  
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

    /*영수증 modal*/
  .modalA { 

    position:absolute; 
    width:100%; 
    height:100%; 
    background: rgba(0, 0, 0, 0.705); 
    top:0; 
    left:0; 
    display:none;
    }


.modalA_content{
width:550px; height:auto;
background:rgba(255, 255, 255, 0.925); 
border: 1px  solid rgba(0, 0, 0, 0.678);
border-radius:5px;
position:absolute; top:50%; left:50%;
margin-top:-200px; 
margin-left:-250px;
text-align:center;
box-sizing:border-box; 
padding:24px 0;
line-height:23px; 

}

/*영수증의 확인버튼*/
.closeBtn {
  float: right;
  margin: 20px;
}

    </style>
<script>

$(document).ready(function(){
	
	 $( 'input[name="dateOneday"]' ).change( function() {
		 var picked_date1 = $("#dateOneday").val();
			console.log(picked_date1);
			
		 var param = {"picked_date1" : picked_date1}
        
         $.ajax({
 	        url : "dateOoneday.store?picked_date1="+picked_date1,
 	        dataType: "html",	// 이 부분이 반환 타입을 핸들링하는 곳이다.
 	        type: "get",
 	        success: function(data) {
 	        	console.log("성공");
 	        	
 	          $("#datatablesSimple tbody").html(data); // forprepend
 	        
 	        },
 	        error: function (){alert("실패");}
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
    <!--header start-->
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
          <h5 class="centered">${storeSession.si_name} ${storeSession.si_loc}</h5>
          <p class="sidebar-title" >주문 확인</p>
          <li class="sub-menu">
            <a href="index.store">
              <i class="fa fa-h-square"></i>
              <span>HOME</span>
              </a>
          </li>
          <li class="sub-menu">
            <a id="store-manage" class="active dcjq-parent" href="javascript:;">
              <i class="fa fa-group" style="font-size: 12px;"></i>
              <span>지난 주문</span>
              </a>
            <ul class="sub">
              <li><a class="active" id="store-mng" href="Ooneday.store">당일주문</a></li>
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
     
      <section class="wrapper" style="height: 1500px;">
       

  <div class="col-lg-11" style="min-width: 500px;">
      <div class="card-header" style="font-size: 16px;">
        <i class="fa fa-plus-circle" style="font-size: 14px; margin-bottom: 15px; "></i>지난주문 관리
        <div class="row">
         
          <h4> &nbsp;&nbsp;&nbsp; 날짜를 설정해 주세요 :)</h4>
        </div> 
        <div class="row">
        <div class="col-lg-3" style="margin-bottom: 20px;"> 
<input id="dateOneday" name="dateOneday" class="form-control round-form" type="date" value="년.월.일" style="width: 70%; display: inline-block; float:left;"> 
                        
</div>
        
      </div>
          <div class="row content-panel" style="border: none; box-shadow: none;padding: 40px; margin:0 5px">
            
 
                                           
  <div class="row">

    <div class="col-lg-12" >
   
      <table id="datatablesSimple">
      <thead>
          <tr>
            <th>주문번호</th>
            <th>주문시간</th>
            <th>주문내역</th>
            <th>결제금액</th>
            <th>닉네임</th>
            <th>내역 확인</th>
              
          </tr>
      </thead>
      <tfoot>
        <tr>
          <th>주문번호</th>
          <th>주문시간</th>
          <th>주문내역</th>
          <th>결제금액</th>
          <th>닉네임</th>
          <th>내역 확인</th>
      </tr>
      </tfoot>
      
      <tbody>
       
      	  <c:forEach items="${orderList}" var="orderList" varStatus="vs">
        <tr>
          <td>${orderList.o_code }</td>
          <td>
          <fmt:formatDate value="${orderList.o_order_date}" pattern="yyyy.MM.dd  |  a hh:mm"/></td>
          <td>${orderList.o_list }</td>
          <td>${orderList.o_total_price }</td>
          <td>${orderList.u_name }</td>
          <td> <button type="button" data-toggle="modal" href="#detail${vs.index}" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button></td>
          </tr>
        
        
        <!-- Modal -->
<div aria-hidden="true" aria-labelledby="myModalLabel"
	role="dialog" tabindex="-1" id="detail${vs.index}"
	class="modal fade" style="margin: 20px auto 0;">
	<div class="modal-dialog store modal_centerr">
		<div class="modal-content">
			<div class="modal-header_store" style="background-color: #ed4759;height:50px;">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" style="padding-top:7px">${orderList.o_code} 주문상세</h4>
			</div>
			<!-- 	정보시작 -->
	<div class="modal_wrapbodyy"  style="height:500px;background:#eaeaea;padding:30px 30px 0;color:black;">
		<div class="col-lg-12">
			<div class="" style="border-bottom: 1px solid rgba(0, 0, 0, 0.459); margin: 15px;">
                <div class="row" style="text-align: left; margin:5px 10px;">
                  <div class="col-lg-3" style="font-weight: bolder;">결제방법</div> <div class="col-lg-9">
                  	${orderList.o_payment_list}
                  </div>
               </div>
               <div class="row" style="text-align: left; margin:5px 10px;">
                  <div class="col-lg-3" style="font-weight: bolder;">주문시각</div> <div class="col-lg-9">
                  	<fmt:formatDate value="${orderList.o_order_date}" pattern="yyyy.MM.dd  |  a hh:mm"/>
                  </div>
               </div>
               <div class="row" style="text-align: left; margin:5px 10px;">
                  <div class="col-lg-3" style="font-weight: bolder;">요청사항</div> <div class="col-lg-9">
                  	${orderList.o_request}
                  </div>
               </div>
               <div class="row" style="text-align: left; margin:5px 10px 15px 10px;">
                  <div class="col-lg-3" style="font-weight: bolder;">주문번호</div> <div class="col-lg-9">
                  	${orderList.o_code}
                  </div>
               </div>
             </div>
              <div class="order_product" style="border-bottom: 1px solid rgba(0, 0, 0, 0.459); margin: 15px;">
                <div class="row" style="text-align: left; margin: 15px;">
                  <div class="row" style="margin-bottom:15px;padding-bottom:5px;border-bottom:1px solid rgba(0, 0, 0, 0.1);font-weight: 900;font-size:16px;">
	                  <div class="col-lg-7">주문정보 </div>
	                  <div class="col-lg-2">수량</div> 
	                  <div class="col-lg-3" style="text-align: right;padding-right:30px;">금액</div>
                  </div>
<c:forEach var="orderDetailList" items="${orderDetailList}" varStatus="vvs">
<c:if test="${orderList.o_code eq orderDetailList.o_code}">
                  <div class="row" style="margin-bottom:15px;font-size:14px;">
	                  <!-- OPB -->
	                  <div class="col-lg-7" style="font-weight: bolder;">${orderDetailList.m_name}  </div>
	                  <div class="col-lg-2">${orderDetailList.b_quantity} 개</div>
					  <div class="col-lg-3" style="text-align: right;"><fmt:formatNumber value="${orderDetailList.b_total_price}" pattern="###,###"/> 원</div>
					  <div class="col-lg-12">${orderDetailList.opb_name}(<fmt:formatNumber value="${orderDetailList.opb_price}" pattern="###,###"/> 원)</div>
					  <!-- /OPB -->
					  <c:if test="${orderDetailList.op_code1 ne ' '}">
							<div class="col-lg-12" style="font-size:12px;">└ ${orderDetailList.op_name1} (<fmt:formatNumber value="${orderDetailList.op_price1}" pattern="###,###"/> 원)</div>
						</c:if>	
						<c:if test="${orderDetailList.op_code2 ne ' '}">
							<div class="col-lg-12" style="font-size:12px;">└ ${orderDetailList.op_name2} (<fmt:formatNumber value="${orderDetailList.op_price2}" pattern="###,###"/> 원)</div>
						</c:if>	
						<c:if test="${orderDetailList.op_code3 ne ' '}">	
							<div class="col-lg-12" style="font-size:12px;">└ ${orderDetailList.op_name3} (<fmt:formatNumber value="${orderDetailList.op_price3}" pattern="###,###"/> 원)</div>
						</c:if>	
						<c:if test="${orderDetailList.op_code4 ne ' '}">	
							<div class="col-lg-12" style="font-size:12px;">└ ${orderDetailList.op_name4} (<fmt:formatNumber value="${orderDetailList.op_price4}" pattern="###,###"/> 원)</div>
						</c:if>	
						<c:if test="${orderDetailList.op_code5 ne ' '}">	
							<div class="col-lg-12" style="font-size:12px;">└ ${orderDetailList.op_name5} (<fmt:formatNumber value="${orderDetailList.op_price5}" pattern="###,###"/> 원)</div>
						</c:if>
                  </div>
</c:if>
</c:forEach>
                  <br>
                  <div class="col-lg-9" style="font-weight: bolder; font-size: 16px; color: black;padding:0;">총 금액</div>
                  <div class="col-lg-3" style="font-weight: bolder; font-size: 16px; text-align: right; padding:0;"><fmt:formatNumber value="${orderList.o_total_price}" pattern="###,###"/> 원</div>
                
                </div>
                
              </div>
		</div><!-- <div class="col-lg-12"> -->
	</div><!-- wrap body -->
			<div class="modal-footer" style="background:#eaeaea;border-radius: 0 0 10px 10px">
				<button data-dismiss="modal" class="btn btn-default"
					type="button">확인</button>
			</div>
		</div>
	</div>
</div>
<!-- Modal END -->
        </c:forEach>
        
      </tbody>
      
  </table>

        

</div>
</div>
    

        
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
  
  <script src="https://cdn.jsdelivr.net/npm/simple-datatables@3.2.0/dist/umd/simple-datatables.js"></script>
  <script src="resources/assets/js/admin/datatable/datatables-simple-demo.js"></script>

</body>

</html>
