<%-- 
    Document   : judge
    Created on : 2020-6-10, 14:24:16
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
        <title>登录检查</title>
    </head>
    <body>
        <%
            String username=request.getParameter("username");
            String password=request.getParameter("password");
        Connection con=null;
        Statement stmt=null;
        ResultSet rs=null;
        Class.forName( "com.mysql.jdbc.Driver");
        String 
        url="jdbc:mysql://localhost:3306/shopping-system?useUnicode=true&characterEncoding=gbk";
        con=DriverManager.getConnection(url,"root","root");
        stmt=con.createStatement();

       String sql="select * from noname where 姓名='"+username+"'&&密码='"+password+"'";
        rs=stmt.executeQuery(sql);
        if(rs.next()){response.sendRedirect("Shouye.jsp");}
        else{response.sendRedirect("login.jsp");}
            %>
    </body>
</html>
