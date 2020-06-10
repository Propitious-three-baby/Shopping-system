<%-- 
    Document   : registercheck
    Created on : 2020-6-10, 14:35:28
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
        <title>注册页面检查</title>
    </head>
    <body>
        <%
            String username=request.getParameter("username");
            if(username=="")
                out.print("昵称不能为空！"+"<br>");
            else
            {
                 Connection con=null;
        Statement stmt=null;
        ResultSet rs=null;
        Class.forName( "com.mysql.jdbc.Driver");
        String 
        url="jdbc:mysql://localhost:3306/shopping-system?useUnicode=true&characterEncoding=gbk";
        con=DriverManager.getConnection(url,"root","root");
        stmt=con.createStatement();
       String sql="select * from user where user_name='"+ username+"'";
        rs=stmt.executeQuery(sql);
        if(rs.next()){
            out.print("该昵称已存在！请更换昵称！");
        }
        else
        {
            String password=request.getParameter("password");
            if(password=="")
                out.print("密码不能为空！"+"<br>");
            String checkpass=request.getParameter("checkpassword");
            if(checkpass==""||password!=checkpass)
                out.print("请再次确认密码！"+"<br>");
            String sex=request.getParameter("sex");
            if(sex=="")
                out.print("请选择性别"+"<br>");
            String tel=request.getParameter("tel");
            if(tel=="")
                out.print("电话号码不能为空！"+"<br>");
            String address=request.getParameter("address");
            if(address=="")
            out.print("地址信息不能为空"+"<br>");
             sql=" insert into user values(' "+username+"','"+password+"','"+"user','"+sex+"','"+tel+"','"+address+"','10000')";
             try{
                 out.print(sql);
            stmt.executeUpdate (sql);
            response.sendRedirect("Shouye.jsp");
        }catch (Exception e){
            out.print(e);
            e.printStackTrace();
        }
        finally{
             stmt.close();
              con.close();
        }
             
        }
            }
            
        %>   
    </body>
</html>
