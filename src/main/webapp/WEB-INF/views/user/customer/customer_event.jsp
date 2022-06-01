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
<link rel="stylesheet" type="text/css" href="//t1.daumcdn.net/kakaomapweb/place/jscss/pc.b5a88cb5.css">

  <!-- ========================= CSS here ========================= -->

  <!-- ========================= JS here ========================= -->

  <script src="resources/assets/js/main_1.js"></script>
  <script type="text/javascript">
  </script>

</head>

<body>
  <!-- header import -->
  <%@ include file="/WEB-INF/views/user/inc/header.jsp" %>

<section >
        <div class="container col-12">
            <div class="cont_findway">
              <div style="padding: .43em 0em .35em .7em; margin: 2em 0; font-weight: bold; color: #232323; background: #fff8e8; border-left: solid 10px #ffc06e;">
                <h3 style="margin-bottom: 15px; float:left;"> ${eventCHK.n_title } </h3><br>
                <div class="product__details__rating" style="margin-top: 15px; margin-bottom: 15px; margin-left: 20px; "></div>
                  <br><div><span>${eventCHK.n_regdate}</span></div>
                </div>
                <div style="text-align: center;">
                <img src="${eventCHK.n_file_url}" style="max-width: 100%; height: auto;"></div>
                <div style="margin: 30px 50px 50px 50px">
                <strong style=" color:#232323; font-size: 20px;">${eventCHK.n_content}</strong></div>
            </div>
        </div>
    </section>

  </section>
  <!-- footer import -->
  <%@ include file="/WEB-INF/views/user/inc/footer.jsp" %>

</body>

</html>