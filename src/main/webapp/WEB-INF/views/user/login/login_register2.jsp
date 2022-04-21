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
<!--     <script src="resources/assets/js/jquery-3.6.0.js"></script> -->
</head>
<body>
    <!-- header import -->
    <%@ include file="/WEB-INF/views/user/inc/header.jsp" %>

    <div class="container" style="margin: 30PX auto 50px; max-width: 600px;">
        <h3 class="text-center mt-60 mb-60" style="color:#6f6f6f">회원가입</h3>
        
        
        
        <form action="register.do" method="post" name="regForm">
            <div class="row">
                <div class="col-4"><label class="regis_label">아이디</label></div>
                <div class="col-6"><input type="text" name="u_id" placeholder="아이디" class="form-control"></div>
<!--                 <button type="button" class="col-3 check_btn">중복확인</button> -->
            </div>
            <br>
            <div class="row">
                <div class="col-4"><label class="regis_label">비밀번호</label></div>
                <div class="col-6"><input type="password" name="u_password" placeholder="비밀번호" class="form-control"></div>

            </div>
            <div class="row">
                <div class="col-4 mt-15"><label class="regis_label">비밀번호 확인</label></div>
                <div class="col-6 mt-10"><input type="password" placeholder="비밀번호 확인" class="form-control"></div>

            </div>
            <br>
            <div class="row">
                <div class="col-4"><label class="regis_label">전화번호</label></div>
                <div class="col-2">
                    <select class="form-control" name="u_tel">
                        <option value="all">010</option>
                        <option value="id">011</option>
                        <option value="name">012</option>
                        <option value="nick">016</option>
                    </select>
                </div>
                <div class="col-2"><input type="text" name="u_name" class="form-control"></div>
                <div class="col-2"> <input type="text" name="u_email" class="form-control"></div>



            </div>
            <br>
            <div class="row">
                <div class="col-4"><label class="regis_label">생년월일</label></div>
                <div class="col-4" >
                    <input class="form-control round-form" type="date" value="1999-06-30">
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-4 mt-10"><label class="regis_label">SMS 수신 동의</label></div>
                <div class="col-6" style="margin-top: 15px; ">
                    <label class="radio-inline">
                        <input type="radio" name="u_sms_usable" id="inlineRadio1" value="true" checked> 동의
                    </label>
                    <label class="radio-inline" style="padding-left:20px">
                        <input type="radio" name="u_sms_usable" id="inlineRadio2" value="false"> 비동의
                    </label>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-4"><label class="regis_label">Email 동의</label></div>
                <div class="col-6" style="margin-top: 5px; ">
                    <label class="radio-inline">
                        <input type="radio" name="u_email_usable" id="inlineRadio1" value="true" checked> 동의
                    </label>
                    <label class="radio-inline" style="padding-left:20px">
                        <input type="radio" name="u_email_usable" id="inlineRadio2" value="false"> 비동의
                    </label>
                </div>
            </div>
            <br>
            <div class="row">
                <button type="submit" class="btn btn-outline-warning" style="margin:auto; width: 60%;"> 회원가입
                    &nbsp;</button>
            </div>




        </form>
    </div>





    <!-- footer import -->
    <%@ include file="/WEB-INF/views/user/inc/footer.jsp" %>

</body>

</html>