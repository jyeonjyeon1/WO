<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="no-js" lang="kor">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="x-ua-compatible" content="ie=edge" />
  <title>Walking Order</title>
  <meta name="description" content="" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link href="resources/assets/images/logo/logo_only.svg" rel="icon" />


  <!-- ========================= CSS here ========================= -->

  <script src="resources/assets/js/jquery-3.6.0.js"></script>
  <style>
    .lni.lni-headphone-alt {
      font: normal 2em/1 'LineIcons';
      margin: 35px;
      color: rgb(185, 83, 29);
      font-weight: 700;
    }

    .faq_cus_choose,
    .fag_choose {
      display: none;
    }

    .faq_cus_choose:checked+label {
      font-weight: 700;
      border-bottom: 2px solid orange;
    }

    .faq_cus_label {
      display: inline-block;
      margin: 0 30px -1px;
      padding: 20px 0px;
      font-weight: 600;
      text-align: center;
      color: #555;
    }

    .faq_cus_label:hover {
      color: #ffa000;
      cursor: pointer;
    }

    .fag_choose:checked+label {
      background-color: #ffa000;
      color: #fff;
      font-weight: 700;
    }
    
    .w-btn {
	    position: relative;
	    border: none;
	    display: inline-block;
	    padding: 15px 30px;
	    border-radius: 15px;
	    font-family: "paybooc-Light", sans-serif;
	    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
	    text-decoration: none;
	    font-weight: 600;
	    transition: 0.25s;
	}
    .w-btn-gra1 {
	    background: linear-gradient(-45deg, #33ccff 0%, #ff99cc 100%);
	    color: white;
	}

    #tab1:checked~#content1,
    #tab2:checked~#content2,
    #tab3:checked~#content3,
    #tab4:checked~#content4,
    #tab5:checked~#content5,
    #tab6:checked~#content6,
    #tab7:checked~#content7,
    #tab8:checked~#content8,
    #tab9:checked~#content9,
    #tab10:checked~#content10,
    #tab11:checked~#content11,
    #tab12:checked~#content12,
    #tab13:checked~#content13,
    #tab14:checked~#content14,
    #tab15:checked~#content15,
    #tab16:checked~#content16 {
      display: block;
    }

    @media (max-width: 770px) {
      .faq_label {
        margin: auto;
        padding-top: 6px;
        text-align: center;
        height: 52px;
        vertical-align: middle;
        width: 16%;
        font-weight: 600;
        color: #555;
        background-color: rgba(241, 241, 241, 0.573);
      }

      .cus_lab {
        margin: auto;
        padding-top: 13px;
        text-align: center;
        height: 52px;
        vertical-align: middle;
        width: 32%;
        font-weight: 600;
        color: #555;
        background-color: rgba(241, 241, 241, 0.573);
      }
    }

    @media (min-width: 771px) {

      .faq_label,
      .cus_lab {
        display: inline-block;
        margin: auto;
        padding: 12px;
        width: 16.2%;
        font-weight: 600;
        text-align: center;
        color: #555;
        background-color: rgba(241, 241, 241, 0.573);
      }
    }
    
    .event_listtt {
    	font-size:16px;
    	color:black;
    	padding:16px 20px;
    	
    
    }
   
  </style>


  <!-- ========================= JS here ========================= -->

  <script src="resources/assets/js/main_1.js"></script>
  <script type="text/javascript">
    jQuery(document).ready(function () {
      $('#headers').load("header.html");
      $('#footers').load("footer.html");
      
      
    });
         //========= Hero Slider
         
  
	function count_num(visits, seq) {
		visits++;
		
		var param = {
				"fac_visits" : visits,
				"fac_seq" : seq
				};
		  $.ajax({
	             type: "POST",
	             url: "/updateVisits.user",
	             data: JSON.stringify(param),
	             dataType: "json",
	             contentType: "application/json",
	          success:function(data){
	        	  console.log("성공");
	          },
	          error:function(data){
	        	  console.log("실패");
	          }
	       });
	}
     
      

	</script>

</head>

<body>
  <!-- header import -->
  <%@ include file="/WEB-INF/views/user/inc/header.jsp" %>
  <section style="min-height: 500px;">
    <div class="container">
      <!-- 상담원 로고 -->
      <div style="text-align:center">
        <i class="lni lni-headphone-alt">&nbsp;고객센터</i>
        <h2></h2>
      </div>
    </div>


    <div class="container" style="padding:0 0 200px;background-color: white; border-top: 1px solid rgba(0, 0, 0, .15);">

      <!-- FAQ / 공지사항 분리 -->
      <div class="col-12">
        <input class="faq_cus_choose" id="tab1" type="radio" name="tabs" checked>
        <!--디폴트 메뉴-->
        <label class="faq_cus_label" for="tab1">워킹오더 소식</label>
        <input class="faq_cus_choose" id="tab2" type="radio" name="tabs">
        <label class="faq_cus_label" for="tab2">자주묻는 질문</label>
        <input class="faq_cus_choose" id="tab3" type="radio" name="tabs">
        <label class="faq_cus_label" for="tab3">1:1 문의</label>

        <!-- 공지사항 등 워킹오더 소식 -->
        <div class="tapsection" id="content1" style="padding-top:20px; border-top: 1px solid rgba(0, 0, 0, .15);">
          <div class="col-12">

            <input class="fag_choose" id="tab4" type="radio" name="tabsss" checked>
            <label class="cus_lab" for="tab4">전체</label>
            <input class="fag_choose" id="tab5" type="radio" name="tabsss">
            <label class="cus_lab" for="tab5">공지사항</label>
            <input class="fag_choose" id="tab6" type="radio" name="tabsss">
            <label class="cus_lab" for="tab6">이벤트</label>
            <!-- 전체 시작-->
           
            <div class="tapsection" id="content4" style="padding-top:20px; border-top: 1px solid rgba(0, 0, 0, .15);">
              <div class="col-12">
                <section class="">
                  <div class="container-md ">
                    <!-- 전체의 1 -->
                     
                     <div class="accordion" id="accordionPanelsStayOpenExample">
                      <c:forEach var="newsList" items="${newsList}" varStatus="vs">
                      <div class="accordion-item">
                        <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-21${vs.index}" aria-expanded="false"
                            aria-controls="panelsStayOpen-21${vs.index}">
                            ${newsList.n_title}
                          </button>
                        </h2>
                        <div id="panelsStayOpen-21${vs.index}" class="accordion-collapse collapse"
                          aria-labelledby="panelsStayOpen-headingOne">
                          <div class="accordion-body">
                            ${newsList.n_content}
                          </div>
                        </div>
                      </div>
                      
                     </c:forEach>
                     </div>
                     
                    </div>
                   </section>
                  </div>
                 </div> 
               
                    
            <!-- 전체 끝 -->

            <!-- 공지사항 만 -->
            <div class="tapsection" id="content5" style="padding-top:20px; border-top: 1px solid rgba(0, 0, 0, .15);">
              <div class="col-12">
                <section class="">
                  <div class="container-md ">
                  
                    <!-- 공지사항 1 -->
                    <div class="accordion" id="accordionPanelsStayOpenExample">
                     
                       <c:forEach var="newsList" items="${newsList}" varStatus="vs">
                       <c:if test="${newsList.n_type eq 'notice' }">
                      <div class="accordion-item">
                        <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-22${vs.index}" aria-expanded="false"
                            aria-controls="panelsStayOpen-22${vs.index}">
                            ${newsList.n_title}
                          </button>
                        </h2>
                        <div id="panelsStayOpen-22${vs.index}" class="accordion-collapse collapse"
                          aria-labelledby="panelsStayOpen-headingOne">
                          <div class="accordion-body">
                            ${newsList.n_content}
                          </div>
                        </div>
                      </div>
                      </c:if>
                      </c:forEach>
                     
                     </div>
                    </div>
                   </section>
                  </div>
                 </div>
                 
            <!-- 공지사항 만 끝 -->

            <!-- 이벤트 -->
            <div class="tapsection" id="content6" style="padding-top:20px; border-top: 1px solid rgba(0, 0, 0, .15);">
              <div class="col-12">
                <section class="">
                  <div class="container-md ">
                    <!-- 이벤트 1 -->
                      
                    <div class="accordion" id="accordionPanelsStayOpenExample">
                       <c:forEach var="newsList" items="${newsList}" varStatus="vs">
                       <c:if test="${newsList.n_type eq 'event'}">
                      <div class="row" style="border:1px solid rgba(0, 0, 0, .15) ; margin:0 5px 0 5px; ">
                      <a class="event_listtt" href="">
                     	 ${newsList.n_title }
                      </a>
                      </div>
                     </c:if>
                     </c:forEach>
                     </div>
                    </div>
                   </section>
                  </div>
                 </div> 
                      
                      
            <!-- 이벤트 끝 -->
          </div>
        </div>
        <!-- 공지사항 등 워킹오더 소식 끝 -->

		<!-- FAQ 자주묻는 질문 -->
        <div class="tapsection" id="content2" style="padding-top:20px; border-top: 1px solid rgba(0, 0, 0, .15);">
          <div class="col-12">

            <input class="fag_choose" id="tab7" type="radio" name="tabss" checked>
            <!--디폴트 메뉴-->
            <label class="faq_label" for="tab7">Top 10</label>
            <input class="fag_choose" id="tab8" type="radio" name="tabss">
            <label class="faq_label" for="tab8">주문 및 결제</label>
            <input class="fag_choose" id="tab9" type="radio" name="tabss">
            <label class="faq_label" for="tab9">취소 및 환불</label>
            <input class="fag_choose" id="tab10" type="radio" name="tabss">
            <label class="faq_label" for="tab10">회원</label>
            <input class="fag_choose" id="tab11" type="radio" name="tabss">
            <label class="faq_label" for="tab11">포인트 및 쿠폰</label>
            <input class="fag_choose" id="tab12" type="radio" name="tabss">
            <label class="faq_label" for="tab12">기타</label>
            <!-- Top 10 -->
            <div class="tapsection" id="content7" style="padding-top:20px; border-top: 1px solid rgba(0, 0, 0, .15);">
              <div class="col-12">
                <section class="">
                  <div class="container-md ">
                    <!-- top10의 1 -->
                    
                     <div class="accordion" id="accordionPanelsStayOpenExample">
                      <c:forEach var="toptenList" items="${toptenList}" varStatus="vs">
                      
                      <div class="accordion-item">
                        <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-11${vs.index}" aria-expanded="false"
                            aria-controls="panelsStayOpen-11${vs.index}" onclick="count_num(${toptenList.fac_visits}, ${toptenList.fac_seq});">
                            ${toptenList.fac_title}
                          </button>
                        </h2>
                        <div id="panelsStayOpen-11${vs.index}" class="accordion-collapse collapse"
                          aria-labelledby="panelsStayOpen-headingOne">
                          <div class="accordion-body">
                            ${toptenList.fac_content}
                          </div>
                        </div>
                      </div>
                     
                      </c:forEach>
                     </div>
                    </div>
                    
                </section>
              </div>
            </div>
            <!-- Top 10 끝 -->

            <!-- 주문 및 결제 -->
            <div class="tapsection" id="content8" style="padding-top:20px; border-top: 1px solid rgba(0, 0, 0, .15);">
              <div class="col-12">
                <section class="">
                  <div class="container-md ">
                    <!-- top10의 1 -->
                    
                    <div class="accordion" id="accordionPanelsStayOpenExample">
                      <c:forEach var="faqList" items="${faqList}" varStatus="vs">
                      <c:if test="${faqList.fac_type eq 'order' || faqList.fac_type eq 'payment'}">
                      <div class="accordion-item">
                        <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-12${vs.index}" aria-expanded="false"
                            aria-controls="panelsStayOpen-12${vs.index}" onclick="count_num(${faqList.fac_visits}, ${faqList.fac_seq});">
                            ${faqList.fac_title}
                          </button>
                        </h2>
                        <div id="panelsStayOpen-12${vs.index}" class="accordion-collapse collapse"
                          aria-labelledby="panelsStayOpen-headingOne">
                          <div class="accordion-body">
                            ${faqList.fac_content}
                          </div>
                        </div>
                      </div>
                     </c:if>
                      </c:forEach>
                     </div>
                    </div>
                   </section>
                  </div>
                 </div>
              
            <!-- 주문 및 결제 끝 -->

            <!-- 취소 및 환불 -->
            <div class="tapsection" id="content9" style="padding-top:20px; border-top: 1px solid rgba(0, 0, 0, .15);">
              <div class="col-12">
                <section class="">
                  <div class="container-md ">
                    <!-- top10의 1 -->
                    
                    <div class="accordion" id="accordionPanelsStayOpenExample">
                      <c:forEach var="faqList" items="${faqList}" varStatus="vs">
                      <c:if test="${faqList.fac_type eq 'cancel' || faqList.fac_type eq 'refund'}">
                      <div class="accordion-item">
                        <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-13${vs.index}" aria-expanded="false"
                            aria-controls="panelsStayOpen-13${vs.index}" onclick="count_num(${faqList.fac_visits}, ${faqList.fac_seq});">
                            ${faqList.fac_title}
                          </button>
                        </h2>
                        <div id="panelsStayOpen-13${vs.index}" class="accordion-collapse collapse"
                          aria-labelledby="panelsStayOpen-headingOne">
                          <div class="accordion-body">
                            ${faqList.fac_content}
                          </div>
                        </div>
                      </div>
                     </c:if>
                      </c:forEach>
                     </div>
                     
				  </div>
                </section>
              </div>
            </div>
            <!-- 취소 및 환불 -->

            <!-- 회원 -->
            <div class="tapsection" id="content10" style="padding-top:20px; border-top: 1px solid rgba(0, 0, 0, .15);">
              <div class="col-12">
                <section class="">
                  <div class="container-md ">
                    <!-- top10의 1 -->
                    
                     <div class="accordion" id="accordionPanelsStayOpenExample">
                      <c:forEach var="faqList" items="${faqList}" varStatus="vs">
                      <c:if test="${faqList.fac_type eq 'user'}">
                      <div class="accordion-item">
                        <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-14${vs.index}" aria-expanded="false"
                            aria-controls="panelsStayOpen-14${vs.index}" onclick="count_num(${faqList.fac_visits}, ${faqList.fac_seq});">
                            ${faqList.fac_title}
                          </button>
                        </h2>
                        <div id="panelsStayOpen-14${vs.index}" class="accordion-collapse collapse"
                          aria-labelledby="panelsStayOpen-headingOne">
                          <div class="accordion-body">
                            ${faqList.fac_content}
                          </div>
                        </div>
                      </div>
                     </c:if>
                      </c:forEach>
                     </div>
 					</div>
                </section>
              </div>
            </div>
            <!-- 회원 끝 -->

            <!-- 포인트 및 쿠폰 끝 -->
            <div class="tapsection" id="content11" style="padding-top:20px; border-top: 1px solid rgba(0, 0, 0, .15);">
              <div class="col-12">
                <section class="">
                  <div class="container-md ">
                    <!-- top10의 1 -->
                    
                    <div class="accordion" id="accordionPanelsStayOpenExample">
                      <c:forEach var="faqList" items="${faqList}" varStatus="vs">
                      <c:if test="${faqList eq 'coupon'}">
                      <div class="accordion-item">
                        <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-15${vs.index}" aria-expanded="false"
                            aria-controls="panelsStayOpen-15${vs.index}" onclick="count_num(${faqList.fac_visits}, ${faqList.fac_seq});">
                            ${faqList.fac_title}
                          </button>
                        </h2>
                        <div id="panelsStayOpen-15${vs.index}" class="accordion-collapse collapse"
                          aria-labelledby="panelsStayOpen-headingOne">
                          <div class="accordion-body">
                            ${faqList.fac_content}
                          </div>
                        </div>
                      </div>
                     </c:if>
                      </c:forEach>
                     </div>
                    </div>
                </section>
              </div>
            </div>
            <!-- 포인트 및 쿠폰 끝 -->

            <!-- 기타 -->
            <div class="tapsection" id="content12" style="padding-top:20px; border-top: 1px solid rgba(0, 0, 0, .15);">
              <div class="col-12">
                <section class="">
                  <div class="container-md ">
                    <!-- top10의 1 -->
                    
                    <div class="accordion" id="accordionPanelsStayOpenExample">
                      <c:forEach var="faqList" items="${faqList}" varStatus="vs">
                      <c:if test="${faqList eq 'etc'}">
                      <div class="accordion-item">
                        <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-15${vs.index}" aria-expanded="false"
                            aria-controls="panelsStayOpen-15${vs.index}" onclick="count_num(${faqList.fac_visits}, ${faqList.fac_seq});">
                            ${faqList.fac_title}
                          </button>
                        </h2>
                        <div id="panelsStayOpen-15${vs.index}" class="accordion-collapse collapse"
                          aria-labelledby="panelsStayOpen-headingOne">
                          <div class="accordion-body">
                            ${faqList.fac_content}
                          </div>
                        </div>
                      </div>
                     </c:if>
                      </c:forEach>
                     </div>
                    </div>
                </section>
              </div>
            </div>
            <!-- 기타 끝 -->
          </div>

        </div>
        <!-- FAQ 자주묻는 질문 끝 -->
		
		<!-- 1:1 문의 -->
        <div class="tapsection" id="content3" style="padding-top:20px; border-top: 1px solid rgba(0, 0, 0, .15);">
          <div class="col-12">

            <input class="fag_choose" id="tab13" type="radio" name="tabss" checked>
            <!--디폴트 메뉴-->
            <label class="faq_label" for="tab13">내 문의</label>
            <input class="fag_choose" id="tab14" type="radio" name="tabss">
            <label class="faq_label" for="tab14">진행중</label>
            <input class="fag_choose" id="tab15" type="radio" name="tabss">
            <label class="faq_label" for="tab15">답변 완료</label>
            <input class="fag_choose" id="tab16" type="radio" name="tabss">
            <label class="faq_label" for="tab16">문의 하기</label>
            
            <!-- 내 문의 시작-->
            <div class="tapsection" id="content13" style="padding-top:20px; border-top: 1px solid rgba(0, 0, 0, .15);">
              <div class="col-12">
                <section class="">
                  <div class="container-md ">
                    
                     <div class="accordion" id="accordionPanelsStayOpenExample">
                      <c:forEach var="myqnaList" items="${myqnaList}" varStatus="vs">
                      
                      <div class="accordion-item">
                        <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#panelsStayOpen-21${vs.index}" aria-expanded="false"
                            aria-controls="panelsStayOpen-21${vs.index}">
                            <div style="margin-right:10px;">
	                            <c:if test="${myqnaList.qa_type_ans eq false }">[진행중]</c:if>
	                            <c:if test="${myqnaList.qa_type_ans eq true }">[답변 완료]</c:if>
	                        </div>
	                        ${myqnaList.qa_title}
                          </button>
                        </h2>
                        <div id="panelsStayOpen-21${vs.index}" class="accordion-collapse collapse"
                          aria-labelledby="panelsStayOpen-headingOne">
                          <div class="accordion-body">
                            <h5>Q. </h5><h6>등록일 : ${myqnaList.qa_date_q}</h6></br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${myqnaList.qa_content_q}
                          </div>
                          <div class="accordion-body">
                            <c:if test="${myqnaList.qa_type_ans eq true }">
	                            <h5>A. </h5>
	                           	<h6>답변일 : ${myqnaList.qa_date_a}</h6></br>
	                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${myqnaList.qa_content_a}
	                        </c:if>
                          </div>
                          
                        </div>
                      </div>
                      
                      </c:forEach>
                     </div>
                     
                    </div>
                   </section>
                  </div>
                 </div> 
               
                    
            <!-- 내 문의 끝 -->

			<!-- 진행중 -->
            <div class="tapsection" id="content14" style="padding-top:20px; border-top: 1px solid rgba(0, 0, 0, .15);">
              <div class="col-12">
                <section class="">
                  <div class="container-md ">
                    
                     <div class="accordion" id="accordionPanelsStayOpenExample">
                      <c:forEach var="myqnaList" items="${myqnaList}" varStatus="vs">
                      <c:if test="${myqnaList.qa_type_ans eq false }">
	                      <div class="accordion-item">
	                        <h2 class="accordion-header" id="panelsStayOpen-headingOne">
	                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
	                            data-bs-target="#panelsStayOpen-21${vs.index}" aria-expanded="false"
	                            aria-controls="panelsStayOpen-21${vs.index}">
	                            
	                            <div style="margin-right:10px;">
		                            [진행중]
		                        </div>
		                        ${myqnaList.qa_title}
	                          </button>
	                        </h2>
	                        <div id="panelsStayOpen-21${vs.index}" class="accordion-collapse collapse"
	                          aria-labelledby="panelsStayOpen-headingOne">
	                          <div class="accordion-body">
	                            <h5>Q. </h5><h6>등록일 : ${myqnaList.qa_date_q}</h6></br>
	                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${myqnaList.qa_content_q}
	                          </div>
	                          
	                        </div>
	                      </div>
                      </c:if>
                      </c:forEach>
                      </div>
                    </div>
                </section>
              </div>
            </div>
            <!-- 진행중 끝 -->
            
            
            <!-- 답변 완료 -->
            <div class="tapsection" id="content15" style="padding-top:20px; border-top: 1px solid rgba(0, 0, 0, .15);">
              <div class="col-12">
                <section class="">
                  <div class="container-md ">
                    
                     <div class="accordion" id="accordionPanelsStayOpenExample">
                      <c:forEach var="myqnaList" items="${myqnaList}" varStatus="vs">
                      <c:if test="${myqnaList.qa_type_ans eq true }">
	                      <div class="accordion-item">
	                        <h2 class="accordion-header" id="panelsStayOpen-headingOne">
	                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
	                            data-bs-target="#panelsStayOpen-21${vs.index}" aria-expanded="false"
	                            aria-controls="panelsStayOpen-21${vs.index}">
	                            
	                            <div style="margin-right:10px;">
		                            [답변 완료]
		                        </div>
		                        ${myqnaList.qa_title}
	                          </button>
	                        </h2>
	                        <div id="panelsStayOpen-22${vs.index}" class="accordion-collapse collapse"
	                          aria-labelledby="panelsStayOpen-headingOne">
	                          <div class="accordion-body">
	                            <h5>Q. </h5><h6>등록일 : ${myqnaList.qa_date_q}</h6></br>
	                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${myqnaList.qa_content_q}
	                          </div>
	                          <div class="accordion-body">
		                        <h5>A. </h5>
		                       	<h6>답변일 : ${myqnaList.qa_date_a}</h6></br>
		                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${myqnaList.qa_content_a}

	                          </div>
	                          
	                        </div>
	                      </div>
                      </c:if>
                      </c:forEach>
                      </div>
                    </div>
                </section>
              </div>
            </div>
            <!-- 답변 완료 끝 -->


			<!-- 문의 하기 시작-->
            <div class="tapsection" id="content16" style="padding-top:20px; border-top: 1px solid rgba(0, 0, 0, .15);">
              <div class="col-12">
                <section class="">
                  <div class="container-md ">
                    <div class="accordion" id="accordionPanelsStayOpenExample">
					 <form class="form-horizontal style-form" name="qna_form"
						id="coupon_form" method="post" action="/addqna.user">
						<div class="form-group" style="padding:10px;">
							<h5 style="padding-bottom:5px;">카테고리</h5>
							<select id="qa_type" name="qa_type" class="dataTable-selector" style="font-size:15px; size:18px; padding:10px;">
								<option id="order" value="order">[주문]</option>
								<option id="payment" value="payment">[결제]</option>
								<option id="cancel" value="cancel">[취소]</option>
								<option id="refund" value="refund">[환불]</option>
								<option id="user" value="user">[회원]</option>
								<option id="point" value="point">[포인트]</option>
								<option id="coupon" value="coupon">[쿠폰]</option>	
							</select>
						</div>
						
						<div class="form-group" style="padding:10px;">
							<label class="col-sm-2 col-sm-2 control-label" style="padding-bottom:5px;">제목</label>
							<div class="col-sm-8">
								<input class="form-control" type="text" name="qa_title"
									placeholder="제목">
							</div>
						</div>
						<div class="form-group" style="padding:10px;">
							<label class="col-sm-2 col-sm-2 control-label" style="padding-bottom:5px;">내용</label>
							<div class="col-sm-8">
								<textarea id="qa_content_q" name="qa_content_q" style="resize: none; padding:10px; border-radius: 5px;  border:1px solid #cdd4da; width:100%;" rows="10"
									placeholder="문의 내용"></textarea>
							</div>
						</div>
						<div class="col-sm-8">
							<button type="submit" class="w-btn w-btn-gra1"
								style="float: right;">문의 등록</button>
						</div>
						<input type="hidden" name="u_id" value="${userSession.u_id}" />
					 </form>
					</div>
				  </div>
				</section>
			  </div>
			</div>
			<!-- 문의 하기 끝 -->

		</div>
        </div>
        <!-- 1:1 문의 끝 -->

		
      </div>





    </div>


  </section>
  <!-- footer import -->
  <%@ include file="/WEB-INF/views/user/inc/footer.jsp" %>

</body>

</html>