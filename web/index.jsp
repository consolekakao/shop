<%--
  Created by IntelliJ IDEA.
  User: ALPACA
  Date: 2020-07-27
  Time: 오후 3:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css.css" type="text/css">
</head>
<body style="min-width: 1000px; max-width: 1920px; text-align: center;">
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


<center>
    <div style=" width: 100%; min-width: 1400px; height: 5000px; min-height: 900px; "> <!--메인열기-->
   
        <div style="float: left; width: 100%; min-width: 1000px; height: 100%; margin-left: 0px;"> <!--상품 1-->
<%
            String dbid = "alpacao";
            String dbpw = "alpaca16";
            String dbname = "alpacao";
            String tablename = "shopitem";
            Connection conn = null;
            ResultSet rs = null;
            PreparedStatement pstmt = null;
            
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alpacao?useUnicode=true&characterEncoding=utf-8", "alpacao", "alpaca16");
                String sql = "select itemseller, count(*) as cnt from shopitem group by itemseller order by cnt DESC";
                pstmt = conn.prepareStatement(sql);
                rs = pstmt.executeQuery();
                rs.next();
                while(rs.next()){

                    out.print(rs.getString("itemseller")+"   ");
                    out.print(rs.getString("cnt")+"\r\n");
                
                }
       
       
        
            
        %>


            
           


            <% for(int i=0; i<5; i++)
                    {
            %>


            <div style="width: 80%; height: 600px; background-color: #ffffff; margin-top: 30px; border-top: 5px solid skyblue; border-bottom: 1px solid #cecec9;">
                <!--좌측-->   
                <div style="float: left; width: 15%; height: 100%; ">
                   <div style="margin: 40px 0px 0px 30px; font:bold; font-size: 30px; color: skyblue; ">
                       남성패션
                   </div>
                </div>


                <!--프로모션-->
                <div style="float: left; width: 30%; height: 100%;">
                    <img style="width: 100%; height: 100%;" src="img/promotion1.png" alt="">
                </div>


                <!--우측-->
                <div style="float: left; width: 55%; height: 100%; overflow:hidden; ">
                    
                    <!--우 상단-->
                    <div style="margin-top: 1%; width: 100%; min-width: 100%; height: 48%;min-height: 48%; ">
                        
                        <%
                                for(int j=0; j<6; j++){
                        %>
                                <!--아이템 시작-->
                        <a href="#">
                        <div style="float: left; margin: 5px 0px 0px 10px; width: 31%; min-width: 30%; height: 100%; min-height: 100%; ">
                            <!--아이템 이미지-->
                            <div style="width: 160px; height: 160px; margin: 10px;">
                                <img style="width: 160px; height: 160px;" src="img/sample160.jpg" alt="">
                            </div>

                            <!--아이템 상품명-->
                            <div style="width: 90%; height: 40px; text-align: left; overflow: hidden; text-overflow: ellipsis;">
                                상품명
                            </div>

                            <!--아이템 가격-->
                            <div style="width: 90%; text-align: center; height: 40px;">
                               <strong> 5,000 </strong>원
                            </div>
                        </div>
                        </a>
                        <!--아이템  끝--------------------------------------------->

                        <%
                           }
                        %>
                    </div>
                </div>


            </div> <!--상품2 끝-->

            <%
                    }
            %>




        </div> <!--상품  끝-->


    
    
    </div> <!--메인닫기-->
</center>





</body>
</html>