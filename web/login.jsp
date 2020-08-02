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




<% if(session.getAttribute("id") != null) {
    response.sendRedirect("http://alpacao.cafe24.com/shop/index.jsp");
}
    else{
%>











    <center>

        
        <img style="margin-top: 200px;" src="img/alpang.gif" alt="">
        
    <form action="logincheck.jsp" method="POST">
        <div class="form-group">
          <input style="width: 200px;" type="text" class="form-control"  name="id" placeholder="이메일을 입력하세요">
        </div>
        <div class="form-group">
          <input style="width: 200px;" type="password" class="form-control" name="pw" id="exampleInputPassword1" placeholder="암호">
        </div>
        
        <div class="checkbox">
          <label>
            <input type="checkbox"> 아이디 기억
          </label>
        </div>
        <button type="submit" class="btn btn-default">&nbsp;&nbsp;&nbsp;로그인&nbsp;&nbsp;&nbsp;</button> 
         <button type="button" class="btn btn-default">회원가입</button>
      </form>

       
    </center>
</body>
</html>

<%
    }
%>