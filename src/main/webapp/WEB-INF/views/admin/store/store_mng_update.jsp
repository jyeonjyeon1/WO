<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>워킹오더 관리자 페이지</title>

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
          <p class="sidebar-title">설정</p>
          <li class="sub-menu">
            <a href="../index.admin">
              <i class="fa fa-h-square"></i>
              <span>Home</span>
            </a>
          </li>
          <li class="sub-menu">
            <a id="testid" class="dcjq-parent testjirong" href="javacript:;">
              <i class="fa fa-navicon"></i>
              <span>All Menu</span>
            </a>
          </li>
          <p class="sidebar-title">마이 메뉴</p>
          <li class="sub-menu">
            <a id="user-manage" href="javascript:void(0);">
              <i class="fa fa-user" style="font-size: 15px;""></i>
              <span>&nbsp;회원 관리</span>
              </a>
            <ul class=" sub">
          <li><a id="user-mng" href="user_mng.admin">회원 관리</a></li>
          <li><a id="coupon-mng" href="coupon_mng.admin">쿠폰 관리</a></li>
          <li><a id="point-mng" href="point_mng.admin">포인트 관리</a></li>
          <li><a id="connect-hist" href="connect_hist.admin">접속 이력</a></li>
        </ul>
        </li>
        <li class="sub-menu dcjq-parent-li">
          <a id="store-manage" class="active dcjq-parent" href="javascript:;">
            <i class="fa fa-group" style="font-size: 12px;"></i>
            <span>매장 관리</span>
          </a>
          <ul class="sub">
            <li class="active"><a id="store-mng" href="store_mng.admin">매장 관리</a></li>
            <li><a id="store-menu" href="store_menu.admin">매장 메뉴 관리</a></li>
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
            <li><a id="refund-order" href="refund_order.admin">환불 주문 관리</a></li>
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
            <li><a id="ka-tmplt" href="ka_tmplt.admin">알림톡 템플릿</a></li>
            <li><a id="ka-hist" href="ka_hist.admin">알림톡 전송이력</a></li>
            <li><a id="mess-send" href="mess_send.admin">문자 전송</a></li>
            <li><a id="mess-send-group" href="mess_send_group.admin">단체 문자 전송</a></li>
            <li><a id="mess-hist" href="mess_hist.admin">문자 전송 이력</a></li>
          </ul>
        </li>
        <li class="sub-menu">
          <a id="settlement" href="javascript:;">
            <i class=" fa fa-krw"></i>
            <span>정산</span>
          </a>
          <ul class="sub">
            <li><a id="pg-comm" href="pg_comm.admin">PG 수수료</a></li>
            <li><a id="pg-stlmt" href="pg_stlmt.admin">PG 정산</a></li>
            <li><a id="store-rev" href="store_rev.admin">매장별 수익</a></li>
            <li><a id="store-stlmt" href="store_stlmt.admin">매장별 정산</a></li>
            <li><a id="stlmt-hist" href="stlmt_hist.admin">정산 내역</a></li>
          </ul>
        </li>
        <li class="sub-menu">
          <a id="statistics" href="javascript:;">
            <i class=" fa fa-bar-chart-o"></i>
            <span>통계</span>
          </a>
          <ul class="sub">
            <li><a id="order-period" href="order_period.admin">기간별 주문 통계</a></li>
            <li><a id="store-sales" href="store_sales.admin">매장별 매출 통계</a></li>
            <li><a id="user-sales" href="user_sales.admin">사용자별 매출 통계</a></li>
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
    <!-- allmenu import -->
    <%@ include file="../inc/admin_allmenu.jsp" %>
      <section class="wrapper site-min-height">
        <h3><i class="fa fa-angle-right"></i> 매장 수정</h3>
        <div class="row mt" style="margin-top: 5px;">
          <!-- 왼쪽 영역 시작 -->
          <div class="col-lg-7" style="min-width: 500px;">
            <div class="card-header" style="font-size: 16px;">
              <i class="fa fa-plus-circle" style="font-size: 14px;"></i>
              매장 정보
            </div>
            <div class="form-panel" style="margin-top:0; padding-bottom: 38px; border-radius: 0 0 10px 10px;">
              <form class="form-horizontal style-form" method="get">
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">매장명</label>
                  <div class="col-sm-6">
                    <input class="form-control" type="text" value="워킹커피 종로점">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">코드</label>
                  <div class="col-sm-4">
                    <input class="form-control" type="text" value="8618501327" disabled>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">비밀번호</label>
                  <div class="col-sm-4">
                    <input class="form-control" type="password" placeholder="" value="imsibibeon">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">주소</label>
                  <div class="col-sm-2" >
                    <input class="form-control" id="post__code" type="text" value="03120">
                  </div>
                  <div class="col-sm-6">
                    <input class="form-control" id="road__Address" type="text" value="서울시 종로구 삼일대로28길 14">
                  </div>
                  <div class="col-sm-2" style="margin-top: 2px; ">
                    <input class="grey__button" type="button" onclick="getPostCode()" value="검색">
                  </div>
                  <div class="col-sm-2"> &nbsp;</div>
                  <div class="col-sm-2"> &nbsp;</div>
                  <div class="col-sm-3" >
                    <input class="form-control" id="extra__Address" type="text" value="(낙원동)">
                  </div>
                  <div class="col-sm-4" >
                    <input class="form-control" id="detail__Address" type="text" value="1004호">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">전화번호</label>
                  <div class="col-sm-4">
                    <input class="form-control" type="text" value="0212345678">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">이메일</label>
                  <div class="col-sm-5">
                    <input class="form-control" type="email" value="walking@walking.com">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">서류</label>
                  <div class="col-sm-6" style="margin-top: 2px; padding:0 0 0 15px;">
                    <input class="grey__button" type="button" onclick="" value="사업자등록증" style="margin-right: 5px;">
                    <input class="grey__button" type="button" onclick="" value="통장사본">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">영업시간</label>
                  <div class="col-sm-10">
                    <input class="form-control round-form" type="time" value="10:00"
                      style="width: 20%;display: inline-block;margin-right: 10px;"> ~
                    <input class="form-control round-form" type="time" value="23:00"
                      style="width: 20%;display: inline-block;margin-left: 10px;">
                  </div>
                </div>

                
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">주차여부</label>
                  <div class="col-sm-10" style="padding: 0;">
                    <div class="col-sm-7">
                      <label class="radio-inline">
                        <input type="radio" name="inRad" id="inlineRadio1" value="option1"> 가능
                      </label>
                      <label class="radio-inline">
                        <input type="radio" name="inRad" id="inlineRadio2" value="option2" checked> 불가
                      </label>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">매장사용</label>
                  <div class="col-sm-10" style="padding: 0;">
                    <div class="col-sm-7">
                      <label class="radio-inline">
                        <input type="radio" name="inRad2" id="inlineRadio3" value="option1"> 가능
                      </label>
                      <label class="radio-inline">
                        <input type="radio" name="inRad2" id="inlineRadio4" value="option2" checked> 불가
                      </label>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">특이사항</label>
                  <div class="col-sm-8">
                    <input class="form-control" type="textarea" value="노키즈존">
                    
                  </div>

                  <!--
                    id="focusedInput" 빨간 테두리
                    id="disabledInput" 못고치는거
                  -->
                </div>



                <button type="button" onclick="window.history.back()" class="btn btn-theme"
                  style="float: right; margin-left: 10px;">뒤로</button>
                <button type="button" onclick="location.href='store_mng.html'" class="btn btn-theme"
                  style="float: right;">
                  수정
                </button>
              </form>
            </div>
          </div>
          <!-- 왼쪽영역 끝 -->

          <!-- 오른쪽 사진 영역 시작 -->
          <div class="col-lg-3" style="min-width: 450px; padding: 0;">
            <div class="card-header" style="font-size: 16px;">
              <i class="fa fa-plus-circle" style="font-size: 14px;"></i>
              매장 정보
            </div>
            <div class="form-panel" style="margin-top:0; padding-bottom: 38px; border-radius: 0 0 10px 10px;">
              <form class="form-horizontal style-form" method="get">
                <div class="row mt">
                  <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
                    <div class="project-wrapper">
                      <div class="project">
                        <div class="photo-wrapper">
                          <div class="photo store_image_small">
                            <a class="fancybox" href="resources/assets/images/admin/doggy_1.jpg"><img class="img-responsive" src="resources/assets/images/admin/doggy.jpg" alt=""></a>
                          </div>
                          <div class="overlay"></div>
                        </div>
                      </div>
                    </div>
                    <div class="row" style="padding:0 15px">
                      <div class="col-lg-7" style="padding: 0;">
                        <input id="" type="file" class="cut__side" value="수정" name="">

                      </div>
                      <div class="col-lg-5">
                        <input id="" type="button" class="cut__side" value="제거">

                      </div>
                    </div>
                  </div>
                  <!-- col-lg-4 -->
                  <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
                    <div class="project-wrapper">
                      <div class="project">
                        <div class="photo-wrapper">
                          <div class="photo store_image_small">
                            <a class="fancybox" href="resources/assets/images/admin/portfolio/port04.jpg"><img class="img-responsive" src="resources/assets/images/admin/portfolio/port04.jpg" alt=""></a>
                          </div>
                          <div class="overlay"></div>
                        </div>
                      </div>
                      <div class="row" style="padding:0 15px">
                        <div class="col-lg-7" style="padding: 0;">
                          <input id="" type="file" class="cut__side" value="수정" name="">
  
                        </div>
                        <div class="col-lg-5">
                          <input id="" type="button" class="cut__side" value="제거">
  
                        </div>
                      </div>
                    </div>
                    
                  </div>
                  <!-- col-lg-4 -->
                  <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
                    <div class="project-wrapper">
                      <div class="project">
                        <div class="photo-wrapper">
                          <div class="photo store_image_small">
                            <a class="fancybox" href="resources/assets/images/admin/portfolio/port06.jpg"><img class="img-responsive center-block" src="resources/assets/images/admin/portfolio/port06.jpg" alt=""></a>
                          </div>
                          <div class="overlay"></div>
                        </div>
                      </div>
                    </div>
                    <div class="row" style="padding:0 15px">
                      <div class="col-lg-7" style="padding: 0;">
                        <input id="" type="file" class="cut__side" value="수정" name="">

                      </div>
                      <div class="col-lg-5">
                        <input id="" type="button" class="cut__side" value="제거">

                      </div>
                    </div>
                  </div>
                  <!-- col-lg-4 -->
                </div>



                <button type="button" onclick="" class="btn btn-theme"
                  style="float: right;">
                  수정
                </button>
              </form>
            </div>
          </div>
        </div>
      </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->



    <!-- 푸더 import -->
		<%@ include file="../inc/admin_footer.jsp" %>
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
  <script src="resources/assets/js/admin/fancybox/jquery.fancybox.js"></script>
  <script type="text/javascript">
    $(function() {
      //    fancybox
      jQuery(".fancybox").fancybox();
    });
  </script>
  <!-- 다음 지도 api -->
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script>
    function getPostCode() {
      new daum.Postcode({
        oncomplete: function (data) {
          // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

          // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
          // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
          var roadAddr = data.roadAddress; // 도로명 주소 변수
          var extraRoadAddr = ''; // 참고 항목 변수

          // 법정동명이 있을 경우 추가한다. (법정리는 제외)
          // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
          if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
            extraRoadAddr += data.bname;
          }
          // 건물명이 있고, 공동주택일 경우 추가한다.
          if (data.buildingName !== '' && data.apartment === 'Y') {
            extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
          }
          // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
          if (extraRoadAddr !== '') {
            extraRoadAddr = ' (' + extraRoadAddr + ')';
          }

          // 우편번호와 주소 정보를 해당 필드에 넣는다.
          document.getElementById('post__code').value = data.zonecode;
          document.getElementById("road__Address").value = roadAddr;

          // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
          if (roadAddr !== '') {
            document.getElementById("extra__Address").value = extraRoadAddr;
          } else {
            document.getElementById("extra__Address").value = '';
          }

          document.getElementById("detail__Address").focus();
        }
      }).open();
    }
  </script>
</body>

</html>