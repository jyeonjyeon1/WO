<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!--  -->
<div id="searchDiv${indexNum}">
<c:forEach var="addrSearchList" items="${addrSearchList}" varStatus="vs">
<div class="card mb-3" style="max-width: 700px; max-height: auto;">
	<div class="row g-0" style="height: auto;">
		<div class="col-md-4" style="height: 130px; width: 140px;">
			<img src=${fn:toLowerCase(addrSearchList.si_image) }
				class="img-fluid rounded-start" style="height: 130px; width: 140px;">
		</div>
		<div class="col-md-8">
			<div class="card-body" style="padding: 22px 16px 16px 16px;">
				<h5 class="card-title">
					<a href="/menuList.user?store=${addrSearchList.si_code}">${addrSearchList.si_name}
						${addrSearchList.si_loc}</a>
				</h5>
				<h6 class="card-title">${addrSearchList.si_addr_road}<c:if
						test="${addrSearchList.si_addr_detail eq '' || addrSearchList.si_addr_detail eq null }"></c:if>
					${addrSearchList.si_addr_detail}
				</h6>
				<div class="row">
					<div class="col-lg-8 col-md-8 col-sm-12">
						<p class="card-text">
						<ul class="reviewwww">
							<c:forEach var="full_star" begin="0"
								end="${addrSearchList.si_star}" step="10">
								<c:if test="${ full_star gt 5 }">
									<li><i class="lni lni-star-filled"></i></li>
								</c:if>
							</c:forEach>
							<c:forEach var="half_star" begin="10"
								end="${addrSearchList.si_star}" step="10">
								<c:if test="${ (addrSearchList.si_star-half_star) eq 5 }">
									<li><i class="fa fa-star-half">&nbsp&nbsp</i></li>
								</c:if>
							</c:forEach>

							<c:forEach var="no_star" begin="${addrSearchList.si_star}"
								end="40" step="10">
								<c:if test="${no_star lt 45 }">
									<li><i class="lni lni-star"></i></li>
								</c:if>
							</c:forEach>
							<li><span>${addrSearchList.si_star /10 } 점 / 리뷰</span>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;대기시간 : &nbsp;<span><c:choose>
										<c:when test="${addrSearchList.si_due_time eq 0}">즉시 수령 가능</c:when>
										<c:otherwise>${addrSearchList.si_due_time } 분</c:otherwise>
									</c:choose></span></li>
						</ul>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 한개 -->
</c:forEach>
</div>