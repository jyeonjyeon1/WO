<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 테스트</title>
</head>
<body>
  <%@ include file="/WEB-INF/views/user/inc/header.jsp" %>
  <div class="container" style="max-width:400px;">
	  <form >
			<div class="row">
				<div class="col-12">
					<input type="text" name="u_id" id="u_id" placeholder="아이디 (필수)"
						class="reg-form-control" autofocus />
				</div>
			</div>
			<div class="row">
				<div class="col-12 mt-10">
					<input type="text" name="u_password" id="u_password"
						placeholder="비밀번호 (필수)" class="reg-form-control">
				</div>
			</div>
			<div class="row">
				<div class="col-12 mt-10">
					<button type="button" onclick="payment()">결제</button>
				</div>
			</div>
	</form>
  
  </div>
  <%@ include file="/WEB-INF/views/user/inc/footer.jsp" %>
  <script src="resources/assets/js/jquery-3.6.0.js"></script>
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
  <script>
  function payment(){
	  IMP.init('imp24090998'); //iamport 대신 자신의 "가맹점 식별코드"를 사용
	  IMP.request_pay({
	    pg: "kcp",
	    pay_method: "card",
	    merchant_uid : 'our_ordernumber2',
	    name : '결제테스트',
	    amount : 100,
	    buyer_email : 'etgohome8@gmail.com',
	    buyer_name : '홍길동',
	    buyer_tel : '010-1234-5678',
	    buyer_addr : '서울특별시 강남구 삼성동',
	    buyer_postcode : '123-456',
	    m_redirect_url: '/index.user'
	  }, function (rsp) { // callback
	      if (rsp.success) {
	        alert("결제완료");
	        //location.href="ordercomplete";
	      } else {
			alert("결제실패");
	      }
	  });
  }
  </script>
</body>
</html>