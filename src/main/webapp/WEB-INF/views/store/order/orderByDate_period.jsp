<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

 <c:forEach items="${dateOPeriod}" var="dateOPeriod" varStatus="vs">
        <tr>
          <td>${dateOPeriod.o_code }</td>
          <td>
          <fmt:formatDate value="${dateOPeriod.o_order_date}" pattern="yyyy.MM.dd  |  a hh:mm"/></td>
          <td>${dateOPeriod.o_list }</td>
          <td>${dateOPeriod.o_total_price }</td>
          <td>${dateOPeriod.u_name }</td>
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
				<h4 class="modal-title" style="padding-top:7px">${dateOPeriod.o_code} 주문상세</h4>
			</div>
			<!-- 	정보시작 -->
	<div class="modal_wrapbodyy"  style="height:500px;background:#eaeaea;padding:30px 30px 0;color:black;">
		<div class="col-lg-12">
			<div class="" style="border-bottom: 1px solid rgba(0, 0, 0, 0.459); margin: 15px;">
                <div class="row" style="text-align: left; margin:5px 10px;">
                  <div class="col-lg-3" style="font-weight: bolder;">결제방법</div> <div class="col-lg-9">
                  	${dateOPeriod.o_payment_list}
                  </div>
               </div>
               <div class="row" style="text-align: left; margin:5px 10px;">
                  <div class="col-lg-3" style="font-weight: bolder;">주문시각</div> <div class="col-lg-9">
                  	<fmt:formatDate value="${dateOPeriod.o_order_date}" pattern="yyyy.MM.dd  |  a hh:mm"/>
                  </div>
               </div>
               <div class="row" style="text-align: left; margin:5px 10px;">
                  <div class="col-lg-3" style="font-weight: bolder;">요청사항</div> <div class="col-lg-9">
                  	${dateOPeriod.o_request}
                  </div>
               </div>
               <div class="row" style="text-align: left; margin:5px 10px 15px 10px;">
                  <div class="col-lg-3" style="font-weight: bolder;">주문번호</div> <div class="col-lg-9">
                  	${dateOPeriod.o_code}
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
<c:forEach var="dateOPeriodDt" items="${dateOPeriodDt}" varStatus="vvs">
<c:if test="${dateOPeriod.o_code eq dateOPeriodDt.o_code}">
                  <div class="row" style="margin-bottom:15px;font-size:14px;">
	                  <!-- OPB -->
	                  <div class="col-lg-7" style="font-weight: bolder;">${dateOPeriodDt.m_name}  </div>
	                  <div class="col-lg-2">${dateOPeriodDt.b_quantity} 개</div>
					  <div class="col-lg-3" style="text-align: right;"><fmt:formatNumber value="${dateOPeriodDt.b_total_price}" pattern="###,###"/> 원</div>
					  <div class="col-lg-12">${dateOPeriodDt.opb_name}(<fmt:formatNumber value="${dateOPeriodDt.opb_price}" pattern="###,###"/> 원)</div>
					  <!-- /OPB -->
					  <c:if test="${dateOPeriodDt.op_code1 ne ' '}">
							<div class="col-lg-12" style="font-size:12px;">└ ${dateOPeriodDt.op_name1} (<fmt:formatNumber value="${dateOPeriodDt.op_price1}" pattern="###,###"/> 원)</div>
						</c:if>	
						<c:if test="${dateOPeriodDt.op_code2 ne ' '}">
							<div class="col-lg-12" style="font-size:12px;">└ ${dateOPeriodDt.op_name2} (<fmt:formatNumber value="${dateOPeriodDt.op_price2}" pattern="###,###"/> 원)</div>
						</c:if>	
						<c:if test="${dateOPeriodDt.op_code3 ne ' '}">	
							<div class="col-lg-12" style="font-size:12px;">└ ${dateOPeriodDt.op_name3} (<fmt:formatNumber value="${dateOPeriodDt.op_price3}" pattern="###,###"/> 원)</div>
						</c:if>	
						<c:if test="${dateOPeriodDt.op_code4 ne ' '}">	
							<div class="col-lg-12" style="font-size:12px;">└ ${dateOPeriodDt.op_name4} (<fmt:formatNumber value="${dateOPeriodDt.op_price4}" pattern="###,###"/> 원)</div>
						</c:if>	
						<c:if test="${dateOPeriodDt.op_code5 ne ' '}">	
							<div class="col-lg-12" style="font-size:12px;">└ ${dateOPeriodDt.op_name5} (<fmt:formatNumber value="${dateOPeriodDt.op_price5}" pattern="###,###"/> 원)</div>
						</c:if>
                  </div>
</c:if>
</c:forEach>
                  <br>
                  <div class="col-lg-9" style="font-weight: bolder; font-size: 16px; color: black;padding:0;">총 금액</div>
                  <div class="col-lg-3" style="font-weight: bolder; font-size: 16px; text-align: right; padding:0;"><fmt:formatNumber value="${dateOPeriod.o_total_price}" pattern="###,###"/> 원</div>
                
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
    