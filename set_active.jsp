<%-- 
    Document   : set_active
    Created on : 2020-6-11, 15:26:27
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
        <title>管理员设置商品</title>
    </head>
    <body>
        <%
             String goods_id=request.getParameter("goods_id");
             String goods_name=request.getParameter("goods_name");
            Connection con=null;
        Statement stmt=null;
        ResultSet rs=null;
        Class.forName( "com.mysql.jdbc.Driver");
        String 
        url="jdbc:mysql://localhost:3306/shopping-system?useUnicode=true&characterEncoding=gbk";
        con=DriverManager.getConnection(url,"root","root");
        stmt=con.createStatement();
        String sql;
           if(goods_id.equals("6")){
                sql="update goods set promote=0 where goods_name='"+goods_name+"'";
           } 
           else if(goods_id.equals("5")){
                sql="delete from goods where goods_name='"+goods_name+"'";
           } else
               sql="update goods set promote='"+goods_id+"' where goods_name='"+goods_name+"'";
           try{
                stmt.executeUpdate(sql);
                out.print("成功！");
           }catch(Exception e)
           {
               out.print(e);
           }
            %>
    </body>
</html>
