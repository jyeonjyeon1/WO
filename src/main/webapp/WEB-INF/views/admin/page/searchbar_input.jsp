<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tr id="oneRoww${inputIndex}">
  	<td> 
    </td>
    <td>${inputIndex}</td>
    <td id="sb_keyword">
    	<input type="text" id="search____textt${inputIndex}" class="form-control" placeholder="검색어" value=""></td>
    <td id="sb_url">
    	<input type="text" id="search____urll${inputIndex}" class="form-control" placeholder="/storeList.user?search=" value=""></td>
    <td>
      <button type="button" id="change_btn" onclick="insertKeyword${inputIndex}()" class="btn btn-success btn-xs">
      	<i id="change_icon" class="fa fa-check"></i>
      </button>
      <button type="button" onclick="delete${inputIndex}()" class="btn btn-danger btn-xs">
      	<i class="fa fa-trash-o "></i>
      </button>
    </td>
</tr>
<script>
function insertKeyword${inputIndex}(){
  	  var sb_keyword = $("#search____textt${inputIndex}").val();
 	      var sb_url = $("#search____urll${inputIndex}").val();
 	  var param = {
 		"sb_keyword" : sb_keyword,
 		"sb_url" : sb_url
 	  };
 	  if(sb_keyword != "" && sb_url != ""){    
        Swal.fire({
   		    title: "등록하시겠습니까?",
   		    html: "<br>",
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
	  	 	    	    url: "/insertKeyword.admin",
	  	 	    	    data: JSON.stringify(param), 
	  	 	    	    dataType: "json",
	  	 	    	    contentType: "application/json",
	  	 	    	    success: function (data) {
	  	 	    	        if (data == 1) {
	  	 	    	        	Swal.fire(
  	 	    	    		        "등록완료",
  	 	    	    		        "등록되었습니다.",
  	 	    	    		        "success"
  	 	    	    		      );
	  	 		    	        location.href = location.href;
	  	 	    	        }else{
	  	 	    	        	Swal.fire(
  	 	    	    		        "등록 실패",
  	 	    	    		        "너무 길어요~",
  	 	    	    		        "error"
  	 	    	    		      );
	  	 	    	        	}
	  	 	    	    },
	  	 	    	    error: function (data) {
	  	 	    	        console.log("메뉴추가 통신에러");
	  	 	    	    }
	  	 		});//ajax end
   		      
   		    }
   		 })//swal 끝
 	  }else{
 		 Swal.fire({
            icon: "warning",
            title: "입력값이 비어있습니다.",
            showConfirmButton: false,
            timer: 1500
        });
 	  }
  		  
	  
}

function delete${inputIndex}(){
   $("#oneRoww${inputIndex}").remove();
}
</script>
  <script src="https://cdn.jsdelivr.net/npm/simple-datatables@3.2.0/dist/umd/simple-datatables.js"></script>
  <script src="resources/assets/js/admin/datatable/datatables-simple-demo.js"></script>