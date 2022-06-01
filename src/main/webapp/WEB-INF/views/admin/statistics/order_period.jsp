<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  
  
  <title>워킹오더 관리자 페이지</title>

  <!-- Favicons -->
  <link href="resources/assets/images/admin/logo/logo_only.svg" rel="icon">
  <!-- 테이블용 css -->
  <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />

</head>

<body>
  <section id="container">
        <!-- 헤더 import -->
    <%@ include file="../inc/admin_header.jsp" %>
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a><img src="resources/assets/images/admin/doggy.jpg" class="img-circle" width="80"></a></p>
          <h5 class="centered">김 버터</h5>
          <p class="sidebar-title" >설정</p>
          <li class="sub-menu">
            <a href="../index.admin">
              <i class="fa fa-h-square"></i>
              <span>Home</span>
              </a>
          </li>
          <li class="sub-menu">
            <a id= "testid" class="dcjq-parent testjirong" href="javacript:;">
              <i class="fa fa-navicon"></i>
              <span>All Menu</span>
              </a>
          </li>
          <p class="sidebar-title" >마이 메뉴</p>
          <li class="sub-menu">
            <a id="user-manage" href="javascript:void(0);">
              <i class="fa fa-user" style="font-size: 15px;""></i>
              <span>&nbsp;회원 관리</span>
              </a>
            <ul class="sub">
              <li><a id="user-mng" href="user_mng.admin">회원 관리</a></li>
              <li><a id="coupon-mng" href="coupon_mng.admin">쿠폰 관리</a></li>
              <li><a id="point-mng" href="point_mng.admin">포인트 관리</a></li>
              <li><a id="connect-hist" href="connect_hist..admin">접속 이력</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a id="store-manage" href="javascript:;">
              <i class="fa fa-group" style="font-size: 12px;"></i>
              <span>매장 관리</span>
              </a>
            <ul class="sub">
              <li><a id="store-mng" href="store_mng.admin">매장 관리</a></li>
              <li><a id="store-menu" href="pending_menuimg.admin">매장 메뉴 관리</a></li>
              <li><a id="store-pending" href="store_pending.admin">승인 대기</a></li>
              <li><a id="join-inq" href="join_inq.admin">입점 문의</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a id="order-manage" href="javascript:;">
              <i class="fa fa-shopping-cart"></i>
              <span>주문 관리</span>
              </a>
            <ul class="sub">
              <li><a id="total-order" href="total_order.admin">전체 주문 관리</a></li>
              <li><a id="store-order" href="store_order.admin">매장별 주문 관리</a></li>
              <li><a id="cancel-order" href="cancel_order.admin">취소 주문 관리</a></li>
              
            </ul>
          </li>
          <li class="sub-menu">
            <a id="board-manage" href="javascript:;">
              <i class="fa fa-pencil-square-o" style="font-size: 13px;"></i>
              <span>보드 관리</span>
              </a>
            <ul class="sub">
              <li><a id="notices" href="notices.admin">공지사항</a></li>
              <li><a id="faq-mng" href="faq_mng.admin">FAQ 관리</a></li>
              
              <li><a id="review-mng" href="review_mng.admin">리뷰 관리</a></li>
              <li><a id="inquiry" href="inquiry.admin">1:1 문의</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a id="page-manage" href="javascript:;">
              <i class="fa fa-sticky-note"></i>
              <span>페이지 관리</span>
              </a>
            <ul class="sub">
              <li><a id="banner-mng" href="banner_mng.admin">배너 관리</a></li>
              <li><a id="banner-mng" href="drink_recom.admin">오늘의 음료</a></li>
              <li><a id="banner-mng" href="searchbar_mng.admin">검색어 관리</a></li>
              <li><a id="terms-mng" href="terms_mng.admin">약관 관리</a></li>
              <li><a id="policy-mng" href="policy_mng.admin">정책 관리</a></li>
              <li><a id="doc-form" href="doc_form.admin">증빙서류</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a id="mess" href="javascript:;">
              <i class="fa fa-envelope-open-o" style="font-size: 13px;"></i>
              <span>메세지 관리</span>
              </a>
            <ul class="sub">
              
              
              <li><a id="mess-send" href="mess_send.admin">문자 전송</a></li>
              <li><a id="mess-send-group" href="mess_send_group.admin">단체 문자 전송</a></li>
              <li><a id="mess-hist" href="mess_hist.admin">문자 전송 이력</a></li>
            </ul>
          </li>
          
          <li class="sub-menu dcjq-parent-li">
            <a id="statistics" class="active dcjq-parent" href="javascript:;">
              <i class=" fa fa-bar-chart-o"></i>
              <span>통계</span>
              </a>
            <ul class="sub">
              
              <li><a id="store-sales" href="store_sales.admin">매장별 매출 통계</a></li>
              
              <li><a id="by-chart" href="by_chart.admin">표로 확인</a></li>
              <li><a id="by-graph" href="by_graph.admin">그래프로 확인</a></li>
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
<%@ include file="../inc/admin_allmenu.jsp" %>
    <!-- allmenu import -->
    	
    	 <section class="wrapper" style="height: 1500px;">
       

  
      <div class="card-header" style="font-size: 16px;">
        <i class="fa fa-plus-circle" style="font-size: 14px; margin-bottom: 15px; "></i>지난주문 관리
        <div class="row">
         
          <h4> &nbsp;&nbsp;&nbsp; 기간을 설정해 주세요 :)</h4>
        </div> 
        <div class="row">
        <div class="col-lg-3" style="margin-bottom: 20px;"> 
<input id="dateOneday" name="dateOneday" class="form-control round-form" type="date" value="년.월.일" style="width: 70%; display: inline-block; float:left;"> 
                        
</div>
<div class="col-lg-3" style="margin-bottom: 20px;"> 
<input id="dateOneday2" name="dateOneday2" class="form-control round-form" type="date" value="년.월.일" style="width: 70%; display: inline-block; float:left;"> 
                        
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
    	
    	
      
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->



    <!-- 푸더 import -->
		<%@ include file="../inc/admin_footer.jsp" %>
    <!--footer end-->
  </section>
 
  <!--script for this page-->
  
  <script src="resources/assets/js/admin/calendar-conf-events.js"></script>
</body>

</html>
