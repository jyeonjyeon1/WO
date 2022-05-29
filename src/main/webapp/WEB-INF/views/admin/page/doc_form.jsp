<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <title>워킹오더 서류관리</title>

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
          <li class="sub-menu dcjq-parent-li">
            <a id="page-manage" class="active dcjq-parent" href="javascript:;">
              <i class="fa fa-sticky-note"></i>
              <span>페이지 관리</span>
              </a>
            <ul class="sub">
              <li><a id="banner-mng" href="banner_mng.admin">배너 관리</a></li>
              <li><a id="banner-mng" href="drink_recom.admin">오늘의 음료</a></li>
              <li><a id="banner-mng" href="searchbar_mng.admin">검색어 관리</a></li>
              <li><a id="terms-mng" href="terms_mng.admin">약관 관리</a></li>
              <li><a id="policy-mng" href="policy_mng.admin">정책 관리</a></li>
              <li class="active"><a id="doc-form" href="doc_form.admin">증빙서류</a></li>
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
      <section class="wrapper" style="min-height:600px;">
        <h3><i class="fa fa-angle-right"></i> 증빙서류 및 문서</h3>
        <a type="button" data-toggle="modal" href="#addDoc" class="btn btn-theme" 
        style="margin-left:20px;margin-top:10px;width:100px;float: left;">서류 추가</a>
        <!-- 테이블 -->
        <div class="row mt">
          <div class="col-lg-12 cardd mb-4" style="height: fit-content;">
            <div class="card-header">
              <i class="fa fa-table"></i>
              검색 결과
            </div>
            <div class="card-body">
              <div class="dataTable-wrapper dataTable-loading no-footer sortable searchable fixed-columns">
                
                <div class="dataTable-container">
                  <table id="datatablesSimple">
                    <thead>
                      <tr>
                        <th data-sortable="" style="width: 7%;"><a href="#" class="dataTable-sorter">번호</a></th>
                        <th data-sortable="" style="width: 19%;"><a href="#" class="dataTable-sorter">서류명</a></th>
                        <th data-sortable="" style="width: 15%;"><a href="#" class="dataTable-sorter">서류 설명</a></th>
                        <th data-sortable="" style="width: 15%;"><a href="#" class="dataTable-sorter">파일명</a></th>
                        <th data-sortable="" style="width: 15%;"><a href="#" class="dataTable-sorter">등록일시</a></th>
                        <th data-sortable="" style="width: 10%;"><a href="#" class="dataTable-sorter"> </a></th>
                      </tr>
                    </thead>

                    <tbody>
                    <c:forEach var="docList" items="${docList}" varStatus="vs">
                      <tr id="deleteForm${vs.index}">
                        <td>${vs.count}<input type="hidden" id="d_seq${vs.index }" value="${docList.d_seq}"/></td>
                        <td>${docList.d_name}</td>
                        <td>${docList.d_memo}</td>
                        <td><a href="${docList.d_file_url}">${docList.d_file_name}</a></td>
                        <td><fmt:formatDate value="${docList.d_regdate}" pattern="yy-MM-dd a hh:mm"/></td>
                        <td>
                        	<button onclick="deleteDoc${vs.index}()"
							class="btn btn-danger btn-xs">
								<i class="fa fa-trash-o "></i>
							</button>
						</td>
                      </tr>
<script>
function deleteDoc${vs.index}(){
	Swal.fire({
		  title: "삭제하시겠습니까??",
		  icon: "warning",
		  showCancelButton: true,
		  confirmButtonColor: "#3085d6",
		  cancelButtonColor: "#d33",
		  confirmButtonText: "삭제",
			  cancelButtonText: "아니오"
		}).then((result) => {
		  if (result.isConfirmed) {
			  $.ajax({
		    	    type: "POST",
		    	    url: "/deleteDoc.admin",
		    	    data: JSON.stringify({"d_seq": $("#d_seq${vs.index}").val()}), 
		    	    dataType: "json",
		    	    contentType: "application/json",
		    	    success: function (data) {
		    	        if (data == 1) {
			    	        Swal.fire({
			    	            icon: "success",
			    	            title: "문서 삭제 완료",
			    	            showConfirmButton: false,
			    	            timer: 1500
			    	        });
			    	        $("#deleteForm${vs.index}").remove();
		    	        }else if(data == 0){
		    	        	Swal.fire({
			    	            icon: "warning",
			    	            title: "문서 삭제 실패",
			    	            showConfirmButton: false,
			    	            timer: 1500
			    	        });
		    	        }
		    	    },
		    	    error: function (data) {
		    	        console.log("배너 삭제 통신에러");
		    	    }
		 		});//ajax end  
		  }//if (result.isConfirmed)
		})//then((result)
	
}
</script>                      
                    </c:forEach>
                    </tbody>

                  </table>
<!-- 서류 추가 모달 -->
<div aria-hidden="true" aria-labelledby="myModalLabel"
	role="dialog" tabindex="-1" id="addDoc"
	class="modal fade" style="margin: 20px auto 0;">
	<div class="modal-dialog store">
		<div class="modal-content">
			<div class="modal-header_store">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title"> 서류 추가</h4>
			</div>
			<!-- 	정보시작 -->
			<div class="modal_wrapbody" style="height:250px;">
				<div class="modal-body" style="padding-bottom: 0;">
					<p style="margin-bottom: 2px;">서류명</p>
					<input type="text" id="d_name" value=""  autocomplete="off"
						class="form-control">
				</div>
				<div class="modal-body" style="padding-bottom: 0;">
					<p style="margin-bottom: 2px;">서류 메모</p>
					<input type="text" id="d_memo" value="" autocomplete="off"
						class="form-control">
				</div>
				<!-- 마지막 정보는 아래 패딩 유지 -->
				<div class="modal-body">
					<p style="margin-bottom: 2px;">파일</p>
					<input id="mydoc" type="file" class="grey__button" accept="*"
											id="d_file_name">
				</div>
			</div>
			<div class="modal-footer">
				<button data-dismiss="modal" class="btn btn-default"
					type="button">취소</button>
				<button
					class="btn btn-theme" type="button" onclick="insertDoc()">등록</button>
			</div>
		</div>
	</div>
</div>
<!-- 서류 추가 모달 끄트! -->               
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
<!--     <div class="container"> -->
<!--       <input type="text" id="datepicker2_1"> ~ -->
<!--       <input type="text" id="datepicker2_2"> -->
<!-- <script>
  datePickerSet($("#datepicker1_1"), $("#datepicker1_2"), true); //다중은 시작하는 달력 먼저, 끝달력 2번째
        datePickerSet($("#datepicker2_1"), $("#datepicker2_2"), true);
/*
    * 달력 생성기
    * @param sDate 파라미터만 넣으면 1개짜리 달력 생성
    * @example   datePickerSet($("#datepicker"));
    * 
    * 
    * @param sDate, 
    * @param eDate 2개 넣으면 연결달력 생성되어 서로의 날짜를 넘어가지 않음
    * @example   datePickerSet($("#datepicker1"), $("#datepicker2"));
    */
function datePickerSet(sDate, eDate, flag) {

    //시작 ~ 종료 2개 짜리 달력 datepicker   
    if (!isValidStr(sDate) && !isValidStr(eDate) && sDate.length > 0 && eDate.length > 0) {
        var sDay = sDate.val();
        var eDay = eDate.val();

        if (flag && !isValidStr(sDay) && !isValidStr(eDay)) { //처음 입력 날짜 설정, update...         
            var sdp = sDate.datepicker().data("datepicker");
            sdp.selectDate(new Date(sDay.replace(/-/g, "/")));  //익스에서는 그냥 new Date하면 -을 인식못함 replace필요

            var edp = eDate.datepicker().data("datepicker");
            edp.selectDate(new Date(eDay.replace(/-/g, "/")));  //익스에서는 그냥 new Date하면 -을 인식못함 replace필요
        }

        //시작일자 세팅하기 날짜가 없는경우엔 제한을 걸지 않음
        if (!isValidStr(eDay)) {
            sDate.datepicker({
                maxDate: new Date(eDay.replace(/-/g, "/"))
            });
        }
        sDate.datepicker({
            language: 'ko',
            autoClose: true,
            onSelect: function () {
                datePickerSet(sDate, eDate);
            }
        });

        //종료일자 세팅하기 날짜가 없는경우엔 제한을 걸지 않음
        if (!isValidStr(sDay)) {
            eDate.datepicker({
                minDate: new Date(sDay.replace(/-/g, "/"))
            });
        }
        eDate.datepicker({
            language: 'ko',
            autoClose: true,
            onSelect: function () {
                datePickerSet(sDate, eDate);
            }
        });

        //한개짜리 달력 datepicker
    } else if (!isValidStr(sDate)) {
        var sDay = sDate.val();
        if (flag && !isValidStr(sDay)) { //처음 입력 날짜 설정, update...         
            var sdp = sDate.datepicker().data("datepicker");
            sdp.selectDate(new Date(sDay.replace(/-/g, "/"))); //익스에서는 그냥 new Date하면 -을 인식못함 replace필요
        }

        sDate.datepicker({
            language: 'ko',
            autoClose: true
        });
    }


    function isValidStr(str) {
        if (str == null || str == undefined || str == "")
            return true;
        else
            return false;
    }
}
        </script>
 -->
<!--     </div> -->
<!--     <div class="container" style="height: 100px;"></div> -->

    <!-- 푸더 import -->
		<%@ include file="../inc/admin_footer.jsp" %>
    <!--footer end-->
  </section>
 
  <!--script for this page-->
<script>
let nansu = "";
function insertDoc(){
	nansu = Math.floor(Math.random() * 1000); //0~999 
	uploadDoc();
}
//통장사본 업로드 
uploadDoc = () => {
    AWS.config.update({
        region: 'ap-northeast-2',
        credentials: new AWS.CognitoIdentityCredentials({
            IdentityPoolId: '<spring:eval expression='@config.getProperty("S3_POOL_ID")'/>',
        })
    })
    
    let files = document.getElementById("mydoc").files;
    let file = files[0];
    let d_file_name="";
    var d_name = $("#d_name").val();
    var d_memo = $("#d_memo").val();
    if(d_name == null || d_name=="" ){
    	Swal.fire({
            icon: "warning",
            title: "서류명을 입력하세요",
            showConfirmButton: false,
            timer: 1000
        });
    }
    else if(file == null){
    	Swal.fire({
            icon: "warning",
            title: "파일이 없습니다",
            showConfirmButton: false,
            timer: 1000
        });
    }
    else if(file != null){
	    let fileName = file.name;
	    fileName = nansu +"____"+ fileName;
	    let upload = new AWS.S3.ManagedUpload({
	        params: {
	            Bucket: 'walkingorder/foradmin',
	            Key: fileName,
	            Body: file
	        }
	    })
    const promise = upload.promise();
    d_file_name = "https://walkingorder.s3.ap-northeast-2.amazonaws.com/foradmin/"+fileName;
    if(d_file_name.indexOf("+") != -1){d_file_name = d_file_name.replace(/\+/g,"%2B");}
    
    console.log(d_name);
    console.log(d_memo);
    console.log(d_file_name);
    
    var param = {
    	"d_name" : d_name,
    	"d_memo" : d_memo,
    	"d_file_url" : d_file_name
    }
  //ajax
	$.ajax({
	    type: "POST",
	    url: "/insertDoc.admin",
	    data: JSON.stringify(param), 
	    dataType: "json",
	    contentType: "application/json",
	    success: function (data) {
	        if (data == 1) {
    	        Swal.fire({
    	            icon: "success",
    	            title: "서류 등록 완료",
    	            showConfirmButton: false,
    	            timer: 1500
    	        });
    	        location.href=location.href;
	        }else if(data == 0){
	        	Swal.fire({
    	            icon: "warning",
    	            title: "서류 등록 실패",
    	            showConfirmButton: false,
    	            timer: 1500
    	        });
	        }
	    },
	    error: function (data) {
	        console.log("배너 수정 통신에러");
	    }
	});//ajax end 
  }
}
</script>
 
  <script src="https://cdn.jsdelivr.net/npm/simple-datatables@3.2.0/dist/umd/simple-datatables.js"></script>
  <script src="resources/assets/js/admin/datatable/datatables-simple-demo.js"></script>
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
  <script src="https://sdk.amazonaws.com/js/aws-sdk-2.891.0.min.js"></script>
</body>

</html>
