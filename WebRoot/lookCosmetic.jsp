<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.sql.*" %>
<HTML><HEAD><%@ include file="head.txt" %></HEAD>
<BODY background=image/back.jpg><font size=2>
<div align="center">
<%   
try {  Class.forName("com.mysql.jdbc.Driver");
      }
      catch(Exception e){} 
      String uri="jdbc:mysql://127.0.0.1/shop?"+
                             "user=root&password=123456&characterEncoding=gb2312";
      Connection con; 
      Statement sql;
      ResultSet rs;
      try {
        con=DriverManager.getConnection(uri);
        sql=con.createStatement();
        //读取classify表，获得分类：  
        rs=sql.executeQuery("SELECT * FROM pic  ");      
        while(rs.next()){
           int id = rs.getInt(1);
           String name = rs.getString(2);
           String str1 = "<img src=image/";
           String str2 =" width=300 height=200></img>";
           out.print(str1+name+str2);
        }  
        con.close();
     }
     catch(SQLException e){ 
        out.print(e);
     }
%>





</div></font>
</BODY></HTML>
