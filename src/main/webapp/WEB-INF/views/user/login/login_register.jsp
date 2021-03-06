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
    <link href="resources/assets/images/logo/logo_only.svg" rel="icon"/>


    <!-- ========================= CSS here ========================= -->
    
    
    
    
    
    <link rel="stylesheet" href="resources/assets/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/assets/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/assets/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/assets/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/assets/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="resources/assets/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/assets/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/assets/css/style.css" type="text/css">

    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css    ">

    
    

    <!-- ========================= JS here ========================= -->
    <script src="resources/assets/js/jquery-3.6.0.js"></script>
    
    <script type="text/javascript">
        jQuery(document).ready(function () {
            $('#headers').load("header.html");
            $('#footers').load("footer.html");
        });
         //========= Hero Slider
    </script>

    <style>
        .p_mb {
            margin-bottom: 50px;
        }
    </style>
</head>

<body>
    <!-- header import -->
    <%@ include file="/WEB-INF/views/user/inc/header.jsp" %>




    <div class="m-5 p-5">
        <p class="fw-bold text-center fs-1 p_mb">회원가입</p>
        <br><br><br>

        <form class="col-md-offset-3">
            <div class="form-group row">
                <lable class="col-sm-3 col-form-label fw-bold fs-2">아이디</lable>
                <div class="col-sm-3">
                    <input type="text" class="form-control round-form form-control-lg" placeholder="아이디">
                </div>
                <button type="button" class="col-sm-1 btn btn-outline-warning mr-5">중복 확인</button>
                
            </div>
        
            <div class="form-group row">
                <lable class="col-sm-3 col-form-label fw-bold fs-2">비밀번호</lable>
                <div class="col-sm-4">
                    <input type="text" class="form-control round-form form-control-lg" placeholder="비밀번호">
                </div>
               
            </div>

            <div class="form-group row">
                <lable class="col-sm-3 col-form-label fw-bold fs-2">비밀번호 확인</lable>
                <div class="col-sm-4">
                    <input type="text" class="form-control round-form form-control-lg" placeholder="비밀번호 확인">
                </div>
               
            </div>


            <div class="form-group row">
                <lable class="col-sm-3 col-form-label fw-bold fs-2">전화번호</lable>
                <div class="col-sm-4">
                    <input type="text" class="form-control round-form form-control-lg" placeholder="전화번호">
                </div>
               
            </div>

            <div class="form-group row">
                <lable class="col-sm-3 col-form-label fw-bold fs-2">생일</lable>
                <div class="col-sm-4">
                    <input type="text" class="form-control round-form form-control-lg" placeholder="생일">
                </div>
            </div>
            <div class="form-check">
                <lable class="col-sm-3 col-form-label fw-bold fs-3">SMS 수신 여부</lable>
                <div class="col-sm-4">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                    <label class="form-check-label" style="padding-right: 50px;" for="flexRadioDefault2">미동의</label>
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                    <label class="form-check-label" for="flexRadioDefault1">동의</label>
                </div>
            </div>
            <br>
            <div class="form-check mb-5">
                <lable class="col-sm-3 col-form-label fw-bold fs-3">EMAIL 수신 여부</lable>
                <div class="col-sm-4">
                    <input class="form-check-input" type="radio" name="flexRadioDefault1" id="flexRadioDefault2" checked>
                    <label class="form-check-label" style="padding-right: 50px;" for="flexRadioDefault2">미동의</label>
                    <input class="form-check-input" type="radio" name="flexRadioDefault1" id="flexRadioDefault1">
                    <label class="form-check-label" for="flexRadioDefault1">동의</label>
                </div>
            </div>
            <div class="col-md-offset-1">
                <button type="submit" class="col-sm-2 btn btn-outline-warning btn-lg mr-5">회원가입</button>
                <button type="reset" class="col-sm-2 btn btn-outline-warning btn-lg">취소</button>
            </div>
        </form>

    </div>



    <!-- footer import -->
    <%@ include file="/WEB-INF/views/user/inc/footer.jsp" %>

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</body>

</html>