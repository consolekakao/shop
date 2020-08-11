<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.io.File" %>


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
    MultipartRequest multi=new MultipartRequest(request,uploadPath,size,"UTF-8",new DefaultFileRenamePolicy());
		
   



    name=multi.getParameter("name");
    code=multi.getParameter("code");
    itemcount=multi.getParameter("itemcount");
    filecount=multi.getParameter("filecount");
	thumnail=multi.getParameter("thumnail");	
    Enumeration files = multi.getFileNames();
    

    String file = (String)files.nextElement();
    thum = multi.getFilesystemName(file); //썸네일
    



  String[] f = new String[10];
    String now = new SimpleDateFormat("yyyyMMddHmsS").format(new Date());  //현재시간
    for(int i =0;i<Integer.parseInt(filecount);i++)
    {
        file = (String)files.nextElement();
        f[i] = multi.getFilesystemName(file);
        int j = -1;
        j = f[i].lastIndexOf("."); // 파일 확장자 위치
        String realFileName = now + f[i].substring(j, f[i].length());  //현재시간과 확장자 합치기
        out.print(i+"<br>");
        out.print("<br>" + realFileName
        File oldFile = new File(uploadPath +"/"+ f[i]);
        out.print("기존파일명: " + oldFile);
        File newFile = new File(uploadPath +"/"+  realFileName);
        out.print("<br>");
        out.print("새로운파일명: " + newFile);
        out.print(realFileName);
        oldFile.renameTo(newFile); // 파일명 변경
        out.print("<br>"+realFileName);
    }
    


        int i = -1;
        i = thum.lastIndexOf("."); // 파일 확장자 위치
        String realFileName = now + thum.substring(i, thum.length());  //현재시간과 확장자 합치기
   
    File oldFile = new File(uploadPath +"/"+ thum);
    File newFile = new File(uploadPath +"/"+  realFileName);
    oldFile.renameTo(newFile); // 파일명 변경
  





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