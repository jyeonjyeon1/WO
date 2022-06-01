<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


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
                                        <td>판매건수</td><td>
                                         <c:set var = "total" value = "0" />
								<c:forEach var="orderList" items="${orderList}" varStatus="status"> 
								<c:set var= "total" value="${total + 1}"/>
								</c:forEach>
								${total } 건
                                        </td>
                                    </tr>
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
                                        	<td>${orderList.o_total_price}</td>
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