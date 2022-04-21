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
    <!-- Css Styles 추가 -->

     <!-- ========================= JS here ========================= -->
     <script src="resources/assets/js/jquery-3.6.0.js"></script> 
     <script type="text/javascript">
          jQuery(document).ready(function () {
             $('#headers').load("header.html");
             $('#footers').load("footer.html");  
         });
         //========= Hero Slider 
     </script>
    
</head>

<body>
<!-- header import -->
<%@ include file="/WEB-INF/views/user/inc/header.jsp" %>


<!-- footer import -->
<%@ include file="/WEB-INF/views/user/inc/footer.jsp" %>

</body>
</html>
