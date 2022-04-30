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
    <!-- aside import -->
    <%@ include file="../inc/admin_aside_open.jsp" %>

    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content"> 
    <!-- allmenu import -->
    <%@ include file="../inc/admin_allmenu.jsp" %>
      <section class="wrapper site-min-height">
        <h3><i class="fa fa-angle-right"></i> 테스트용, 환불주문 일괄 삭제예정</h3>
        <div class="row mt">
          <div class="col-lg-6">
            <div class="modal-dialog store">
              <div class="modal-content">
                <div class="modal-header_store">
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                  <h4 class="modal-title">주문 정보</h4>
                </div>
                <!-- 정보시작 -->
                <div class="modal_wrapbody">
                  <div class="modal-body" style="padding-bottom:0;">
                    <a style="margin-bottom:2px;">주문번호</p>
                    <input type="text" id="" name="name" value="202204110225" class="form-control">
                  </div>
                  <div class="modal-body" style="padding-bottom:0;">
                    <p style="margin-bottom:2px;">주문자</p>
                    <input type="text" id="" name="name" style="width: 30%; display: inline-block;" value="홍길동" class="form-control">
                    <input type="text" id="" name="name" style="width: 30%; display: inline-block;" value="etgohome8" class="form-control">
                    <input type="text" id="" name="name" style="width: 30%; display: inline-block;" value="01012345678" class="form-control">
                  </div>
                  <div class="modal-body" style="padding-bottom:0;">
                    <p style="margin-bottom:2px;">제품</p>
                    <textarea rows="3" id="" name="name" class="form-control">요거트스무디 1
                    </textarea>
                  </div>
                  <div class="modal-body" style="padding-bottom:0;">
                    <p style="margin-bottom:2px;">요청사항</p>
                    <textarea rows="1" id="" name="name" value="8618501327" class="form-control"></textarea>
                  </div>
                  
                  <div class="modal-body" style="padding-bottom:0;">
                    <p style="margin-bottom:2px;">금액</p>
                    <input type="text" id="" name="name" value="5,600" class="form-control" style="width: 30%;display: inline-block;"> 원
                  </div>
                  <div class="modal-body" style="padding-bottom:0;">
                    <p style="margin-bottom:2px;">매장명</p>
                    <input type="text" id="" name="name" value="워킹커피 종로점" class="form-control">
                  </div>
                  <div class="modal-body" style="padding-bottom:0;">
                    <p style="margin-bottom:2px;">상태</p>
                    <input type="text" id="" name="name" value="준비 중" class="form-control">
                  </div>
                  <div class="modal-body" style="padding-bottom:0;">
                    <p style="margin-bottom:2px;">결제방법</p>
                    <input type="text" id="" name="name" value="카드" class="form-control">
                  </div>
  
                  <!-- 마지막 정보는 아래 패딩 유지 -->
                  <div class="modal-body">
                    <p style="margin-bottom:2px;">시간</p>
                    <input type="text" name="email" value="2022.04.06 12:11:02" class="form-control">
                  </div>
                </div>
                <div class="modal-footer">
                  <button data-dismiss="modal" class="btn btn-default" type="button">확인</button>
                  <!-- <button onclick="location.href=''" class="btn btn-theme" type="button">수정</button> -->
                </div>
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
    <%@ include file="../inc/admin_footer.jsp" %>
    <!--footer end-->
  </section>
 
  <!--script for this page-->
  
  
</body>

</html>
