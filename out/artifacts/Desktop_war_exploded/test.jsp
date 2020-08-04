<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>

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
                String sql = "select itemseller, count(*) as cnt from shopitem group by itemseller order by cnt DESC limit 3";
                pstmt = conn.prepareStatement(sql);
                rs = pstmt.executeQuery();
                rs.next();

                
                while(rs.next()){

                    out.print(rs.getString("itemseller")+"   ");
                    out.print(rs.getString("cnt")+"\r\n");
                
                }
       
       
        
            
        %>