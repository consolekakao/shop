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
    String name1;
    String data;
    Enumeration files = multi.getFileNames();
int i =1;
while(files.hasMoreElements()){
    
    

name1 = (String)files.nextElement();
data = multi.getOriginalFileName(name1);
out.print("     "+i + " : " +data + "<br> ");

i++;

}


    String file = (String)files.nextElement();
    thum = multi.getFilesystemName(file); //썸네일
     

    /*

    String[] f = new String[10];
    String now = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());  //현재시간
    for(int i =0;i<(Integer.parseInt(filecount));i++)
    {
        out.print(Integer.parseInt(filecount) + "    " + i);
        out.print("<br>");
        out.print("for 들어옴");
        file = (String)files.nextElement();
        f[i] = multi.getFilesystemName(file);
        int j = -1;
        j = f[i].lastIndexOf("."); // 파일 확장자 위치
        File oldFile = new File(uploadPath +"/"+ f[i]);
        String realFileName = now + f[i] ;  //현재시간과 확장자 합치기
        File newFile = new File(uploadPath +"/"+  realFileName);
        out.print("<br>");
        oldFile.renameTo(newFile); // 파일명 변경
        out.print("  i = " + i + "   cnt = " + Integer.parseInt(filecount) + "<br>");
        out.print(oldFile + "     " + realFileName);
        
    }
    

        int i = -1;
        i = thum.lastIndexOf("."); // 파일 확장자 위치
        String realFileName = now + thum.substring(i, thum.length());  //현재시간과 확장자 합치기
  
    File oldFile = new File(uploadPath +"/"+ thum);
    File newFile = new File(uploadPath +"/"+  realFileName);
    oldFile.renameTo(newFile); // 파일명 변경
  
*/

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

</body>