package func;



import java.sql.*;
public class Controller {
public boolean logincheck(String id,String pw){
    String dbid = "alpacao";
    String dbpw = "alpaca16";
    String dbname = "alpacao";
    String tablename = "shopuser";
    Connection conn = null;
    ResultSet rs = null;
    PreparedStatement pstmt = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alpacao?useUnicode=true&characterEncoding=utf-8", "alpacao", "alpaca16");
        String sql = "select count(*) as cnt from "+tablename +" where id=? and pw=?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, id);
        pstmt.setString(2, pw);
        rs = pstmt.executeQuery();
        rs.next();
        if(rs.getString("cnt").equals("1"))return true;
        else return false;

    }catch(Exception e) {
    }
    return false;
}




    public boolean cccc(String a, String b){
        if(a.equals(b)) return true;
        else return false;
    }


    


    }








