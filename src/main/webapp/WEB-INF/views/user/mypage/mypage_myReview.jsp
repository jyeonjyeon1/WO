<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<!-- ========================= JS here ========================= -->
<script src="resources/assets/js/jquery-3.6.0.js"></script>

<!--스크립트 by jyeon-->
<!--파일업로드 script-->
<script>
   
		function setDetailImage(event){
			for(var image of event.target.files){
				var reader = new FileReader();
				
				reader.onload = function(event){
					var img = document.createElement("img");
					img.setAttribute("src", event.target.result);
					img.setAttribute("class", "col-lg-2");
					document.querySelector("div#images_container").appendChild(img);
				};
				
				console.log(image);
				reader.readAsDataURL(image);
			}
		}
     </script>

</head>

<body>
	<!-- header import -->
	<%@ include file="/WEB-INF/views/user/inc/header.jsp"%>

	<div class="container" style="max-width: 1000px;">

		<div class="row" style="margin: 40px 0px 20px; text-align: center;">
			<h3>리뷰를 작성해 주세요 :)</h3>
		</div>

		<div class="row">
			<div class="writingReview_image"
				style="text-align: center; margin-top: 15px;">
				<img src="resources/assets/images/categories/cat-1.jpg"
					class="img-fluid rounded-start"
					style="width: 300px; height: 300px;" alt="...">
			</div>
		</div>
		<div class="row">
			<div class="review_title">
				<h1>컴포즈커피 종로3가점</h1>
			</div>
			<div class="review_star">
				<form name="myform" id="myform" method="post" action="./save">
					<form name="myform" id="myform" method="post" action="./save">
						<fieldset>
							<input type="radio" name="rating" value="5" id="rate1" checked><label
								for="rate1">⭐</label> <input type="radio" name="rating"
								value="4" id="rate2"><label for="rate2">⭐</label> <input
								type="radio" name="rating" value="3" id="rate3"><label
								for="rate3">⭐</label> <input type="radio" name="rating"
								value="2" id="rate4"><label for="rate4">⭐</label> <input
								type="radio" name="rating" value="1" id="rate5"><label
								for="rate5">⭐</label>
						</fieldset>
					</form>
				</form>

			</div>
		</div>
		<div class="row">
			<div class="review_context">
				<textarea name="Writing_review" placeholder="  리뷰를 입력해주세요 :)"></textarea>
			</div>
		</div>
		<div class="col-lg-12">


			<div class="row">
				<input class="form-control" type="file" multiple="multiple"
					name="product_detail_image" id="product_detail_image"
					onchange="setDetailImage(event);"
					style="width: 97%; margin-left: 25px;">
			</div>
			<div id="images_container"></div>

		</div>

		<div class="col-lg-12" style="text-align: right;">
			<button class="review_submitBtn" data-bs-toggle="modal"
				data-bs-target="#review">작성완료</button>

			<!-- Modal -->
			<div class="modal fade" id="review" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<h4></h4><div class="modal-body" style="center">리뷰 작성이 완료되었습니다.</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">확인</button>
						</div>
					</div>
				</div>
			</div>
		</div>




	</div>
	<!-- footer import -->
	<%@ include file="/WEB-INF/views/user/inc/footer.jsp"%>
</body>
</html>
