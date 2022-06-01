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
  <title>워킹오더 검색어 관리</title>

  <!-- Favicons -->
  <link href="resources/assets/images/admin/logo/logo_only.svg" rel="icon">
  <!-- 테이블용 css -->
  <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<style>
.inactivee{
	display:none;
}
</style>
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
        <li class="sub-menu dcjq-parent-li">
          <a id="page-manage" class="active dcjq-parent" href="javascript:;">
            <i class="fa fa-sticky-note"></i>
            <span>페이지 관리</span>
          </a>
          <ul class="sub">
            <li><a id="banner-mng" href="banner_mng.admin">배너 관리</a></li>
            <li><a id="banner-mng" href="drink_recom.admin">오늘의 음료</a></li>
            <li class="active"><a id="banner-mng" href="searchbar_mng.admin">검색어 관리</a></li>
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
        <h3><i class="fa fa-angle-right"></i> 검색어 관리</h3>

        <!-- 테이블 -->
        <div class="row mt">
          <div class="col-lg-12 cardd mb-4" style="height: fit-content;">
            <div class="card-header">
              <i class="fa fa-table"></i>
              검색 결과
            </div>
            <div class="card-body" style="min-height: 500px;">
            <div class="col-sm-1">
            <br>
            <button type="button" class="btn btn-success" onclick="addKeyword()">검색 추가</button>
            <br><br>
            <button type="button" class="btn btn-danger" onclick="deleteAll()">일괄 삭제</button>
            <br><br>
            <button type="button" class="btn btn-warning" onclick="deleteSelected()">선택 삭제</button>
            <br><br>
            <button class="btn btn-dark" onclick="checkBox()">전체선택</button>
            </div>
              <div class="dataTable-wrapper dataTable-loading no-footer sortable searchable fixed-columns">

                <div class="dataTable-container">
                  <table id="datatablesSimple">
                    <thead>
                      <tr>
                        <th style="width: 7%;">
                            <input type="checkbox" id="allCheckBox" style="opacity:0;"> 
                        </th>
                        <th data-sortable="" style="width: 10%;"><a href="#" class="dataTable-sorter">번호</a></th>
                        <th data-sortable="" style="width: 30%;"><a href="#" class="dataTable-sorter">검색문구</a></th>
                        <th data-sortable="" style="width: 30%;"><a href="#" class="dataTable-sorter">URL</a></th>
                        <th data-sortable="" style="width: 20%;"><a href="#" class="dataTable-sorter">수정</a></th>
                      </tr>
                    </thead>

                    <tbody>
                      
                      <c:forEach var="searchKeywordList" items="${searchKeywordList }" varStatus="vs">
                      <tr id="oneRow${vs.index}">
                      	<td>
                          <label class="checkbox-inline">
                          <input type="hidden" id="sb___seq${vs.index}" value="${searchKeywordList.sb_seq}"/>
                            <input type="checkbox" name="sb_seqs" value="${vs.index}">&nbsp;
                          </label>
                        </td>
                        <td>${vs.count}</td>
                        <td id="sb_keyword${vs.index}">${searchKeywordList.sb_keyword}
                        	<input type="text" id="search____text${vs.index}" class="inactivee" value="${searchKeywordList.sb_keyword}"></td>
                        <td id="sb_url${vs.index}">${searchKeywordList.sb_url}
                        	<input type="text" id="search____url${vs.index}" class="inactivee" value="${searchKeywordList.sb_url}"></td>
                        <td>
                          <button type="button" id="change_btn${vs.index}" onclick="changeKeyword${vs.index}()" class="btn btn-primary btn-xs">
                          	<i id="change_icon${vs.index}" class="fa fa-pencil"></i>
                          </button>
                          <button type="button" id="cancel${vs.index}" onclick="cancel${vs.index}()" class="inactivee">
                          	<i class="fa fa-rotate-left "></i>
                          </button>
                          <button type="button" onclick="deleteOne${vs.index}()" class="btn btn-danger btn-xs">
                          	<i class="fa fa-trash-o "></i>
                          </button>
                          
                        </td>
                      </tr>
                      
                      <script>
                      //reset change
                      function cancel${vs.index}(){
                    	  $("#search____text${vs.index}").addClass("inactivee");
              	        $("#search____text${vs.index}").removeClass("form-control");
              	        $("#search____url${vs.index}").addClass("inactivee");
              	        $("#search____url${vs.index}").removeClass("form-control");
              	        $("#change_btn${vs.index}").addClass("btn-primary");
              	        $("#change_btn${vs.index}").removeClass("btn-success");
              	        $("#change_icon${vs.index}").removeClass("fa-check");
              	        $("#change_icon${vs.index}").addClass("fa-pencil");
              	        $("#cancel${vs.index}").removeClass("btn btn-secondary btn-xs");
              	        $("#cancel${vs.index}").addClass("inactivee");
              	      var original = document.getElementById("sb_keyword${vs.index}").innerText;
            	  	  var original2 = document.getElementById("sb_url${vs.index}").innerText;
          	  	      $("#search____text${vs.index}").val(original);
          	  	      $("#search____url${vs.index}").val(original2);
                      }
                      
                      function changeKeyword${vs.index}(){
                    	  
                    	  if ($("#search____text${vs.index}").hasClass("inactivee")==false) {//수정 부분
                    		  var original = document.getElementById("sb_keyword${vs.index}").innerText;
                    	  	  var change = $("#search____text${vs.index}").val();
                    	  	  var original2 = document.getElementById("sb_url${vs.index}").innerText;
                  	  	      var change2 = $("#search____url${vs.index}").val();
                  	  	      var sb_seqq = $("#sb___seq${vs.index}").val();
                  	  	      if(change == "" || change2 === ""){
                  	  	    	Swal.fire({
	  	 		    	            icon: "warning",
	  	 		    	            title: "입력값이 비어있습니다",
	  	 		    	            showConfirmButton: false,
	  	 		    	            timer: 1500
	  	 		    	        });
                  	  	      }else if((change!=original || change2!=original2) && change != "" && change2!=""){
                    	        Swal.fire({
                          		    title: "정말 수정하시겠습니까?",
                          		    html: "<br>",
                          		    icon: "warning",
                          		    showCancelButton: true,
                          		    confirmButtonColor: "#3085d6",
                          		    cancelButtonColor: "#d33",
                          		    confirmButtonText: "네",
                          		    cancelButtonText: "아니오"
                          		  }).then((result) => {
                          		    if (result.isConfirmed) {
                                  	    var param = {
                                  	    	"sb_seq" : sb_seqq,
                                  	    	"sb_keyword" : change,
                                  	    	"sb_url" : change2
                                  	    };
                          		    	$.ajax({
                    	  	 	    	    type: "POST",
                    	  	 	    	    url: "/updateKeyword.admin",
                    	  	 	    	    data: JSON.stringify(param), 
                    	  	 	    	    dataType: "json",
                    	  	 	    	    contentType: "application/json",
                    	  	 	    	    success: function (data) {
                    	  	 	    	        if (data == 1) {
                    	  	 	    	        	Swal.fire(
                                              		        "수정완료",
                                              		        "수정되었습니다.",
                                              		        "success"
                                              		      );
                                              		    document.getElementById("sb_keyword${vs.index}").innerText = change;
                                              		    document.getElementById("sb_url${vs.index}").innerText = change2;
                                              		      
                                              		      
                                              		    $("#search____text${vs.index}").addClass("inactivee");
                                            	        $("#search____text${vs.index}").removeClass("form-control");
                                            	        $("#search____url${vs.index}").addClass("inactivee");
                                            	        $("#search____url${vs.index}").removeClass("form-control");
                                            	        $("#change_btn${vs.index}").addClass("btn-primary");
                                            	        $("#change_btn${vs.index}").removeClass("btn-success");
                                            	        $("#change_icon${vs.index}").removeClass("fa-check");
                                            	        $("#change_icon${vs.index}").addClass("fa-pencil");
                                            	        $("#cancel${vs.index}").removeClass("btn btn-secondary btn-xs");
                    	                    	        $("#cancel${vs.index}").addClass("inactivee");
                    	                    	        
                    	  	 	    	        }else{
                    	  	 	    	        	Swal.fire(
                      	 	    	    		        "등록 실패",
                      	 	    	    		        "이미 있거나 너무 길어요~",
                      	 	    	    		        "error"
                      	 	    	    		      );
                    	  	 	    	        	}
                    	  	 	    	    },
                    	  	 	    	    error: function (data) {
                    	  	 	    	        console.log("메뉴추가 통신에러");
                    	  	 	    	    }
                    	  	 		});//ajax end
                          		    
                          		    }//isconfirmed
                          		 })//result
	                    		  }//바뀌지 않은지
	                    		  else{//안바뀌었을때는 그냥 닫힘
	                    			 $("#search____text${vs.index}").addClass("inactivee");
	                      	        $("#search____text${vs.index}").removeClass("form-control");
	                      	        $("#search____url${vs.index}").addClass("inactivee");
	                      	        $("#search____url${vs.index}").removeClass("form-control");
	                      	        $("#change_btn${vs.index}").addClass("btn-primary");
	                      	        $("#change_btn${vs.index}").removeClass("btn-success");
	                      	        $("#change_icon${vs.index}").removeClass("fa-check");
	                      	        $("#change_icon${vs.index}").addClass("fa-pencil");
	                    	        $("#cancel${vs.index}").removeClass("btn btn-secondary btn-xs");
	                    	        $("#cancel${vs.index}").addClass("inactivee");
	                    		  }
                    		  
                    		  }else{//처음 클릭
                    	        $("#search____text${vs.index}").addClass("form-control");
                    	        $("#search____text${vs.index}").removeClass("inactivee");
                    	        $("#search____url${vs.index}").addClass("form-control");
                    	        $("#search____url${vs.index}").removeClass("inactivee");
                    	        $("#cancel${vs.index}").addClass("btn btn-secondary btn-xs");
                    	        $("#cancel${vs.index}").removeClass("inactivee");
                    	        $("#change_btn${vs.index}").removeClass("btn-primary");
                    	        $("#change_btn${vs.index}").addClass("btn-success");
                    	        $("#change_icon${vs.index}").addClass("fa-check");
                    	        $("#change_icon${vs.index}").removeClass("fa-pencil");
                    	    }
                    	  
                      }
                      
                      function deleteOne${vs.index}(){
                    	  var sb_seqq = $("#sb___seq${vs.index}").val();
                    	  var param = {"sb_seq" : sb_seqq};
                    	  Swal.fire({
                    		    title: "정말 삭제하시겠습니까?",
                    		    text: "삭제시 복구할 수 없습니다.",
                    		    icon: "warning",
                    		    showCancelButton: true,
                    		    confirmButtonColor: "#3085d6",
                    		    cancelButtonColor: "#d33",
                    		    confirmButtonText: "네",
                    		    cancelButtonText: "아니오"
                    		  }).then((result) => {
                    		    if (result.isConfirmed) {
                    		    	$.ajax({
                	  	 	    	    type: "POST",
                	  	 	    	    url: "/deleteOneKeyword.admin",
                	  	 	    	    data: JSON.stringify(param), 
                	  	 	    	    dataType: "json",
                	  	 	    	    contentType: "application/json",
                	  	 	    	    success: function (data) {
              	  	 	    	        	Swal.fire(
           	                    		        "삭제완료",
           	                    		        "삭제되었습니다.",
           	                    		        "success"
           	                    		      )
           	                    		      $("#search____text${vs.index}").remove();
           	                      	          $("#search____text${vs.index}").remove();
           	                      	          $("#oneRow${vs.index}").remove();
                	  	 	    	    },
                	  	 	    	    error: function (data) {
                	  	 	    	        console.log("메뉴추가 통신에러");
                	  	 	    	    }
                	  	 		});//ajax end
                    		      
                    		    }
                    		  })
                    	  
                      }
                      </script>
                      </c:forEach>
                    </tbody>
                  </table>
                

              </div>
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
 
  <!--script for this page-->
  <script>
  function addKeyword(){//addSearchKeyword
	  $.ajax({
	        url : "addSearchKeyword.admin",
	        dataType: "html",	// 이 부분이 반환 타입을 핸들링하는 곳이다.
	        type: "get",
	        success: function(data) {
	          $("#datatablesSimple tbody").append(data); // 반환된 data를 body태그에 추가
	        },
	        error: function (){alert("실패");}
	    });
  }
  
  function deleteAll(){
	  Swal.fire({
		    title: "정말 모두 삭제하시겠습니까?",
		    text: "삭제시 복구할 수 없습니다.",
		    icon: "warning",
		    showCancelButton: true,
		    confirmButtonColor: "#3085d6",
		    cancelButtonColor: "#d33",
		    confirmButtonText: "네",
		    cancelButtonText: "아니오"
	  }).then((result) => {
		    if (result.isConfirmed) {
		    	Swal.fire({
				    title: "진짜!?",
				    text: "삭제시 복구할 수 없습니다.",
				    icon: "warning",
				    showCancelButton: true,
				    confirmButtonColor: "#3085d6",
				    cancelButtonColor: "#d33",
				    confirmButtonText: "네",
				    cancelButtonText: "아니오"
			  }).then((result) => {
				    if (result.isConfirmed) {
						location.href="deleteAllKeyword.admin";		      
				    }
			  })	      
		    }
	  })
  }
  
  function deleteSelected(){
	  var query = "input[name='sb_seqs']:checked";
      var selectedEls = document.querySelectorAll(query);
      //og_seq만
      let sb_seq = "";
      selectedEls.forEach((el) => {
    	  sb_seq += el.value + ",";
      })
      Swal.fire({
		    title: "선택 키워드 삭제하시겠습니까?",
		    text: "삭제시 복구할 수 없습니다.",
		    icon: "warning",
		    showCancelButton: true,
		    confirmButtonColor: "#3085d6",
		    cancelButtonColor: "#d33",
		    confirmButtonText: "네",
		    cancelButtonText: "아니오"
	  }).then((result) => {
		    if (result.isConfirmed) {
		    	var indexs = [];
		    	indexs = sb_seq.split(",");
		    	let seqs = "";
		    	for(i=0;i<indexs.length-1;i++){
		    		
		    		var imsi = "#sb___seq"+indexs[i];
		    		var sb_seqqq = $(imsi).attr("value");
		    		seqs += sb_seqqq + ",";
		    		
		    		$("#search____text"+indexs[i]).remove();
		    		$("#search____url"+indexs[i]).remove();
		    		$("#oneRow"+indexs[i]).remove();
		    	}
		    	var param = {
		    		"seqs" : seqs
		    	}
		    	
		    	$.ajax({
  	 	    	    type: "POST",
  	 	    	    url: "/deleteKeyword.admin",
  	 	    	    data: JSON.stringify(param), 
  	 	    	    dataType: "json",
  	 	    	    contentType: "application/json",
  	 	    	    success: function (data) {
 	    	        	Swal.fire(
             		        "삭제완료",
             		        "삭제되었습니다.",
             		        "success"
             		      )
  	 	    	    },
  	 	    	    error: function (data) {
  	 	    	        console.log("선택삭제 통신에러");
  	 	    	    }
  	 		    });//ajax end      
		   }
	  })
  }
  function checkBox(){
// 	  $('#allCheckBox').prop('checked',true);
	  var checked = $('#allCheckBox').is(':checked');
	  
		if(checked){
			$('#allCheckBox').prop('checked',false);
			$('input:checkbox').prop('checked',false);
		}else{
			$('#allCheckBox').prop('checked',true);
			$('input:checkbox').prop('checked',true);
		}
  }
  </script>

  <script src="https://cdn.jsdelivr.net/npm/simple-datatables@3.2.0/dist/umd/simple-datatables.js"></script>
  <script src="resources/assets/js/admin/datatable/datatables-simple-demo.js"></script>
</body>

</html>