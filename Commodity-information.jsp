<%-- 
    Document   : Commodity-information
    Created on : 2020-6-9, 10:41:23
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
        <title>商品详细信息的插入与删除</title>
    </head>
    <body>
        <%
            int id=2;
            String gname=request.getParameter("gname");
            String gprice=request.getParameter("gprice");
            String gsize=request.getParameter("gsize");
            String gcount=request.getParameter("gcount");
            String gdescribe=request.getParameter("gdescribe");
            
        Connection con=null;
        Statement stmt=null;
        ResultSet rs=null;
        Class.forName( "com.mysql.jdbc.Driver");
        String 
        url="jdbc:mysql://localhost:3306/shopping-system?useUnicode=true&characterEncoding=gbk";
        con=DriverManager.getConnection(url,"root","root");
        stmt=con.createStatement();
        

        String sql="insert into goods  values ( '"+id+"','"+gname+"','"+gprice+"','"+gsize+"','"+gcount+"','"+gdescribe+"')";
        try{
            stmt.executeUpdate (sql);
        }catch (Exception e){
            out.print(e);
            e.printStackTrace();
        }
        finally{
            
             stmt.close();
              con.close();
        }
        
            %>
    </body>
</html>
