<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css.css" type="text/css">
<% if(session.getAttribute("id") == null) {
    response.sendRedirect("http://alpacao.cafe24.com/shop/login.jsp");
}
    
%>
</head>
<body style="min-width: 1000px; max-width: 100%; text-align: center;">
<center>  <img style="width: 100%; text-align: center;" src="img/main.jpg" alt=""> </center>
<div style="width: 100%; height: 40px; background-color: #e9e9e9;">
         <div style="width: 70%; float:right;margin: 0px 0px 0px 0px;">
                    <% if(session.getAttribute("id") == null) { %>
                    <a href="login.jsp"> 로그인 </a>
                    | <a href="#"> 회원가입 </a>
                    <%}
                    else {
                    %>
                    <a href="logout.jsp"> 로그아웃 </a>
                    <%
                        }
                    %>  
                    |
                    <a href="#"> 장바구니 </a> | <a href="#"> 주문/배송 </a> | 
                    <a href="#"> 고객센터 </a> 
                </div>
    </div>





    <!--상세페이지 시작-->
    <div style="width: 60%; height: 600px; background-color: #ffffff; margin: 30px 20% 0px 20%; border-top: 5px solid skyblue; border-bottom: 1px solid #cecec9;">
        상품 상세 페이지
        




    </div>




</body>
</html>



    
    