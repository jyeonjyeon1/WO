<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
          <h5 class="centered">${adminSession.a_name}</h5>
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
            <li><a id="store-mng" href="store_mng.admin">매장 관리</a></li>
            <li class="active"><a id="store-menu" href="pending_menuimg.admin">매장 메뉴 관리</a></li>
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
       
        <li class="sub-menu">
          <a id="statistics" href="javascript:;">
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
      <section class="wrapper site-min-height">
        <h3><i class="fa fa-angle-right"></i> 매장 메뉴 이미지 승인</h3>
        <!-- BASIC FORM ELELEMNTS -->

        <!-- 테이블 -->
        <div class="row mt">
          <div class="col-lg-12 cardd mb-4" style="height: fit-content;">
            <div class="card-header">
              <i class="fa fa-table"></i>
              신청 목록
            </div>
            <div class="card-body">
              
                  <table id="datatablesSimple">
                    <thead>
                      <tr>
                        <th data-sortable="" style="width: 5%;"><a href="#" class="dataTable-sorter">번호</a></th>
                        <th data-sortable="" style="width: 10%;"><a href="#" class="dataTable-sorter">매장명</a></th>
                        <th data-sortable="" style="width: 10%;"><a href="#" class="dataTable-sorter">코드</a></th>
                        <th data-sortable="" style="width: 11%;"><a href="#" class="dataTable-sorter">전화번호</a></th>
                        <th data-sortable="" style="width: 11%;"><a href="#" class="dataTable-sorter">메뉴명</a></th>
                        <th data-sortable="" style="width: 11%;"><a href="#" class="dataTable-sorter">이미지명</a></th>
                        <th data-sortable="" style="width: 10%;"><a href="#" class="dataTable-sorter">승인</a></th>
                      </tr>
                    </thead>

                    <tbody>
                    <c:forEach var="image" items="${pendingMenuImg}" varStatus="vs">
							<tr id="delete${vs.index }">
								<td>${vs.count}</td>
								<td>${image.si_name} ${image.si_loc }</td>
								<td><a href="store_menu_detail.admin"><strong id="si_code${vs.index }">${image.si_code}</strong></a></td>
								<td id="si_tel${vs.index }">${image.si_tel}</td>
								<td id="m_name${vs.index }">${image.m_name}</td>
								<td style="display:none;" id="m_code${vs.index }">${image.m_code}</td>
								<td><a href="${image.m_pending_img }">${(image.m_pending_img).split("___")[1]}</a></td>
								<td><button onclick="okayy${vs.index}()" class="btn btn-success btn-xs">
										<i class="fa fa-check"></i>
									</button>
									<button onclick="noo${vs.index}()" class="btn btn-danger btn-xs">
										<i class="fa fa-times"></i>
									</button>
								</td>
							</tr>
							<script>
								function okayy${vs.index}(){
									var si_tel = document.getElementById("si_tel${vs.index }").innerText;
									var si_code = document.getElementById("si_code${vs.index }").innerText;
									var m_code = document.getElementById("m_code${vs.index }").innerText;
									var m_name = document.getElementById("m_name${vs.index }").innerText;
// 									alert(m_code);
									Swal.fire({
									    title: "승인하시겠습니까?",
									    html: "승인 시, 신청 이미지가 등록됩니다<br>",
									    showCancelButton: true,
									    confirmButtonColor: "#3085d6",
							  		    cancelButtonColor: "#d33",
									    cancelButtonText: "취소",
									    confirmButtonText: "승인"
									}).then((result) => {
									    if (result.isConfirmed) {
									    	//일치 계정 환인띠
									$.ajax({
							             type: "POST",
							             url: "/confirmMenuImg.admin",
							             data: JSON.stringify({
												"si_tel" : si_tel,
												"si_code" : si_code,
												"m_name" : m_name,
												"m_code" : m_code												
										  	}),
							             dataType: "json",
							             contentType: "application/json",
								          success:function(data){
								        	  Swal.fire({
								 	    		  icon: "success",
								 	    		  text: "승인되었습니다",
								 	    		  showConfirmButton: false,
								 	    		  timer: 1500
								 				});
								        	  $("#delete${vs.index}").remove();
								          },
								          error:function(data){
								             console.log("스토어 계정생성에러");
								          }
								       }); //ajax 끝
										}//result.isConfirmed
									});
									
								}
								
								function noo${vs.index}(){
									var si_tel = document.getElementById("si_tel${vs.index }").innerText;
									var si_code = document.getElementById("si_code${vs.index }").innerText;
									var m_code = document.getElementById("m_code${vs.index }").innerText;
									var m_name = document.getElementById("m_name${vs.index }").innerText;
									Swal.fire({
									    title: "거절하시겠습니까?",
									    html: "거절 시, 가게로 알립니다<br>",
									    showCancelButton: true,
									    confirmButtonColor: "#3085d6",
							  		    cancelButtonColor: "#d33",
									    cancelButtonText: "취소",
									    confirmButtonText: "승인"
									}).then((result) => {
									    if (result.isConfirmed) {
									$.ajax({
							             type: "POST",
							             url: "/rejectMenuImg.admin",
							             data: JSON.stringify({
												"si_tel" : si_tel,
												"si_code" : si_code,
												"m_name" : m_name,
												"m_code" : m_code												
										  	}),
							             dataType: "json",
							             contentType: "application/json",
								          success:function(data){
								        	  Swal.fire({
								 	    		  icon: "error",
								 	    		  text: "거절되었습니다.",
								 	    		  showConfirmButton: false,
								 	    		  timer: 1500
								 			});
								        	  $("#delete${vs.index}").remove();
								          },
								          error:function(data){
								             console.log("스토어 계정생성에러");
								          }
								       }); //ajax 끝
										}//result.isConfirmed
									});
								}
							</script>
							</c:forEach>
                    </tbody>
                  </table>
                
              </div>
            </div>
          </div>
        </div>
        <!-- /row -->
        <!-- /row -->
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
  

  <script src="https://cdn.jsdelivr.net/npm/simple-datatables@3.2.0/dist/umd/simple-datatables.js"></script>
  <script src="resources/assets/js/admin/datatable/datatables-simple-demo.js"></script>
</body>

</html>