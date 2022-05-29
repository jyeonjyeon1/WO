<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="java.util.Date"%>
<jsp:useBean id="javaDate" class="java.util.Date" />
<fmt:formatDate var="nowDatee" value="${javaDate}" pattern="yyyy-MM-dd" />
<c:set var="sevenDayAfter"
	value="<%=new Date(new Date().getTime() + 60*60*24*1000*7)%>" />
<fmt:formatDate value="${sevenDayAfter}" pattern="yyyy-MM-dd"
	var="sevenDayAfterStr" />


<div class="form-group" id="deleteBannerr${inputIndex}">
	<div class="col-md-4" style="min-height: 160px;">
		<div class="fileupload fileupload-new" data-provides="fileupload">
			<div class="fileupload-new thumbnail"
				style="width: 100%; height: 180px;">
				<img src="" alt="" />
			</div>
			<div class="fileupload-preview fileupload-exists thumbnail"
				style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
			<div>
				<span class="btn grey__button btn-file"> <span
					class="fileupload-new"><i class="fa fa-paperclip"></i> 이미지
						선택</span> <span class="fileupload-exists"><i class="fa fa-undo"></i>
						변경</span> <input type="file" class="default" id="input-imagee${inputIndex}"/>
				</span> <a href="#" class="btn btn-theme04 fileupload-exists"
					style="border-radius: 3px; font-size: 12px; height: 30px;"
					data-dismiss="fileupload"> <i class="fa fa-trash-o"> </i> 제거
				</a>
			</div>
		</div>
	</div>
	<label class="control-label col-md-2">제목${inputIndex}</label>
	<div class="col-sm-6">
		<input class="form-control" type="text" placeholder="제목을 입력하세요" id="b_titlee${inputIndex}"
			style="height: 30px; margin: 5px 0;">
	</div>
	<label class="control-label col-md-2">내용</label>
	<div class="col-sm-6">
		<textarea class="form-control" type="text" placeholder="내용 문구를 입력하세요" id="b_memoo${inputIndex}"
			style="margin: 5px 0;"></textarea>
	</div>
	<label class="control-label col-md-2">연결URL</label>
	<div class="col-sm-6">
		<input class="form-control" type="text" placeholder="URL을 입력하세요" id="b_click_urll${inputIndex}"
			style="height: 30px; margin: 5px 0 10px 0;">
	</div>

	<label class="col-sm-2 col-sm-2 control-label">시간조정</label>
	<div class="col-sm-6">

		<input type="checkbox" checked id="b_settimee${inputIndex}"
			style="display: inline-block; margin-right: 10px;"> <input
			class="form-control round-form" type="date" value="${nowDatee }" id="b_startdatee${inputIndex}"
			style="width: 30%; display: inline-block; margin-right: 10px;">
		~ <input class="form-control round-form" type="date" id="b_enddatee${inputIndex}"
			value="${sevenDayAfterStr}"
			style="width: 30%; display: inline-block; margin-left: 10px;">
		<button type="button" class="btn btn-success"
			onclick="insertBanner${inputIndex}()"
			style="padding: 5px 5px; width: 55px; float: right; margin-left: 10px;">등록</button>
		<button type="button" class="btn btn-danger"
			onclick="deleteBannerr${inputIndex}()"
			style="padding: 5px 5px; width: 55px; float: right; margin-left: 10px;">
			삭제</button>
	</div>

</div>
<script>
function insertBanner${inputIndex}(){
	nansu = Math.floor(Math.random() * 1000); //0~999 
	Swal.fire({
		title: "등록하시겠습니까??",
		icon: "warning",
		showCancelButton: true,
		confirmButtonColor: "#3085d6",
		cancelButtonColor: "#d33",
		confirmButtonText: "등록",
		cancelButtonText: "아니오"
	}).then((result) => {
		if (result.isConfirmed) {
			uploadImagee${inputIndex}();
		}//if (result.isConfirmed)
	})//then((result)
}



//이미지 업로드 실제 S3로 
uploadImagee${inputIndex} = () => {
    AWS.config.update({
        region: 'ap-northeast-2',
        credentials: new AWS.CognitoIdentityCredentials({
            IdentityPoolId: '<spring:eval expression='@config.getProperty("S3_POOL_ID")'/>',
        })
    })
	var b_title = $("#b_titlee${inputIndex}").val();
	var b_click_url = $("#b_click_urll${inputIndex}").val();
	var b_memo = $("#b_memoo${inputIndex}").val();
	var b_startdate = $("#b_startdatee${inputIndex}").val();
	var b_enddate = $("#b_enddatee${inputIndex}").val();
	var b_settime = $("#b_settimee${inputIndex}").is(":checked");
	var b_image = "no";
    
    let files = document.getElementById("input-imagee${inputIndex}").files;
    let file = files[0];
    
    if(file != null){
	    let fileName = file.name;
	    fileName = nansu +"___"+ fileName;
	    let upload = new AWS.S3.ManagedUpload({
	        params: {
	            Bucket: 'walkingorder/banner',
	            Key: fileName,
	            ContentType : "image/jpeg",
	            Body: file
	        }
	    })
	    const promise = upload.promise();
	    b_image = "https://walkingorder.s3.ap-northeast-2.amazonaws.com/banner/"+fileName;
	    if(b_image.indexOf("+") != -1){b_image = b_image.replace(/\+/g,"%2B");}
    }else{
    	Swal.fire({
            icon: "warning",
            title: "이미지 등록하세요",
            showConfirmButton: false,
            timer: 1500
        });
    	return;
    }
  //ajax
	var param = {
		"b_title" : b_title,
		"b_image": b_image,
		"b_click_url": b_click_url,
		"b_memo" : b_memo,
		"b_startdate" : b_startdate,
		"b_enddate" : b_enddate,
		"b_settime" : b_settime   //boolean
	}
	$.ajax({
	    type: "POST",
	    url: "/insertBanner.admin",
	    data: JSON.stringify(param), 
	    dataType: "json",
	    contentType: "application/json",
	    success: function (data) {
	        if (data == 1) {
    	        Swal.fire({
    	            icon: "success",
    	            title: "배너 등록 완료",
    	            showConfirmButton: false,
    	            timer: 1500
    	        });
	        }else if(data == 0){
	        	Swal.fire({
    	            icon: "warning",
    	            title: "배너 등록 실패",
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


function deleteBannerr${inputIndex}(){
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
	      $("#deleteBannerr${inputIndex}").remove();
		}//if (result.isConfirmed)
	})//then((result)
}
</script>