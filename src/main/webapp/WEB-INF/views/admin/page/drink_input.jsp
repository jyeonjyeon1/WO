<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<div class="form-group" id="deleteTodayDrinkk${vs.index }">

									<div class="col-md-4" style="min-height: 160px;">
										<div class="fileupload fileupload-new"
											data-provides="fileupload">
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
													class="fileupload-new"><i class="fa fa-paperclip"></i>
														이미지 선택</span> <span class="fileupload-exists"><i
														class="fa fa-undo"></i> 변경</span> <input type="file"
													class="default" id="input-imagee${inputIndex}"/>
												</span> <a href="#" class="btn btn-theme04 fileupload-exists"
													style="border-radius: 3px; font-size: 12px; height: 30px;"
													data-dismiss="fileupload"> <i class="fa fa-trash-o">

												</i> 제거
												</a>
											</div>
										</div>
									</div>
									<label class="control-label col-md-2">음료명</label>
									<div class="col-sm-6">
										<input class="form-control" type="text" id="td_namee${inputIndex}"
											placeholder="음료명을 입력하세요" value="" style="height: 30px; margin: 5px 0;">
									</div>
									<label class="control-label col-md-2">내용<br>(음료 설명)</label>
									<div class="col-sm-6">
										<textarea class="form-control" type="text" id="td_contentt${inputIndex}"
											placeholder="내용 문구를 입력하세요" style="margin: 5px 0;"></textarea>
									</div>
									<label class="control-label col-md-2">연결URL</label>
									<div class="col-sm-6">
										<input class="form-control" type="text"
										id="td_urll${inputIndex}"
											placeholder="URL을 입력하세요" style="height: 30px; margin: 5px 0 10px 0;">
									</div>

									<label class="col-sm-2 col-sm-2 control-label"> </label>
									<div class="col-sm-6">
										<%-- <input type="checkbox" id="b_settime${inputIndex}"
											style="display: inline-block; margin-right: 10px;"> 
										<input
											class="form-control round-form" type="date" id="b_startdate${inputIndex}"
											value=""
											style="width: 30%; display: inline-block; margin-right: 10px;">
										~ <input class="form-control round-form" type="date" id="b_enddate${inputIndex}"
											value=""
											style="width: 30%; display: inline-block; margin-left: 10px;"> --%>
									<button type="button" class="btn btn-success" onclick="insertTodayDrinkk${inputIndex}()"
									style="padding:5px 5px;width: 55px; float: right; margin-left: 10px;">등록</button>
									<button type="button" class="btn btn-danger" onclick="deleteTodayDrinkk${inputIndex}()"
									style="padding:5px 5px;width: 55px; float: right; margin-left: 10px;">
									삭제</button>
									</div>
								</div>
<script type="text/javascript">
function deleteTodayDrinkk${inputIndex}(){
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
        $("#deleteTodayDrinkk${inputIndex}").remove();
	  }//if (result.isConfirmed)
	})//then((result)
}

function insertTodayDrinkk${inputIndex}(){
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
    var td_seq = $("#td_seqq${inputIndex}").val();
	var td_name = $("#td_namee${inputIndex}").val();
	var td_url = $("#td_urll${inputIndex}").val();
	var td_content = $("#td_contentt${inputIndex}").val();
	var td_image = "no";
    
    let files = document.getElementById("input-imagee${inputIndex}").files;
    let file = files[0];
    if(file != null){
	    let fileName = file.name;
	    fileName = nansu +"___"+ fileName;
	    let upload = new AWS.S3.ManagedUpload({
	        params: {
	            Bucket: 'walkingorder/todaydrink',
	            Key: fileName,
	            ContentType : "image/jpeg",
	            Body: file
	        }
	    })
	    const promise = upload.promise();
	    td_image = "https://walkingorder.s3.ap-northeast-2.amazonaws.com/todaydrink/"+fileName;
	    if(td_image.indexOf("+") != -1){td_image = td_image.replace(/\+/g,"%2B");}
    }
  //ajax
	var param = {
		"td_seq" : parseInt(td_seq),    //int
		"td_name" : td_name,
		"td_image": td_image,
		"td_content" : td_content,
		"td_url" : td_url
	}
	$.ajax({
	    type: "POST",
	    url: "/insertTodayDrink.admin",
	    data: JSON.stringify(param), 
	    dataType: "json",
	    contentType: "application/json",
	    success: function (data) {
	        if (data == 1) {
    	        Swal.fire({
    	            icon: "success",
    	            title: "오늘의 음료 등록 완료",
    	            showConfirmButton: false,
    	            timer: 1500
    	        });
	        }else if(data == 0){
	        	Swal.fire({
    	            icon: "warning",
    	            title: "오늘의 음료 등록 실패",
    	            showConfirmButton: false,
    	            timer: 1500
    	        });
	        }
	    },
	    error: function (data) {
	        console.log("오늘의 음료 등록 통신에러");
	    }
	});//ajax end 
    
}
</script>