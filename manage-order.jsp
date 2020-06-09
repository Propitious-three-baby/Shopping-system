<%-- 
    Document   : manage-order
    Created on : 2020-6-9, 8:39:47
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
        <title>JSP Page</title>
        <style>
            body{
		background-color: #D19275;
                padding: 20px 70px;
             }
        </style>
           
    </head>
    <body>
          <br>
        <br>
    <center>
        <h2>以下是订单详情</h2>
        <hr>
        <table border="2" bgcolor="#E9C2A6" align="center">
                <tr>
                    <th>订单号</th>
                    <th>姓名</th>
                    <th>创建时间</th>
                    <th>地址</th>
                    <th>电话号码</th>
                </tr>
        <%
            int stime=0 ,etime=0;
            String ls=request.getParameter("syear");
            if(ls!=null){ stime = Integer.parseInt(request.getParameter("syear"));}
            ls=request.getParameter("smonth");
            if(ls!=null){ stime=stime*100;stime += Integer.parseInt(request.getParameter("smonth"));}
             ls=request.getParameter("sday");
            if(ls!=null){ stime=stime*100;stime += Integer.parseInt(request.getParameter("sday"));}
             
             ls=request.getParameter("eyear");
            if(ls!=null){ etime = Integer.parseInt(request.getParameter("eyear"));}
            ls=request.getParameter("emonth");
            if(ls!=null){ etime=etime*100;etime += Integer.parseInt(request.getParameter("emonth"));}
             ls=request.getParameter("eday");
            if(ls!=null){ etime=etime*100;etime += Integer.parseInt(request.getParameter("eday"));}
            
        Connection con=null;
        Statement stmt=null;
        ResultSet rs=null;
        Class.forName( "com.mysql.jdbc.Driver");
        String 
        url="jdbc:mysql://localhost:3306/shopping-system?useUnicode=true&characterEncoding=gbk";
        con=DriverManager.getConnection(url,"root","root");
        stmt=con.createStatement();
        out.print(stime);

       String sql="select * from 订单 where 创建时间>='"+stime+"'&&创建时间<='"+etime+"'" ;
        rs=stmt.executeQuery(sql);
        while(rs.next()){
        %>
        <tr>
            <td> <%=rs.getString("id")%>  </td>
            <td><%=rs.getString("姓名")%></td>
            <td><%=rs.getString("创建时间")%></td>
            <td><%=rs.getString("地址")%></td>
            <td><%=rs.getString("电话号码")%></td>
        </tr>
        <%
           }
        %>
            </table>
    </center>
    </body>
</html>
