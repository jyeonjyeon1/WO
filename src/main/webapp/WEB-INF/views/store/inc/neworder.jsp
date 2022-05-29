<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<input type="hidden" id="hiddenindexa${inputIndex}" value="${inputIndex}"/>
<input type="hidden" id="o_codea${inputIndex}" value="${newOrder.o_code}"/>
<div id="order_wrapa${inputIndex}" class="col-lg-3"
	style="margin-bottom: 20px;">
	<div class="order_card box_shadowzz">
		<div class="row">
			<label id="order_statea${inputIndex}"
				class="order_status daegi">접수대기</label>
		</div>

		<div class="info_user">
			<table style="margin-left: 30px;">

				<tr>
					<td id="indexCounta${inputIndex}" rowspan="2"
						style="font-size: 50px; padding-right: 15px; color: black; font-weight: bolder;">
						0</td>
					<td style="font-size: 20px; color: #000; padding: 0;">Takeout</td>
					<td rowspan="2" style="padding-left: 30px;"><a
						class="order_detail" data-toggle="modal"
						href="#orderDetaila${inputIndex}">상세보기</a></td>
				</tr>
				<tr>
					<td style="padding-bottom: 15px;">${(newOrder.u_name).substring(0,1)}**</td>
				</tr>
			</table>

		</div>
		<!-- info_user -->

		<div class="info_menu">
			<h4 style="color: black;">${newOrder.o_list}</h4>
			<h5><fmt:formatDate value="${newOrder.o_order_date}"
					pattern="a hh:mm" />
			</h5>
		</div>
		<div class="col-lg-12" style="text-align: center;">

			<button
				class="order_Btn daegi"
				id="order_Btna${inputIndex}" onclick="orderChangea${inputIndex}()">주문접수하기
			</button>

		</div>
	</div>
	<!-- order_card -->
</div>
<!-- col-lg-3 -->
<script>
function orderChangea${inputIndex}(){
	let indexa = parseInt($("#hiddenindexa${inputIndex}").val());
	let o_code = $("#o_codea${inputIndex}").val();
	let o_order_state = "";
	if($("#order_Btna${inputIndex}").hasClass("daegi")==true){//접수대기 상태 -> 준비중으로 변경
		//버튼 색 변경
		$("#order_statea${inputIndex}").removeClass("daegi");
		$("#order_statea${inputIndex}").addClass("making_drink");
		$("#order_Btna${inputIndex}").removeClass("daegi");
		$("#order_Btna${inputIndex}").addClass("making_drink");
		
		//글자 변경
		document.getElementById("order_statea${inputIndex}").innerText = "준비중";
		document.getElementById("order_Btna${inputIndex}").innerText = "준비완료";
		o_order_state = "junbijung";
	}else if($("#order_Btna${inputIndex}").hasClass("making_drink")==true){//준비중 상태 ->준비완료로 바꿀거임
		//버튼 색 변경
		$("#order_statea${inputIndex}").removeClass("making_drink");
		$("#order_statea${inputIndex}").addClass("drink_ready");
		$("#order_Btna${inputIndex}").removeClass("making_drink");
		$("#order_Btna${inputIndex}").addClass("drink_ready");
		
		//글자 변경
		document.getElementById("order_statea${inputIndex}").innerText = "준비완료";
		document.getElementById("order_Btna${inputIndex}").innerText = "전달완료";
		o_order_state = "junbiwan";
	}else if($("#order_Btna${inputIndex}").hasClass("drink_ready")==true){//준비완료 상태 -> 전달완료로 바꾸면서 화면에서 삭제
		for(i=1;i<20;i++){
			try{
				var zz = i+indexa
				var indexCount = document.getElementById("indexCounta"+zz.toString());
				var imsi = parseInt(indexCount.innerText)-1;
				indexCount.innerText = imsi;
			}catch(error){}
		}
		$("#order_wrapa${inputIndex}").remove();
		o_order_state = "byedrink"	;	
	}
	var param = {
		"o_code" : o_code,
		"o_order_state" : o_order_state
	}
	
	$.ajax({
        type: "POST",
        url: "/changeOState.store",
        data: JSON.stringify(param),
        dataType: "json",
        contentType: "application/json",
     success:function(data){
    	 Swal.fire({
   	        icon: "success",
   	        title: "상태 변경 완료",
   	        showConfirmButton: false,
   	        timer: 1500
   	    });
     },
     error:function(data){
        console.log("장바구니 삭제 통신에러");
     }
  }); //ajax 끝
	
	
//	앞에 숫자들이 커짐
//	 	for(i=0;i<=index;i++){
//			var indexCount = document.getElementById("indexCount"+i.toString());
//			var change = i+2;
//			indexCount.innerText = change;
//		}
}

</script>
<!-- Modal -->
<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog"
	tabindex="-1" id="orderDetaila${inputIndex}" class="modal fade"
	style="margin: 20px auto 0;">
	<div class="modal-dialog store modal_centerr">
		<div class="modal-content">
			<div class="modal-header_store"
				style="background-color: #ed4759; height: 50px;">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" style="padding-top: 7px">${newOrder.o_code} 
					주문상세</h4>
			</div>
			<!-- 	정보시작 -->
			<div class="modal_wrapbodyy"
				style="height: 500px; background: #eaeaea; padding: 30px 30px 0; color: black;">
				<div class="col-lg-12">
					<div class=""
						style="border-bottom: 1px solid rgba(0, 0, 0, 0.459); margin: 15px;">
						<div class="row" style="text-align: left; margin: 5px 10px;">
							<div class="col-lg-3" style="font-weight: bolder;">결제방법</div>
							<div class="col-lg-9">${newOrder.o_payment_list}</div>
						</div>
						<div class="row" style="text-align: left; margin: 5px 10px;">
							<div class="col-lg-3" style="font-weight: bolder;">주문시각</div>
							<div class="col-lg-9">
								<fmt:formatDate value="${newOrder.o_order_date}"
									pattern="yyyy.MM.dd  |  a hh:mm" />
							</div>
						</div>
						<div class="row" style="text-align: left; margin: 5px 10px;">
							<div class="col-lg-3" style="font-weight: bolder;">요청사항</div>
							<div class="col-lg-9">${newOrder.o_request}</div>
						</div>
						<div class="row"
							style="text-align: left; margin: 5px 10px 15px 10px;">
							<div class="col-lg-3" style="font-weight: bolder;">주문번호</div>
							<div class="col-lg-9">${newOrder.o_code}</div>
						</div>
					</div>
					<div class="order_product"
						style="border-bottom: 1px solid rgba(0, 0, 0, 0.459); margin: 15px;">
						<div class="row" style="text-align: left; margin: 15px;">
							<div class="row"
								style="margin-bottom: 15px; padding-bottom: 5px; border-bottom: 1px solid rgba(0, 0, 0, 0.1); font-weight: 900; font-size: 16px;">
								<div class="col-lg-7">주문정보</div>
								<div class="col-lg-2">수량</div>
								<div class="col-lg-3"
									style="text-align: right; padding-right: 30px;">금액</div>
							</div>
							<c:forEach var="orderNewDetail" items="${orderNewDetail}"
								varStatus="vvs">
								<c:if test="${newOrder.o_code eq orderNewDetail.o_code}">
									<div class="row" style="margin-bottom: 15px; font-size: 14px;">
										<!-- OPB -->
										<div class="col-lg-7" style="font-weight: bolder;">${orderNewDetail.m_name}
										</div>
										<div class="col-lg-2">${orderNewDetail.b_quantity} 개</div>
										<div class="col-lg-3" style="text-align: right;">
											<fmt:formatNumber value="${orderNewDetail.b_total_price}"
												pattern="###,###" />
											원
										</div>
										<div class="col-lg-12">${orderNewDetail.opb_name}(<fmt:formatNumber
												value="${orderNewDetail.opb_price}" pattern="###,###" />
											원)
										</div>
										<!-- /OPB -->
										<c:if test="${orderNewDetail.op_code1 ne ' '}">
											<div class="col-lg-12" style="font-size: 12px;">
												└ ${orderNewDetail.op_name1} (
												<fmt:formatNumber value="${orderNewDetail.op_price1}"
													pattern="###,###" />
												원)
											</div>
										</c:if>
										<c:if test="${orderNewDetail.op_code2 ne ' '}">
											<div class="col-lg-12" style="font-size: 12px;">
												└ ${orderNewDetail.op_name2} (
												<fmt:formatNumber value="${orderNewDetail.op_price2}"
													pattern="###,###" />
												원)
											</div>
										</c:if>
										<c:if test="${orderNewDetail.op_code3 ne ' '}">
											<div class="col-lg-12" style="font-size: 12px;">
												└ ${orderNewDetail.op_name3} (
												<fmt:formatNumber value="${orderNewDetail.op_price3}"
													pattern="###,###" />
												원)
											</div>
										</c:if>
										<c:if test="${orderNewDetail.op_code4 ne ' '}">
											<div class="col-lg-12" style="font-size: 12px;">
												└ ${orderNewDetail.op_name4} (
												<fmt:formatNumber value="${orderNewDetail.op_price4}"
													pattern="###,###" />
												원)
											</div>
										</c:if>
										<c:if test="${orderNewDetail.op_code5 ne ' '}">
											<div class="col-lg-12" style="font-size: 12px;">
												└ ${orderNewDetail.op_name5} (
												<fmt:formatNumber value="${orderNewDetail.op_price5}"
													pattern="###,###" />
												원)
											</div>
										</c:if>
									</div>
								</c:if>
							</c:forEach>
							<br>
							<div class="col-lg-9"
								style="font-weight: bolder; font-size: 16px; color: black; padding: 0;">총
								금액</div>
							<div class="col-lg-3"
								style="font-weight: bolder; font-size: 16px; text-align: right; padding: 0;">
								<fmt:formatNumber value="${newOrder.o_total_price}"
									pattern="###,###" />
								원
							</div>

						</div>

					</div>



				</div>
				<!-- <div class="col-lg-12"> -->




			</div>
			<!-- wrap body -->
			<div class="modal-footer"
				style="background: #eaeaea; border-radius: 0 0 10px 10px">
				<button data-dismiss="modal" class="btn btn-default" type="button">확인</button>
			</div>
		</div>
	</div>
</div>