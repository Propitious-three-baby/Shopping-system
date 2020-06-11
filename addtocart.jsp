<%-- 
    Document   : addtocart
    Created on : 2020-6-11, 16:41:07
    Author     : church刘诗思
--%>
<%@page import="javafx.scene.input.KeyCode"%>
<%@page import="java.lang.Integer"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>加入购物车</title>
    </head>
    <body>
        <%
            String user_name=request.getParameter("user_name");
            String goods_name=request.getParameter("goods_name");
            Connection con=null;
        Statement stmt=null;
        ResultSet rs=null;
        Class.forName( "com.mysql.jdbc.Driver");
        String 
        url="jdbc:mysql://localhost:3306/shopping-system?useUnicode=true&characterEncoding=gbk";
        con=DriverManager.getConnection(url,"root","root");
        stmt=con.createStatement();

       try{
           String sql="select * from cart where goods_name='"+ goods_name+"'and user_name='"+user_name+"'";
           
           rs=stmt.executeQuery(sql);
       }catch(Exception e)
       {
           out.print(e);
       }
       if(rs.next())
       {
           
            try{
               String sql="update cart set count=count+1 where goods_name='"+goods_name+"' and user_name='"+user_name+"'";
              out.print("加入成功！");
               stmt.executeUpdate(sql);
           }catch(Exception e)
           {
               out.print(e);
           }
       }
       else
       {
           try{
               String sql=" insert into cart values('"+goods_name+"','"+user_name+"',1)";
               out.print("加入成功！");
               stmt.executeUpdate(sql);
           }catch(Exception e)
           {
               out.print(e);
           }
       }
        %>
    </body>
</html>
