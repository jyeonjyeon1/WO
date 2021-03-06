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
              <li><a id="connect-hist" href="connect_hist.admin">접속 이력</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a id="store-manage" href="javascript:;">
              <i class="fa fa-group" style="font-size: 12px;"></i>
              <span>매장 관리</span>
              </a>
            <ul class="sub">
              <li><a id="store-mng" href="store_mng.admin">매장 관리</a></li>
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
          <li class="sub-menu dcjq-parent-li">
            <a id="board-manage" class="active dcjq-parent" href="javascript:;">
              <i class="fa fa-pencil-square-o" style="font-size: 13px;"></i>
              <span>보드 관리</span>
              </a>
            <ul class="sub">
              <li><a id="notices" href="notices.admin">공지사항</a></li>
              <li class="active"><a id="faq-mng" href="faq_mng.admin">FAQ 관리</a></li>
              
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
      <section class="wrapper">
        <h3 style="margin-bottom: 5px;"><i class="fa fa-angle-right"></i> FAQ 관리</h3>
        <div class="row mt" style="margin-top: 5px;">
          <!-- 영역 시작 -->

          <div class="col-lg-11" style="min-width: 500px;">
            <div class="card-header" style="font-size: 16px;">
              <i class="fa fa-plus-circle" style="font-size: 14px;"></i>
              FAQ 관리
            </div>

            <div class="form-panel" style="margin-top:0;  border-radius: 0 0 10px 10px;">
              <form class="form-horizontal style-form" method="get">
                <div class="row content-panel" style="border: none; box-shadow: none;padding: 0;margin:0 5px">
                  
                  <!-- /panel-heading -->
                  <div class="panel-body col-lg-12" style="padding: 0 11px 11px 11px;">
                    <div class="tab-content">
                      <!-- 메뉴관리 -->
                      <div id="menu" class="tab-pane active no-padding">
                        <div class="row content-panel" style="border: none; box-shadow: none;padding: 0;margin:0 5px">
                          <!--  / 옵션편집 / 대표메뉴 / 메뉴모음컷 / 주문안내 -->
                          <div class="panel-heading col-lg-12 col-md-12 col-sm-12 no-padding"
                            style="margin-bottom: 5px;">
                            <ul class="nav nav-tabs nav-justified">
                              <li class="active">
                                <a data-toggle="tab" href="#faq__111">TOP FAQ</a>
                              </li>
                              <li>
                                <a data-toggle="tab" href="#faq__222">카드등록</a>
                              </li>
                              <li>
                                <a data-toggle="tab" href="#faq__333">주문및결제</a>
                              </li>
                              <li>
                                <a data-toggle="tab" href="#faq__444">포인트및쿠폰</a>
                              </li>
                              <li>
                                <a data-toggle="tab" href="#faq__555">회원</a>
                              </li>
                              <li>
                                <a data-toggle="tab" href="#faq__555">기타</a>
                              </li>
                              <li>
                                <a href="#"><i class="fa fa-plus"></i></a>
                              </li>
                            </ul>
                          </div>
                          <!-- /panel-heading -->
                          <div class="panel-body col-lg-12">
                            <div class="tab-content">
                              <!-- 메뉴편집 -->
                              <div id="faq__111" class="tab-pane active">
                                <div class="row">
                                  <input type="button" id="add_menugroup_btn" value="질문 추가" class="grey__button btn"
                                    style="margin-right: 10px;">
                                  <div class="add_menugroup col-md-3 " style="padding-left: 0;">
                                    <input type="text" id="" value="" class="form-control round-form"
                                      style="display: inline-block;height: 30px;;">

                                    <!-- </div>
                                  <div class="col-sm-1"> -->
                                  </div>

                                </div>

                                <div class="row">
                                  <div class="col-md-12 no-padding">
                                    <div class="accordion" id="accordion11">
                                      <!-- 열리기1 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" style="border-top: 0;display: inline-block;margin-right: 20px;"
                                            data-toggle="collapse" data-parent="#accordion11" href="#collapse111">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>
                                            어떻게 사용하나요
                                          </a>
                                          <input type="text" id="faq__update__ta" class="form-control round-form" style="margin-right:10px;width:200px;height:30px;">
                                          <a type="button" id="faq__update__btn" href="#" style="margin-right: 10px;"><i class="fa fa-pencil"></i></a>
                                          <a type="button" id="faq__delete__btn" href="javascript:deleteAlert();"><i class="fa fa-trash"></i></a>
                                        </div>
                                        <div id="collapse111" class="accordion-body collapse in">
                                          <div class="accordion-inner">
                                            <textarea rows="3" class="form-control round-form">
몰라몰라><
                                            </textarea>


                                          </div>
                                        </div>
                                      </div>

                                      <!-- 열리기2 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" data-toggle="collapse"
                                            data-parent="#accordion11" href="#collapse112">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>
                                            질문2
                                          </a>
                                        </div>
                                        <div id="collapse112" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <textarea rows="3" class="form-control round-form">
몰라몰라><
                                            </textarea>


                                          </div>
                                        </div>
                                      </div>
                                      <!-- 열리기3 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" data-toggle="collapse"
                                            data-parent="#accordion11" href="#collapse113">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>
                                            질문3
                                          </a>
                                        </div>
                                        <div id="collapse113" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <textarea rows="3" class="form-control round-form">
몰라몰라><
                                            </textarea>


                                          </div>
                                        </div>
                                      </div>
                                      <!-- 열리기4 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" data-toggle="collapse"
                                            data-parent="#accordion11" href="#collapse114">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>
                                            질문4
                                          </a>
                                        </div>
                                        <div id="collapse114" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <textarea rows="3" class="form-control round-form">
몰라몰라><
                                            </textarea>


                                          </div>
                                        </div>
                                      </div>
                                      <!-- 열리기5 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" data-toggle="collapse"
                                            data-parent="#accordion11" href="#collapse115">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>
                                            질문5
                                          </a>
                                        </div>
                                        <div id="collapse115" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <textarea rows="3" class="form-control round-form">
몰라몰라><
                                            </textarea>


                                          </div>
                                        </div>
                                      </div>
                                      <!-- 열리기6 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" data-toggle="collapse"
                                            data-parent="#accordion11" href="#collapse116">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>
                                            질문6
                                          </a>
                                        </div>
                                        <div id="collapse116" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <textarea rows="3" class="form-control round-form">
몰라몰라><
                                            </textarea>


                                          </div>
                                        </div>
                                      </div>
                                      <!-- 열리기7 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" data-toggle="collapse"
                                            data-parent="#accordion11" href="#collapse117">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>
                                            질문8
                                          </a>
                                        </div>
                                        <div id="collapse117" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <textarea rows="3" class="form-control round-form">
몰라몰라><
                                            </textarea>


                                          </div>
                                        </div>
                                      </div>




                                    </div>
                                    <!-- end accordion -->
                                  </div>
                                  
                                  <button type="submit" class="btn btn-theme" style="float: right;margin-left: 10px;">
                                    저장
                                  </button>
                                  <button type="reset" class="btn btn-theme" style="float: right;">
                                    초기화
                                  </button>
                                  <!-- /col-md-6 -->
                                </div>
                                <!-- /메뉴관리 -->
                              </div>
                              <!-- /tab-pane -->
                              <!-- 옵션편집 -->
                              <div id="faq__222" class="tab-pane">
                                <div class="row">
                                  <div class="col-md-12 no-padding">
                                    <div class="accordion" id="accordion22">
                                      <!-- 열리기1 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed"
                                            style="padding:0;margin:5px 0; border-top: 0;background-color: beige;"
                                            data-toggle="collapse" data-parent="#accordion22" href="#collapseOne2">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em> 메뉴 품절
                                          </a>
                                        </div>
                                        <div id="collapseOne2" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <div class="row" style="margin: 0;">
                                              <!-- 메뉴그룹1 -->
                                              <div class="faq__group col-md-12">
                                                <span>(New) 시즌메뉴 1</span>
                                              </div>
                                              <!-- 하나의 메뉴 -->
                                              <div class="col-md-4 faq__gulp">

                                                <div class="faq__name">
                                                  연유귀리라떼
                                                </div>
                                                <div class="faq__option">
                                                  <ul>
                                                    <li>ICE 리터: 6000 원</li>
                                                    <li>ICE 벤티: 5000 원</li>
                                                    <li>HOT 벤티: 5000 원</li>
                                                  </ul>
                                                </div>
                                                <input id="faq___1" type="button" class="sold_out_btn active"
                                                  value="품절">
                                              </div>
                                              <!-- /하나의메뉴 끝 -->

                                              <!-- 하나의 메뉴 -->
                                              <div class="col-md-4 faq__gulp">
                                                <div class="faq__name">
                                                  햇쌀귀리라떼
                                                </div>
                                                <div class="faq__option">
                                                  <ul>
                                                    <li>ICE 리터: 6000 원</li>
                                                    <li>ICE 벤티: 5000 원</li>
                                                    <li>HOT 벤티: 5000 원</li>
                                                  </ul>
                                                </div>
                                                <input id="faq___2" type="button" class="sold_out_btn" value="품절">
                                              </div>
                                              <!-- /하나의메뉴 끝 -->

                                              <!-- 하나의 메뉴 -->
                                              <div class="col-md-4 faq__gulp">
                                                <div class="faq__name">
                                                  민트귀리라떼
                                                </div>
                                                <div class="faq__option">
                                                  <ul>
                                                    <li>ICE 리터: 6000 원</li>
                                                    <li>ICE 벤티: 5000 원</li>
                                                    <li>HOT 벤티: 5000 원</li>
                                                  </ul>
                                                </div>
                                                <input id="faq___3" type="button" class="sold_out_btn" value="품절">
                                              </div>
                                              <!-- /하나의메뉴 끝 -->



                                              <!-- end row -->
                                            </div>
                                            <!-- row 끝 -->
                                            <div class="row" style="margin: 0;">
                                              <!-- 메뉴그룹2 -->
                                              <div class="faq__group col-md-12">
                                                <span>(New) 시즌메뉴 2</span>
                                              </div>
                                              <!-- 하나의 메뉴 -->
                                              <div class="col-md-4 faq__gulp">

                                                <div class="faq__name">
                                                  콜라겐 THE하기
                                                </div>
                                                <div class="faq__option">
                                                  <ul>
                                                    <li>ICE 리터: 6000 원</li>
                                                    <li>ICE 벤티: 5000 원</li>
                                                    <li>HOT 벤티: 5000 원</li>
                                                  </ul>
                                                </div>
                                                <input id="faq___4" type="button" class="sold_out_btn" value="품절">
                                              </div>
                                              <!-- /하나의메뉴 끝 -->

                                              <!-- 하나의 메뉴 -->
                                              <div class="col-md-4 faq__gulp">
                                                <div class="faq__name">
                                                  콜라겐 MINUS하기
                                                </div>
                                                <div class="faq__option">
                                                  <ul>
                                                    <li>ICE 리터: 6000 원</li>
                                                    <li>ICE 벤티: 5000 원</li>
                                                    <li>HOT 벤티: 5000 원</li>
                                                  </ul>
                                                </div>
                                                <input id="faq___5" type="button" class="sold_out_btn active"
                                                  value="품절">
                                              </div>
                                              <!-- /하나의메뉴 끝 -->

                                              <!-- 하나의 메뉴 -->
                                              <div class="col-md-4 faq__gulp">
                                                <div class="faq__name">
                                                  콜라겐 DIVIDE하기
                                                </div>
                                                <div class="faq__option">
                                                  <ul>
                                                    <li>ICE 리터: 6000 원</li>
                                                    <li>ICE 벤티: 5000 원</li>
                                                    <li>HOT 벤티: 5000 원</li>
                                                  </ul>
                                                </div>
                                                <input id="faq___6" type="button" class="sold_out_btn" value="품절">
                                              </div>
                                              <!-- /하나의메뉴 끝 -->



                                              <!-- end row -->
                                            </div>



                                          </div>
                                        </div>
                                      </div>

                                      <!-- 열리기2 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed"
                                            style="padding:0;margin:5px 0;background-color: beige;"
                                            data-toggle="collapse" data-parent="#accordion22" href="#collapseTwo2">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em> 옵션 품절
                                          </a>
                                        </div>
                                        <div id="collapseTwo2" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <div class="row" style="margin: 0;">
                                              <!-- 메뉴그룹1 -->
                                              <div class="faq__group col-md-12">
                                                <span>(New) 시즌메뉴 1</span>
                                              </div>
                                              <!-- 하나의 메뉴 -->
                                              <div class="col-md-4 faq__gulp">

                                                <div class="faq__name">
                                                  연유귀리라떼
                                                </div>
                                                <div class="faq__option">
                                                  <ul>
                                                    <li>ICE 리터: 6000 원<input id="faq___1" type="button"
                                                        class="sold_out_option_btn active" value="품절"></li>
                                                    <li>ICE 벤티: 5000 원<input id="faq___1" type="button"
                                                        class="sold_out_option_btn" value="품절"></li>
                                                    <li>HOT 벤티: 5000 원<input id="faq___1" type="button"
                                                        class="sold_out_option_btn" value="품절"></li>
                                                  </ul>
                                                </div>
                                              </div>
                                              <!-- /하나의메뉴 끝 -->

                                              <!-- 하나의 메뉴 -->
                                              <div class="col-md-4 faq__gulp">
                                                <div class="faq__name">
                                                  햇쌀귀리라떼
                                                </div>
                                                <div class="faq__option">
                                                  <ul>
                                                    <li>ICE 리터: 6000 원<input id="faq___1" type="button"
                                                        class="sold_out_option_btn" value="품절"></li>
                                                    <li>ICE 벤티: 5000 원<input id="faq___1" type="button"
                                                        class="sold_out_option_btn" value="품절"></li>
                                                    <li>HOT 벤티: 5000 원<input id="faq___1" type="button"
                                                        class="sold_out_option_btn active" value="품절"></li>
                                                  </ul>
                                                </div>
                                              </div>
                                              <!-- /하나의메뉴 끝 -->

                                              <!-- 하나의 메뉴 -->
                                              <div class="col-md-4 faq__gulp">
                                                <div class="faq__name">
                                                  민트귀리라떼
                                                </div>
                                                <div class="faq__option">
                                                  <ul>
                                                    <li>ICE 리터: 6000 원<input id="faq___1" type="button"
                                                        class="sold_out_option_btn" value="품절"></li>
                                                    <li>ICE 벤티: 5000 원<input id="faq___1" type="button"
                                                        class="sold_out_option_btn" value="품절"></li>
                                                    <li>HOT 벤티: 5000 원<input id="faq___1" type="button"
                                                        class="sold_out_option_btn" value="품절"></li>
                                                  </ul>
                                                </div>
                                              </div>
                                              <!-- /하나의메뉴 끝 -->



                                              <!-- end row -->
                                            </div>
                                            <!-- row 끝 -->
                                            <div class="row" style="margin: 0;">
                                              <!-- 메뉴그룹2 -->
                                              <div class="faq__group col-md-12">
                                                <span>(New) 시즌메뉴 2</span>
                                              </div>
                                              <!-- 하나의 메뉴 -->
                                              <div class="col-md-4 faq__gulp">

                                                <div class="faq__name">
                                                  콜라겐 THE하기
                                                </div>
                                                <div class="faq__option">
                                                  <ul>
                                                    <li>ICE 리터: 6000 원<input id="faq___1" type="button"
                                                        class="sold_out_option_btn " value="품절"></li>
                                                    <li>ICE 벤티: 5000 원<input id="faq___1" type="button"
                                                        class="sold_out_option_btn active" value="품절"></li>
                                                    <li>HOT 벤티: 5000 원<input id="faq___1" type="button"
                                                        class="sold_out_option_btn" value="품절"></li>
                                                  </ul>
                                                </div>
                                              </div>
                                              <!-- /하나의메뉴 끝 -->

                                              <!-- 하나의 메뉴 -->
                                              <div class="col-md-4 faq__gulp">
                                                <div class="faq__name">
                                                  콜라겐 MINUS하기
                                                </div>
                                                <div class="faq__option">
                                                  <ul>
                                                    <li>ICE 리터: 6000 원<input id="faq___1" type="button"
                                                        class="sold_out_option_btn" value="품절"></li>
                                                    <li>ICE 벤티: 5000 원<input id="faq___1" type="button"
                                                        class="sold_out_option_btn" value="품절"></li>
                                                    <li>HOT 벤티: 5000 원<input id="faq___1" type="button"
                                                        class="sold_out_option_btn" value="품절"></li>
                                                  </ul>
                                                </div>
                                              </div>
                                              <!-- /하나의메뉴 끝 -->

                                              <!-- 하나의 메뉴 -->
                                              <div class="col-md-4 faq__gulp">
                                                <div class="faq__name">
                                                  콜라겐 DIVIDE하기
                                                </div>
                                                <div class="faq__option">
                                                  <ul>
                                                    <li>ICE 리터: 6000 원<input id="faq___1" type="button"
                                                        class="sold_out_option_btn" value="품절"></li>
                                                    <li>ICE 벤티: 5000 원<input id="faq___1" type="button"
                                                        class="sold_out_option_btn" value="품절"></li>
                                                    <li>HOT 벤티: 5000 원<input id="faq___1" type="button"
                                                        class="sold_out_option_btn active" value="품절"></li>
                                                  </ul>
                                                </div>
                                              </div>
                                              <!-- /하나의메뉴 끝 -->



                                              <!-- end row -->
                                            </div>



                                          </div>
                                        </div>
                                      </div>

                                    </div>
                                    <!-- end accordion -->
                                  </div>
                                  
                                  <button type="submit" class="btn btn-theme" style="float: right;margin-left: 10px;">
                                    저장
                                  </button>
                                  <button type="button" class="no_soldout btn btn-theme" style="float: right;">
                                    초기화
                                  </button>
                                  <!-- /col-md-6 -->
                                </div>
                                <!-- /row -->
                              </div>
                              <!-- /tab-pane -->
                              <!-- 대표메뉴 -->
                              <div id="faq__333" class="tab-pane">
                                <div class="row">
                                  <div class="col-md-12 no-padding">
                                    <div class="accordion" id="accordion13">
                                      <!-- 열리기1 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" style="border-top: 0;"
                                            data-toggle="collapse" data-parent="#accordion13" href="#collapse131">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>How to
                                            purchase
                                            this template?
                                          </a>
                                        </div>
                                        <div id="collapse131" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting
                                              industry. Lorem
                                              Ipsum has been the industry's standard dummy text ever since the 1500s,
                                              when an
                                              unknown printer took a galley of type and scrambled it to make a type
                                              specimen book. It has survived not only five centuries, but also the leap
                                              into
                                              electronic typesetting, remaining essentially unchanged.</p>
                                          </div>
                                        </div>
                                      </div>

                                      <!-- 열리기2 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" data-toggle="collapse"
                                            data-parent="#accordion13" href="#collapse132">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>How can
                                            I
                                            install my server?
                                          </a>
                                        </div>
                                        <div id="collapse132" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting
                                              industry. Lorem
                                              Ipsum has been the industry's standard dummy text ever since the 1500s,
                                              when an
                                              unknown printer took a galley of type and scrambled it to make a type
                                              specimen book. It has survived not only five centuries, but also the leap
                                              into
                                              electronic typesetting, remaining essentially unchanged.</p>
                                          </div>
                                        </div>
                                      </div>
                                      <!-- 열리기3 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" data-toggle="collapse"
                                            data-parent="#accordion13" href="#collapse133">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>How to
                                            change
                                            color schemes?
                                          </a>
                                        </div>
                                        <div id="collapse133" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting
                                              industry. Lorem
                                              Ipsum has been the industry's standard dummy text ever since the 1500s,
                                              when an
                                              unknown printer took a galley of type and scrambled it to make a type
                                              specimen book. It has survived not only five centuries, but also the leap
                                              into
                                              electronic typesetting, remaining essentially unchanged.</p>
                                          </div>
                                        </div>
                                      </div>
                                      <!-- 열리기4 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" data-toggle="collapse"
                                            data-parent="#accordion13" href="#collapse134">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>How to
                                            integrate
                                            Revolution Slider?
                                          </a>
                                        </div>
                                        <div id="collapse134" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting
                                              industry. Lorem
                                              Ipsum has been the industry's standard dummy text ever since the 1500s,
                                              when an
                                              unknown printer took a galley of type and scrambled it to make a type
                                              specimen book. It has survived not only five centuries, but also the leap
                                              into
                                              electronic typesetting, remaining essentially unchanged.</p>
                                          </div>
                                        </div>
                                      </div>
                                      <!-- 열리기5 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" data-toggle="collapse"
                                            data-parent="#accordion13" href="#collapse135">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>How Can
                                            I get
                                            Support?
                                          </a>
                                        </div>
                                        <div id="collapse135" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting
                                              industry. Lorem
                                              Ipsum has been the industry's standard dummy text ever since the 1500s,
                                              when an
                                              unknown printer took a galley of type and scrambled it to make a type
                                              specimen book. It has survived not only five centuries, but also the leap
                                              into
                                              electronic typesetting, remaining essentially unchanged.</p>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <!-- end accordion -->
                                  </div>
                                  
                                  <button type="submit" class="btn btn-theme" style="float: right;margin-left: 10px;">
                                    저장
                                  </button>
                                  <button type="reset" class="btn btn-theme" style="float: right;">
                                    초기화
                                  </button>
                                  <!-- /col-md-6 -->
                                </div>
                                <!-- /메뉴관리 -->
                              </div>
                              <!-- /tab-pane -->
                              <!-- 메뉴모음컷 -->
                              <div id="faq__444" class="tab-pane">
                                <div class="row">
                                  <div class="col-md-12 no-padding">
                                    <div class="accordion" id="accordion14">
                                      <!-- 열리기1 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" style="border-top: 0;"
                                            data-toggle="collapse" data-parent="#accordion14" href="#collapse141">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>How to
                                            purchase
                                            this template?
                                          </a>
                                        </div>
                                        <div id="collapse141" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting
                                              industry. Lorem
                                              Ipsum has been the industry's standard dummy text ever since the 1500s,
                                              when an
                                              unknown printer took a galley of type and scrambled it to make a type
                                              specimen book. It has survived not only five centuries, but also the leap
                                              into
                                              electronic typesetting, remaining essentially unchanged.</p>
                                          </div>
                                        </div>
                                      </div>

                                      <!-- 열리기2 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" data-toggle="collapse"
                                            data-parent="#accordion14" href="#collapse142">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>How can
                                            I
                                            install my server?
                                          </a>
                                        </div>
                                        <div id="collapse142" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting
                                              industry. Lorem
                                              Ipsum has been the industry's standard dummy text ever since the 1500s,
                                              when an
                                              unknown printer took a galley of type and scrambled it to make a type
                                              specimen book. It has survived not only five centuries, but also the leap
                                              into
                                              electronic typesetting, remaining essentially unchanged.</p>
                                          </div>
                                        </div>
                                      </div>
                                      <!-- 열리기3 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" data-toggle="collapse"
                                            data-parent="#accordion14" href="#collapse143">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>How to
                                            change
                                            color schemes?
                                          </a>
                                        </div>
                                        <div id="collapse143" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting
                                              industry. Lorem
                                              Ipsum has been the industry's standard dummy text ever since the 1500s,
                                              when an
                                              unknown printer took a galley of type and scrambled it to make a type
                                              specimen book. It has survived not only five centuries, but also the leap
                                              into
                                              electronic typesetting, remaining essentially unchanged.</p>
                                          </div>
                                        </div>
                                      </div>
                                      <!-- 열리기4 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" data-toggle="collapse"
                                            data-parent="#accordion14" href="#collapse144">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>How to
                                            integrate
                                            Revolution Slider?
                                          </a>
                                        </div>
                                        <div id="collapse144" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting
                                              industry. Lorem
                                              Ipsum has been the industry's standard dummy text ever since the 1500s,
                                              when an
                                              unknown printer took a galley of type and scrambled it to make a type
                                              specimen book. It has survived not only five centuries, but also the leap
                                              into
                                              electronic typesetting, remaining essentially unchanged.</p>
                                          </div>
                                        </div>
                                      </div>
                                      <!-- 열리기5 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" data-toggle="collapse"
                                            data-parent="#accordion14" href="#collapse145">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>How Can
                                            I get
                                            Support?
                                          </a>
                                        </div>
                                        <div id="collapse145" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting
                                              industry. Lorem
                                              Ipsum has been the industry's standard dummy text ever since the 1500s,
                                              when an
                                              unknown printer took a galley of type and scrambled it to make a type
                                              specimen book. It has survived not only five centuries, but also the leap
                                              into
                                              electronic typesetting, remaining essentially unchanged.</p>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <!-- end accordion -->
                                  </div>
                                  
                                  <button type="submit" class="btn btn-theme" style="float: right;margin-left: 10px;">
                                    저장
                                  </button>
                                  <button type="reset" class="btn btn-theme" style="float: right;">
                                    초기화
                                  </button>
                                  <!-- /col-md-6 -->
                                </div>
                                <!-- /메뉴관리 -->
                              </div>
                              <!-- /tab-pane -->
                              <!-- 옵션편집 -->
                              <div id="faq__555" class="tab-pane">
                                <div class="row">
                                  <div class="col-md-12 no-padding">
                                    <div class="accordion" id="accordion15">
                                      <!-- 열리기1 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" style="border-top: 0;"
                                            data-toggle="collapse" data-parent="#accordion15" href="#collapse151">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>How to
                                            purchase
                                            this template?
                                          </a>
                                        </div>
                                        <div id="collapse151" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting
                                              industry. Lorem
                                              Ipsum has been the industry's standard dummy text ever since the 1500s,
                                              when an
                                              unknown printer took a galley of type and scrambled it to make a type
                                              specimen book. It has survived not only five centuries, but also the leap
                                              into
                                              electronic typesetting, remaining essentially unchanged.</p>
                                          </div>
                                        </div>
                                      </div>

                                      <!-- 열리기2 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" data-toggle="collapse"
                                            data-parent="#accordion15" href="#collapse152">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>How can
                                            I
                                            install my server?
                                          </a>
                                        </div>
                                        <div id="collapse152" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting
                                              industry. Lorem
                                              Ipsum has been the industry's standard dummy text ever since the 1500s,
                                              when an
                                              unknown printer took a galley of type and scrambled it to make a type
                                              specimen book. It has survived not only five centuries, but also the leap
                                              into
                                              electronic typesetting, remaining essentially unchanged.</p>
                                          </div>
                                        </div>
                                      </div>
                                      <!-- 열리기3 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" data-toggle="collapse"
                                            data-parent="#accordion15" href="#collapse153">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>How to
                                            change
                                            color schemes?
                                          </a>
                                        </div>
                                        <div id="collapse153" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting
                                              industry. Lorem
                                              Ipsum has been the industry's standard dummy text ever since the 1500s,
                                              when an
                                              unknown printer took a galley of type and scrambled it to make a type
                                              specimen book. It has survived not only five centuries, but also the leap
                                              into
                                              electronic typesetting, remaining essentially unchanged.</p>
                                          </div>
                                        </div>
                                      </div>
                                      <!-- 열리기4 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" data-toggle="collapse"
                                            data-parent="#accordion15" href="#collapse154">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>How to
                                            integrate
                                            Revolution Slider?
                                          </a>
                                        </div>
                                        <div id="collapse154" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting
                                              industry. Lorem
                                              Ipsum has been the industry's standard dummy text ever since the 1500s,
                                              when an
                                              unknown printer took a galley of type and scrambled it to make a type
                                              specimen book. It has survived not only five centuries, but also the leap
                                              into
                                              electronic typesetting, remaining essentially unchanged.</p>
                                          </div>
                                        </div>
                                      </div>
                                      <!-- 열리기5 -->
                                      <div class="accordion-group">
                                        <div class="accordion-heading">
                                          <a class="accordion-toggle collapsed" data-toggle="collapse"
                                            data-parent="#accordion15" href="#collapse155">
                                            <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>How Can
                                            I get
                                            Support?
                                          </a>
                                        </div>
                                        <div id="collapse155" class="accordion-body collapse">
                                          <div class="accordion-inner">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting
                                              industry. Lorem
                                              Ipsum has been the industry's standard dummy text ever since the 1500s,
                                              when an
                                              unknown printer took a galley of type and scrambled it to make a type
                                              specimen book. It has survived not only five centuries, but also the leap
                                              into
                                              electronic typesetting, remaining essentially unchanged.</p>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <!-- end accordion -->
                                  </div>
                                  
                                  <button type="submit" class="btn btn-theme" style="float: right;margin-left: 10px;">
                                    저장
                                  </button>
                                  <button type="reset" class="btn btn-theme" style="float: right;">
                                    초기화
                                  </button>
                                  <!-- /col-md-6 -->
                                </div>
                                <!-- /메뉴관리 -->
                              </div>
                              <!-- /tab-pane -->
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
          <!-- /row -->
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
 
  <!--script for this page-->
  
  
  
</body>

</html>
