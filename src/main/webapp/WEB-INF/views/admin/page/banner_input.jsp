<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="java.util.Date" %> 
<jsp:useBean id="javaDate" class="java.util.Date" />
<fmt:formatDate var="nowDatee" value="${javaDate}" pattern="yyyy-MM-dd"/>
<c:set var="sevenDayAfter" value="<%=new Date(new Date().getTime() + 60*60*24*1000*7)%>"/>
<fmt:formatDate value="${sevenDayAfter}" pattern="yyyy-MM-dd" var="sevenDayAfterStr"/>


<div class="form-group" id="deleteBanner">
	<div class="col-md-4" style="min-height: 160px;">
		<div class="fileupload fileupload-new" data-provides="fileupload">
			<div class="fileupload-new thumbnail"
				style="width: 100%; height: 180px;">
				<img
					src=""
					alt="" />
			</div>
			<div class="fileupload-preview fileupload-exists thumbnail"
				style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
			<div>
				<span class="btn grey__button btn-file"> <span
					class="fileupload-new"><i class="fa fa-paperclip"></i> 이미지
						선택</span> <span class="fileupload-exists"><i class="fa fa-undo"></i>
						변경</span> <input type="file" class="default" />
				</span> <a href="#" class="btn btn-theme04 fileupload-exists"
					style="border-radius: 3px; font-size: 12px; height: 30px;"
					data-dismiss="fileupload"> <i class="fa fa-trash-o"> </i> 제거
				</a>
			</div>
		</div>
	</div>
	<label class="control-label col-md-2">제목${inputIndex }</label>
	<div class="col-sm-6">
		<input class="form-control" type="text" placeholder="제목을 입력하세요"
			style="height: 30px; margin: 1px 0;">
	</div>
	<label class="control-label col-md-2">내용</label>
	<div class="col-sm-6">
		<textarea class="form-control" type="text" placeholder="내용 문구를 입력하세요"
			style="margin: 1px 0;"></textarea>
	</div>
	<label class="control-label col-md-2">연결URL</label>
	<div class="col-sm-6">
		<input class="form-control" type="text" placeholder="URL을 입력하세요"
			style="height: 30px; margin: 1px 0;">
	</div>

	<label class="col-sm-2 col-sm-2 control-label">시간조정</label>
	<div class="col-sm-6">

		<input type="checkbox" checked
			style="display: inline-block; margin-right: 10px;"> <input
			class="form-control round-form" type="date" value="${nowDatee }"
			style="width: 30%; display: inline-block; margin-right: 10px;">
		~ <input class="form-control round-form" type="date"
			value="${sevenDayAfterStr}"
			style="width: 30%; display: inline-block; margin-left: 10px;">
<button type="button" class="btn btn-danger" onclick="deleteBanner()"
									style="width: 70px; float: right; margin-left: 10px;">
									삭제</button>
	</div>

</div>