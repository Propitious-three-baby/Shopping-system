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
                    <th>商品名称</th>
                    <th>收货人</th>
                    <th>订单创建时间</th>
                    <th>商品数量</th>
                    <th>电话号码</th>
                    <th>收货地址</th>
                    <th>备注</th>
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
       try{
             String sql="select goods_name,order.user_name,creat_time,number,tel,address,remark from `order`,user where creat_time>='"+stime+"'and creat_time<='"+etime+"' and order.user_name=user.user_name" ;

            rs=stmt.executeQuery(sql);  
       }
       catch(Exception e)
       {
           out.print(e);
       }

        while(rs.next()){
        %>
        <tr>
            <td> <%=rs.getString("goods_name")%>  </td>
            <td><%=rs.getString("user_name")%></td>
            <td><%=rs.getString("creat_time")%></td>
            <td><%=rs.getString("number")%></td>
            <td><%=rs.getString("tel")%></td>
             <td><%=rs.getString("address")%></td>
             <td><%=rs.getString("remark")%></td>
        </tr>
        <%
           }
        %>
            </table>
    </center>
    </body>
    
