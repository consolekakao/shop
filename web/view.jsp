<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
</head>
<body>




<% if(session.getAttribute("id") == null) {
    response.sendRedirect("http://alpacao.cafe24.com/shop/index.jsp");
}
    
%>
abcd
</body>
</html>
