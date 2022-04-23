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
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="openup tooltips" style="background-image: url(resources/assets/images/admin/logo/logo_white.svg);" data-placement="right" data-original-title="메뉴 여/닫기" ></div>
      </div>
      <!--logo start-->
      <a href="../index.admin" class="logo"><b>walking<span>order</span></b></a>
      <!--logo end-->
      <div class="nav notify-row" id="top_menu">
        
      </div>
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="../login.admin">Logout</a></li>
        </ul>
      </div>
    </header>    <!--header end-->
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
              <li><a id="store-menu" href="store_menu.admin">매장 메뉴 관리</a></li>
              <li><a id="store-pending" href="store_pending.admin">승인 대기</a></li>
              <li><a id="join-inq" href="join_inq.admin">입점 문의</a></li>
            </ul>
          </li>
          <li class="sub-menu dcjq-parent-li">
            <a id="order-manage" class="active dcjq-parent" href="javascript:;">
              <i class="fa fa-shopping-cart"></i>
              <span>주문 관리</span>
              </a>
            <ul class="sub">
              <li class="active"><a id="total-order" href="total_order.admin">전체 주문 관리</a></li>
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
     <form class="allmenu-form">
        <section class="allmenu site-min-height">

            <span class="all"><b> All Menu</b></span>
            <span class="reset_btn"><button type="reset">reset</button></span>
            <span class="reset_btn"><button class="all_menu_save_btn" type="button">save</button>
            </span>
            <div class="row mt">
              <div class="col-lg-3 col-md-6 col-12">
                <ul class="all_menu">
                  <li class="sub-menu">
                    <a id="user-manage">
                      <i class="fa fa-user" style="font-size: 12px;"></i>
                      <span>&nbsp;회원 관리</span>
                    </a>
                    <ul class="sub">
                      <li><input id="" type="checkbox"><span>회원 관리</span></li>
                      <li><input id="" type="checkbox"><span>쿠폰 관리</span></li>
                      <li><input id="" type="checkbox"><span>포인트 관리</span></li>
                      <li><input id="" type="checkbox"><span>접속 이력</span></li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="col-lg-3 col-md-6 col-12">
                <ul class="all_menu">
                  <li class="sub-menu">
                    <a id="user-manage">
                      <i class="fa fa-group" style="font-size: 12px;"></i>
                      <span>매장 관리</span>
                    </a>
                    <ul class="sub">
                      <li><input id="" type="checkbox"><span>매장 관리</span></li>
                      <li><input id="" type="checkbox"><span>매장 메뉴 관리</span></li>
                      <li><input id="" type="checkbox"><span>승인 대기</span></li>
                      <li><input id="" type="checkbox"><span>입점 문의</span></li>
                    </ul>
                  </li>
                </ul>
              </div>

              <div class="col-lg-3 col-md-6 col-12">
                <ul class="all_menu">
                  <li class="sub-menu">
                    <a id="user-manage">
                      <i class="fa fa-shopping-cart"></i>
                      <span>주문 관리</span>
                    </a>
                    <ul class="sub">
                      <li><input id="" type="checkbox"><span>전체 주문 관리</span></li>
                      <li><input id="" type="checkbox"><span>매장별 주문 관리</span></li>
                      <li><input id="" type="checkbox"><span>취소 주문</span></li>
                      <li><input id="" type="checkbox"><span>환불 주문</span></li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="col-lg-3 col-md-6 col-12">
                <ul class="all_menu">
                  <li class="sub-menu">
                    <a id="user-manage">
                      <i class="fa fa-pencil-square"></i>
                      <span>보드 관리</span>
                    </a>
                    <ul class="sub">
                      <li><input id="" type="checkbox"><span>공지사항</span></li>
                      <li><input id="" type="checkbox"><span>FAQ 관리</span></li>

                      <li><input id="" type="checkbox"><span>리뷰 관리</span></li>
                      <li><input id="" type="checkbox"><span>1:1 문의</span></li>
                    </ul>
                  </li>
                </ul>
              </div>
            </div>
            <div class="row mt">
              <div class="col-lg-3 col-md-6 col-12">
                <ul class="all_menu">
                  <li class="sub-menu">
                    <a id="user-manage">
                      <i class="fa fa-sticky-note" style="font-size: 12px;"></i>
                      <span>페이지 관리</span>
                    </a>
                    <ul class="sub">
                      <li><input id="" type="checkbox"><span>배너 관리</span></li>
                      <li><input id="" type="checkbox"><span>오늘의 음료</span></li>
                      <li><input id="" type="checkbox"><span>검색어 관리</span></li>
                      <li><input id="" type="checkbox"><span>약관/정책 관리</span></li>
                      <li><input id="" type="checkbox"><span>증빙서류</span></li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="col-lg-3 col-md-6 col-12">
                <ul class="all_menu">
                  <li class="sub-menu">
                    <a id="user-manage">
                      <i class="fa fa-envelope-open-o" style="font-size: 13px;"></i>
                      <span>메세지 관리</span>
                    </a>
                    <ul class="sub">
                      <li><input id="" type="checkbox"><span>알림톡 템플릿</span></li>
                      <li><input id="" type="checkbox"><span>알림톡 전송이력</span></li>
                      <li><input id="" type="checkbox"><span>문자 전송</span></li>
                      <li><input id="" type="checkbox"><span>단체 문자 전송</span></li>
                      <li><input id="" type="checkbox"><span>문자 전송 이력</span></li>
                    </ul>
                  </li>
                </ul>
              </div>

              <div class="col-lg-3 col-md-6 col-12">
                <ul class="all_menu">
                  <li class="sub-menu">
                    <a id="user-manage">
                      <i class=" fa fa-krw"></i>
                      <span>정산</span>
                    </a>
                    <ul class="sub">
                      <li><input id="" type="checkbox"><span>PG 수수료</span></li>
                      <li><input id="" type="checkbox"><span>PG 정산 내역</span></li>
                      <li><input id="" type="checkbox"><span>매장별 수익</span></li>
                      <li><input id="" type="checkbox"><span>매장별 정산</span></li>
                      <li><input id="" type="checkbox"><span>정산 내역</span></li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="col-lg-3 col-md-6 col-12">
                <ul class="all_menu">
                  <li class="sub-menu">
                    <a id="user-manage">
                      <i class=" fa fa-bar-chart-o"></i>
                      <span>통계</span>
                    </a>
                    <ul class="sub">
                      <li><input id="" type="checkbox"><span>기간별 주문 통계</span></li>
                      <li><input id="" type="checkbox"><span>매장별 매출 통계</span></li>
                      <li><input id="" type="checkbox"><span>사용자별 매출 통계</span></li>
                      <li><input id="" type="checkbox"><span>차트로 확인</span></li>
                      <li><input id="" type="checkbox"><span>그래프로 확인</span></li>
                    </ul>
                  </li>
                </ul>
              </div>
            </div>
        </section>
      </form>
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> 전체 주문 관리</h3>
        <!-- BASIC FORM ELELEMNTS -->
        <div class="row mt">
          <div class="col-lg-12">
            <div class="card-header" style="font-size: 16px;">
              <i class="fa fa-search" style="font-size: 14px;"></i>
              주문 검색
            </div>
            <div class="form-panel" style="margin-top:0; padding-bottom: 38px;">
              <form class="form-horizontal style-form" method="get">

                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">회원 구분</label>
                  <div class="col-sm-2 dropthebeat">
                    <div class="dataTable-dropdown"><select class="dataTable-selector">
                        <option value="all">전체</option>
                        <option value="id">이름</option>
                        <option value="name">아이디</option>
                        <option value="nick">닉네임</option>
                        <option value="nick">전화번호</option>

                      </select>
                    </div>
                  </div>
                  <div class="col-sm-8 col-sm-8 col-sm-8">
                    <input type="text" class="form-control round-form" placeholder="홍길동" style="width: 35%;">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">주문번호</label>
                  <div class="col-sm-10">
                    <input class="form-control" type="text" placeholder="20220411022" value="" style="width: 50%;">
                  </div>
                  <!--
                    id="focusedInput" 빨간 테두리
                    id="disabledInput" 못고치는거
                  -->
                </div>
                


                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">상태</label>
                  <div class="col-sm-10">
                    <label class="checkbox-inline">
                      <input type="checkbox" id="inlineCheckbox1" value="option1" checked> 전체
                    </label>
                    <label class="checkbox-inline">
                      <input type="checkbox" id="inlineCheckbox2" value="option2" checked> 주문접수
                    </label>
                    <label class="checkbox-inline">
                      <input type="checkbox" id="inlineCheckbox3" value="option3" checked> 준비중
                    </label>
                    <label class="checkbox-inline">
                      <input type="checkbox" id="inlineCheckbox4" value="option4" checked> 준비완료
                    </label>
                    <label class="checkbox-inline">
                      <input type="checkbox" id="inlineCheckbox5" value="option5" checked> 전달완료
                    </label>
                    <label class="checkbox-inline">
                      <input type="checkbox" id="inlineCheckbox5" value="option5" checked> 취소
                    </label>
                    
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">주문금액</label>
                  <div class="col-sm-10"> 
                    <input class="form-control round-form" type="number" style="margin-right: 10px; width: 15%;min-width: 120px; display: inline-block;"> ~ 
                    <input class="form-control round-form" type="number" style="margin-left: 10px;width: 15%;min-width: 120px;display: inline-block;">
                    
                  </div>
                  
                  
                  <!--
                    id="focusedInput" 빨간 테두리
                    id="disabledInput" 못고치는거
                  -->
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">주문일</label>
                  <div class="col-sm-10"> 
                    <input class="form-control round-form" type="date" style="margin-right: 10px; width: 15%;min-width: 120px; display: inline-block;"> ~ 
                    <input class="form-control round-form" type="date" style="margin-left: 10px;width: 15%;min-width: 120px;display: inline-block;">
                    
                  </div>
                  
                  
                  <!--
                    id="focusedInput" 빨간 테두리
                    id="disabledInput" 못고치는거
                  -->
                </div>
                <div class="form-group">
                  <label class="col-sm-2 col-sm-2 control-label">주문시간</label>
                  <div class="col-sm-10"> 
                    <input class="form-control round-form" type="time" style="margin-right: 10px; width: 15%;min-width: 120px; display: inline-block;"> ~ 
                    <input class="form-control round-form" type="time" style="margin-left: 10px;width: 15%;min-width: 120px;display: inline-block;">
                    
                  </div>
                  
                  
                  <!--
                    id="focusedInput" 빨간 테두리
                    id="disabledInput" 못고치는거
                  -->
                </div>
                
                <button type="button" onclick="" class="btn btn-theme" style="font-size: 12px; width:80px;float: left;">
                  엑셀다운
                </button>
                <button type="submit" class="btn btn-theme" style="width:70px;float: right;">검색</button>
              </form>
            </div>
          </div>
        </div>
        <!-- 테이블 -->
        <div class="row mt">
          <div class="col-lg-12 cardd mb-4" style="height: fit-content;">
            <div class="card-header">
              <i class="fa fa-table"></i>
              검색 결과
            </div>
            <div class="card-body">
              
                  <table id="datatablesSimple">
                    <thead>
                      <tr>
                        <th data-sortable="" style="width: 5%;"><a href="#" class="dataTable-sorter">번호</a></th>
                        <th data-sortable="" style="width: 8%;"><a href="#" class="dataTable-sorter">주문번호</a></th>
                        <th data-sortable="" style="width: 8%;"><a href="#" class="dataTable-sorter">아이디</a></th>
                        <th data-sortable="" style="width: 6%;"><a href="#" class="dataTable-sorter">이름</a></th>
                        <th data-sortable="" style="width: 8%;"><a href="#" class="dataTable-sorter">전화번호</a></th>
                        <th data-sortable="" style="width: 10%;"><a href="#" class="dataTable-sorter">제품</a></th>
                        <th data-sortable="" style="width: 10%;"><a href="#" class="dataTable-sorter">요청사항</a></th>
                        <th data-sortable="" style="width: 6%;"><a href="#" class="dataTable-sorter">금액</a></th>
                        <th data-sortable="" style="width: 8%;"><a href="#" class="dataTable-sorter">매장명</a></th>
                        <th data-sortable="" style="width: 8%;"><a href="#" class="dataTable-sorter">상태</a></th>
                        <th data-sortable="" style="width: 6%;"><a href="#" class="dataTable-sorter">결제</a></th>
                        <th data-sortable="" style="width: 12%;"><a href="#" class="dataTable-sorter">시간</a></th>
                        <th data-sortable="" style="width: 6%;"><a href="#" class="dataTable-sorter">수정</a></th>
                      </tr>
                    </thead>

                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>202204110001</td>
                        <td>etgohome8</td>
                        <td>홍민지</td>
                        <td>010123456678</td>
                        <td>요거트스무디 1</td>
                        <td>얼음 다 갈아줘용</td>
                        <td>5,600</td>
                        <td><a href="store_order.admin">워킹커피</a></td>
                        <td><div class="dropthebeat" style="margin: 0;padding:0;">
                          <div class="dataTable-dropdown" ><select class="dataTable-selector" style="margin: 0;padding:0;font-size: 11px;height:20px;">
                              <option value="all">주문접수</option>
                              <option value="id" selected>준비중</option>
                              <option value="name">준비완료</option>
                              <option value="nick">전달완료</option>
                              <option value="nick">취소</option>
      
                            </select>
                          </div>
                        </td>
                        <td>카드</td>
                        <td>2022.04.06 12:11:02</td>
                        <td>
                          <a data-toggle="modal" href="#myModal" class="btn btn-success btn-xs"><i class="fa fa-eye"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>202204110001</td>
                        <td>etgohome8</td>
                        <td>홍민지</td>
                        <td>010123456678</td>
                        <td>요거트스무디 1</td>
                        <td></td>
                        <td>5,600</td>
                        <td><a href="store_order.admin">워킹커피</a></td>
                        <td><div class="dropthebeat" style="margin: 0;padding:0;">
                          <div class="dataTable-dropdown" ><select class="dataTable-selector" style="margin: 0;padding:0;font-size: 11px;height:20px;">
                              <option value="all">주문접수</option>
                              <option value="id" selected>준비중</option>
                              <option value="name">준비완료</option>
                              <option value="nick">전달완료</option>
                              <option value="nick">취소</option>
      
                            </select>
                          </div></td>
                        <td>카드</td>
                        <td>2022.04.06 12:11:02</td>
                        <td>
                          <a data-toggle="modal" href="#myModal" class="btn btn-success btn-xs"><i class="fa fa-eye"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>202204110001</td>
                        <td>etgohome8</td>
                        <td>홍민지</td>
                        <td>010123456678</td>
                        <td>요거트스무디 1</td>
                        <td></td>
                        <td>5,600</td>
                        <td><a href="store_order.admin">워킹커피</a></td>
                        <td><div class="dropthebeat" style="margin: 0;padding:0;">
                          <div class="dataTable-dropdown" ><select class="dataTable-selector" style="margin: 0;padding:0;font-size: 11px;height:20px;">
                              <option value="all">주문접수</option>
                              <option value="id" selected>준비중</option>
                              <option value="name">준비완료</option>
                              <option value="nick">전달완료</option>
                              <option value="nick">취소</option>
      
                            </select>
                          </div></td>
                        <td>카드</td>
                        <td>2022.04.06 12:11:02</td>
                        <td>
                          <a data-toggle="modal" href="#myModal" class="btn btn-success btn-xs"><i class="fa fa-eye"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>202204110001</td>
                        <td>etgohome8</td>
                        <td>홍민지</td>
                        <td>010123456678</td>
                        <td>요거트스무디 1</td>
                        <td></td>
                        <td>5,600</td>
                        <td><a href="store_order.admin">워킹커피</a></td>
                        <td><div class="dropthebeat" style="margin: 0;padding:0;">
                          <div class="dataTable-dropdown" ><select class="dataTable-selector" style="margin: 0;padding:0;font-size: 11px;height:20px;">
                              <option value="all">주문접수</option>
                              <option value="id" selected>준비중</option>
                              <option value="name">준비완료</option>
                              <option value="nick">전달완료</option>
                              <option value="nick">취소</option>
      
                            </select>
                          </div></td>
                        <td>카드</td>
                        <td>2022.04.06 12:11:02</td>
                        <td>
                          <a data-toggle="modal" href="#myModal" class="btn btn-success btn-xs"><i class="fa fa-eye"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>202204110001</td>
                        <td>etgohome8</td>
                        <td>홍민지</td>
                        <td>010123456678</td>
                        <td>요거트스무디 1</td>
                        <td></td>
                        <td>5,600</td>
                        <td><a href="store_order.admin">워킹커피</a></td>
                        <td><div class="dropthebeat" style="margin: 0;padding:0;">
                          <div class="dataTable-dropdown" ><select class="dataTable-selector" style="margin: 0;padding:0;font-size: 11px;height:20px;">
                              <option value="all">주문접수</option>
                              <option value="id" selected>준비중</option>
                              <option value="name">준비완료</option>
                              <option value="nick">전달완료</option>
                              <option value="nick">취소</option>
      
                            </select>
                          </div></td>
                        <td>카드</td>
                        <td>2022.04.06 12:11:02</td>
                        <td>
                          <a data-toggle="modal" href="#myModal" class="btn btn-success btn-xs"><i class="fa fa-eye"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>202204110001</td>
                        <td>etgohome8</td>
                        <td>홍민지</td>
                        <td>010123456678</td>
                        <td>요거트스무디 1</td>
                        <td></td>
                        <td>5,600</td>
                        <td><a href="store_order.admin">워킹커피</a></td>
                        <td><div class="dropthebeat" style="margin: 0;padding:0;">
                          <div class="dataTable-dropdown" ><select class="dataTable-selector" style="margin: 0;padding:0;font-size: 11px;height:20px;">
                              <option value="all">주문접수</option>
                              <option value="id" selected>준비중</option>
                              <option value="name">준비완료</option>
                              <option value="nick">전달완료</option>
                              <option value="nick">취소</option>
      
                            </select>
                          </div></td>
                        <td>카드</td>
                        <td>2022.04.06 12:11:02</td>
                        <td>
                          <a data-toggle="modal" href="#myModal" class="btn btn-success btn-xs"><i class="fa fa-eye"></i></a>
                        </td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>202204110001</td>
                        <td>etgohome8</td>
                        <td>홍민지</td>
                        <td>010123456678</td>
                        <td>요거트스무디 1</td>
                        <td></td>
                        <td>5,600</td>
                        <td><a href="store_order.admin">워킹커피</a></td>
                        <td><div class="dropthebeat" style="margin: 0;padding:0;">
                          <div class="dataTable-dropdown" ><select class="dataTable-selector" style="margin: 0;padding:0;font-size: 11px;height:20px;">
                              <option value="all">주문접수</option>
                              <option value="id" selected>준비중</option>
                              <option value="name">준비완료</option>
                              <option value="nick">전달완료</option>
                              <option value="nick">취소</option>
      
                            </select>
                          </div></td>
                        <td>카드</td>
                        <td>2022.04.06 12:11:02</td>
                        <td>
                          <a data-toggle="modal" href="#myModal" class="btn btn-success btn-xs"><i class="fa fa-eye"></i></a>
                        </td>
                      </tr>
                      
                    </tbody>
                  </table>
                
              </div>
            </div>
          </div>
        </div>
        <!-- /row -->
        <!-- Modal -->
        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade" style="margin: 20px auto 0;">
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
        <!-- modal -->

        <!-- /row -->
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
        <a href="../../index.html#" class="go-top">
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
  
  <script src="resources/assets/js/admin/datatable/datatable-modified.js" ></script>
  <script src="resources/assets/js/admin/datatable/datatables-simple-demo.js"></script>
</body>

</html>
