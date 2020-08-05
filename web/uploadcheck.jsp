<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.Enumeration" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css.css" type="text/css">

</head>
<%
String uploadPath=request.getRealPath("upload");
	
int size = 10*1024*1024;
String name="";
String code="";
String itemcount = "";
String filecount = "";
String thumnail = "";
String filename1="";
String filename2="";
String thum = "";
	
try{
    MultipartRequest multi=new MultipartRequest(request,uploadPath,size,"euc-kr",new DefaultFileRenamePolicy());
		
    name=multi.getParameter("name");
    code=multi.getParameter("code");
    itemcount=multi.getParameter("itemcount");
    filecount=multi.getParameter("filecount");
	thumnail=multi.getParameter("thumnail");	
    Enumeration files = multi.getFileNames();


    String file = (String)files.nextElement();
    thum = multi.getFilesystemName(file); //썸네일
    out.print(thum);

    String file1 = (String)files.nextElement();
    
    filename1 = multi.getFilesystemName(file1);




}catch(Exception e){
    e.printStackTrace();
}
%>
<body>
<form name="filecheck" action="fileCheck.jsp" method="post">
    <input type="text" name="name" value="<%=name %>">
    <input type="text" name="code" value="<%=code %>">
 <!--   <input type="hidden" name="filename1" value="<%=filename1 %>">
    <input type="hidden" name="filename2" value="<%=filename2 %>">-->
</form>
<a href="#" onclick="javascript:filecheck.submit()">업로드 확인 및 다운로드 페이지이동 </a>
</body>