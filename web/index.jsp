<%--
  Created by IntelliJ IDEA.
  User: ALPACA
  Date: 2020-07-27
  Time: 오후 3:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta viewport content="width=device-width">
    <title>Document</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<!-- CSS 초기화-->
<style>
    html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
  

}
input:focus{outline: none;}

a:link {  color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover {  color: black; text-decoration: none;}


</style>

<body style="margin: 0px 0px 0px 0px;"> 
    <!--상단 시작-->

   

        <div class="top_bar" style="overflow:hidden;float:left;text-align:center;width:100%;
        height:100px; min-width: 1200px;margin:-10px -10px 0px 0px;background-color:#467ef7;">
            
        </div>

        <div class="top_bar2" style="overflow: hidden;float: left;text-align: center;width: 
        100%;min-width: 1200px; height: 30px;margin: 0px 0px 0px 0px; background-color: #d3d3d3;">
            <div style="width: 100%; display: inline;">
                <div style="width: 30%; float: left; margin-left: 0px;">
                  즐겨찾기
                </div>

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
    
        </div>
      






    <div style="float: left; width: 100%; height: 150px; min-width: 950px; text-align: center;  margin-left: 30%; ">
        
    
        <img style="float: left;"  src="img/alpang.gif" alt="">
        <div style="float: left; border: 3px solid skyblue; width: 500px; height: 50px; margin-top: 30px; ">
            <div style="border-right: 3px solid skyblue; height: 47px; width: 150px; float: left;"></div>
            <div style="height: 50px; width: 340px; float: left; "> <input style="float: left; width: 290px; height: 40px; margin-left: 5px;border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;" type="text" >
            <div style="float: right;"><img style="width: 40px; height: 40px; " src="img/search_1.gif" alt=""></div>
            </div>
           
        </div>

    
    
    </div>






    <div>
            
            <center>
                
            <div class="top_categorybar1" style="overflow: hidden;text-align: center;width: 
            100%;height: 450px;margin: 0px 0px 0px 0px;  background-color: #cecec9; min-width: 100%; ">
                <img  style="min-width: 900px;" src="img/main.jpg" alt="">
            
            </div>
            </center>
    </div>
    
<div style="width: 100%; height: 100px; background-color: #ffffff;"></div>

<!-- 바디 -->
<div style="width: 100%; min-width: 1200px;">
    

    <div style="height: 3000px; width: 20%; background-color: #ffffff; float: left;"></div> <!--좌측 바디-->
    <div style="height: 3000px; width: 20%; background-color: #ffffff; float: right;"></div> <!--우측바디-->


         <center>
         
    

    <!--여성패션-->
    <div style="float :auto; margin: 0px 20% 0px 20%; border-top: 5px solid rgb(226, 118, 217); border-bottom: 1px solid #cecec9;
     width: 50%px; max-width: 1200px; height: 600px; min-width: 1200px;">
    

        <!-- 카테고리 구역-->
        <div style="float: left; width: 180px; border-right: 1px solid #cecec9; height: 600px; text-align: center;">

            <div style=" font: bold; font-size: 30px; color: rgb(226, 118, 217); margin-top: 40px;"><b>여성패션</b></div>
            <div style="float: left; margin-left: 30px;">바로가기 ></div>

            <div style="float: left;">
                <div style=" font-size: 20px; color: rgb(226, 118, 217); margin-top: 220px; margin-left: 20px; "><b>HOT 키워드</b></div>
                <div style=" width: 120px; height: 34px; border: 1px solid #cecec9; margin-left: 20px; margin-top: 5px; color: rgb(226, 118, 217); "><div style="margin-top: 5px;"> #keyword1</div></div>
                <div style=" width: 120px; height: 34px; border: 1px solid #cecec9; margin-left: 20px; margin-top: 5px; color: rgb(226, 118, 217); "><div style="margin-top: 5px;"> #keyword2</div></div>
                <div style=" width: 120px; height: 34px; border: 1px solid #cecec9; margin-left: 20px; margin-top: 5px; color: rgb(226, 118, 217); "><div style="margin-top: 5px;"> #keyword3</div></div>
                <div style=" width: 120px; height: 34px; border: 1px solid #cecec9; margin-left: 20px; margin-top: 5px; color: rgb(226, 118, 217); "><div style="margin-top: 5px;"> #keyword4</div></div>
                <div style=" width: 120px; height: 34px; border: 1px solid #cecec9; margin-left: 20px; margin-top: 5px; color: rgb(226, 118, 217); "><div style="margin-top: 5px;"> #keyword5</div></div>
                <div style=" width: 120px; height: 34px; border: 1px solid #cecec9; margin-left: 20px; margin-top: 5px; color: rgb(226, 118, 217); "><div style="margin-top: 5px;"> #keyword6</div></div>
            </div>
        </div>


        <!--프로모션 구역-->
        <div style="float: left;width: 325px; height: 600px;">
            <img style="width: 325px; height: 595px;" src="img/promotion1.png" alt="">
        </div>



        <!--아이템 구역-->
        <div style="float:left;">
        
            <!--상단-->
            <div style="width: 630px; height: 270px; margin: 20px 10px 0px 10px;">
            
                    <div style="float: left;  width: 190px; height: 260px; margin: 0px 10px 0px 20px;">
                        <a href="#">
                        <img src="img/sample160.jpg" alt="">
                        <div style="margin-top: 10px; ">옷옷옷옷옷</div>
                        <div style="font-weight: bold; margin-top: 10px;">18,000원</div>
                        </a>
                    </div>
                    <div style="float: left; width: 190px; height: 260px; margin: 0px 10px 0px 0px;">
                        <a href="#">
                            <img src="img/sample160_2.jpg" alt="">
                            <div style="margin-top: 10px; ">옷옷옷옷옷</div>
                            <div style="font-weight: bold; margin-top: 10px;">18,000원</div>
                            </a>
                    </div>
                    <div style="float: left; width: 190px; height: 260px; margin: 0px 5px 0px 0px;">
                        <a href="#">
                            <img src="img/sample160_3.jpg" alt="">
                            <div style="margin-top: 10px; ">옷옷옷옷옷</div>
                            <div style="font-weight: bold; margin-top: 10px;">18,000원</div>
                            </a>
                    </div>
            
            </div>
        
        <hr>
            <!--하단-->
            <div style="width: 630px; height: 270px; margin: 20px 10px 0px 10px;">
            
                <div style="float: left;  width: 190px; height: 260px; margin: 0px 10px 0px 20px;">
                    <a href="#">
                    <img src="img/sample160_3.jpg" alt="">
                    <div style="margin-top: 10px; ">옷옷옷옷옷</div>
                    <div style="font-weight: bold; margin-top: 10px;">18,000원</div>
                    </a>
                </div>
                <div style="float: left; width: 190px; height: 260px; margin: 0px 10px 0px 0px;">
                    <a href="#">
                        <img src="img/sample160_2.jpg" alt="">
                        <div style="margin-top: 10px; ">옷옷옷옷옷</div>
                        <div style="font-weight: bold; margin-top: 10px;">18,000원</div>
                        </a>
                </div>
                <div style="float: left; width: 190px; height: 260px; margin: 0px 5px 0px 0px;">
                    <a href="#">
                        <img src="img/sample160.jpg" alt="">
                        <div style="margin-top: 10px; ">옷옷옷옷옷</div>
                        <div style="font-weight: bold; margin-top: 10px;">18,000원</div>
                        </a>
                </div>
            </div>
        
        
        
        </div>


    </div>


    <!--경계-->
    <div style="width: 1200px; height: 50px;">
    </div>



    <div style="float :auto; margin: 0px 20% 0px 20%; border-top: 5px solid skyblue; border-bottom: 1px solid #cecec9;
     width: 1160px; max-width: 1160px; height: 600px;">
    

        <!-- 카테고리 구역-->
        <div style="float: left; width: 180px; border-right: 1px solid #cecec9; height: 600px; text-align: center;">

            <div style=" font: bold; font-size: 30px; color: skyblue; margin-top: 40px;"><b>남성패션</b></div>
            <div style="float: left; margin-left: 30px;">바로가기 ></div>

            <div style="float: left;">
                <div style=" font-size: 20px; color: skyblue; margin-top: 220px; margin-left: 20px; "><b>HOT 키워드</b></div>
                <div style=" width: 120px; height: 34px; border: 1px solid #cecec9; margin-left: 20px; margin-top: 5px; color: skyblue; "><div style="margin-top: 5px;"> #keyword1</div></div>
                <div style=" width: 120px; height: 34px; border: 1px solid #cecec9; margin-left: 20px; margin-top: 5px; color: skyblue; "><div style="margin-top: 5px;"> #keyword2</div></div>
                <div style=" width: 120px; height: 34px; border: 1px solid #cecec9; margin-left: 20px; margin-top: 5px; color: skyblue; "><div style="margin-top: 5px;"> #keyword3</div></div>
                <div style=" width: 120px; height: 34px; border: 1px solid #cecec9; margin-left: 20px; margin-top: 5px; color: skyblue; "><div style="margin-top: 5px;"> #keyword4</div></div>
                <div style=" width: 120px; height: 34px; border: 1px solid #cecec9; margin-left: 20px; margin-top: 5px; color: skyblue; "><div style="margin-top: 5px;"> #keyword5</div></div>
                <div style=" width: 120px; height: 34px; border: 1px solid #cecec9; margin-left: 20px; margin-top: 5px; color: skyblue; "><div style="margin-top: 5px;"> #keyword6</div></div>
            </div>
        </div>


        <!--프로모션 구역-->
        <div style="float: left;width: 325px; height: 600px;">
            <img style="width: 325px; height: 595px;" src="img/promotion2.jpg" alt="">
        </div>



        <!--아이템 구역-->
        <div style="float:left;">
        
            <!--상단-->
            <div style="width: 630px; height: 270px; margin: 20px 10px 0px 10px;">
            
                    <div style="float: left;  width: 190px; height: 260px; margin: 0px 10px 0px 20px;">
                        <a href="#">
                        <img src="img/sample160.jpg" alt="">
                        <div style="margin-top: 10px; ">옷옷옷옷옷</div>
                        <div style="font-weight: bold; margin-top: 10px;">18,000원</div>
                        </a>
                    </div>
                    <div style="float: left; width: 190px; height: 260px; margin: 0px 10px 0px 0px;">
                        <a href="#">
                            <img src="img/sample160_2.jpg" alt="">
                            <div style="margin-top: 10px; ">옷옷옷옷옷</div>
                            <div style="font-weight: bold; margin-top: 10px;">18,000원</div>
                            </a>
                    </div>
                    <div style="float: left; width: 190px; height: 260px; margin: 0px 5px 0px 0px;">
                        <a href="#">
                            <img src="img/sample160_3.jpg" alt="">
                            <div style="margin-top: 10px; ">옷옷옷옷옷</div>
                            <div style="font-weight: bold; margin-top: 10px;">18,000원</div>
                            </a>
                    </div>
            
            </div>
        
        <hr>
            <!--하단-->
            <div style="width: 630px; height: 270px; margin: 20px 10px 0px 10px;">
            
                <div style="float: left;  width: 190px; height: 260px; margin: 0px 10px 0px 20px;">
                    <a href="#">
                    <img src="img/sample160_3.jpg" alt="">
                    <div style="margin-top: 10px; ">옷옷옷옷옷</div>
                    <div style="font-weight: bold; margin-top: 10px;">18,000원</div>
                    </a>
                </div>
                <div style="float: left; width: 190px; height: 260px; margin: 0px 10px 0px 0px;">
                    <a href="#">
                        <img src="img/sample160_2.jpg" alt="">
                        <div style="margin-top: 10px; ">옷옷옷옷옷</div>
                        <div style="font-weight: bold; margin-top: 10px;">18,000원</div>
                        </a>
                </div>
                <div style="float: left; width: 190px; height: 260px; margin: 0px 5px 0px 0px;">
                    <a href="#">
                        <img src="img/sample160.jpg" alt="">
                        <div style="margin-top: 10px; ">옷옷옷옷옷</div>
                        <div style="font-weight: bold; margin-top: 10px;">18,000원</div>
                        </a>
                </div>
            </div>
        
        
        
        </div>


    </div>
    
</div> <!--전체 바디 종료-->
<!--경계-->
<div style="width: 1200px; height: 50px;">
</div>



         </center>
</body>
</html>
