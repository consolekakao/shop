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
    String fname;
    String data;
    Enumeration files = multi.getFileNames();
    int i =0;


    while(files.hasMoreElements()){
    
    String[] f = new String[10];
    String now = new SimpleDateFormat("HHmmss").format(new Date());  //현재시간
    fname = (String)files.nextElement();
        int j = -1;
        f[i] = multi.getFilesystemName(fname);
        
        out.print(f[i]);
        out.print("<br>");
        j = f[i].lastIndexOf("."); // 파일 확장자 위치
        File oldFile = new File(uploadPath +"/"+ f[i]);
        String realFileName = now +"-"+code+"-" + f[i] ;  //현재시간과 확장자 합치기
        File newFile = new File(uploadPath +"/"+  realFileName);
        oldFile.renameTo(newFile); // 파일명 변경
        i++;

}


    String file = (String)files.nextElement();
    thum = multi.getFilesystemName(file); //썸네일
     out.print(thum);

  

}catch(Exception e){
    e.printStackTrace();
}
%>
<body>
<form name="filecheck" action="fileCheck.jsp" method="post">
    <input type="text" name="name" value="<%=name %>">
    <input type="text" name="code" value="<%=code %>">
 
</form>

</body>