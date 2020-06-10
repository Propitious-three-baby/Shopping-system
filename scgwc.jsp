<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*"%>
    <jsp:useBean id="sjk" class="gwcsjk.ljsjk"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>删除购物车项</title>
</head>
<body>
<%  String name=request.getParameter("goods_name");
    String uname=request.getParameter("user_name");
    out.print(name);
    Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
    String url = "jdbc:mysql://localhost:3306/gouwuxitong?useSSL=false&serverTimezone=UTC"; //数据库名
    String username = "root";  //数据库用户名
    String password = "root";  //数据库用户密码
    Connection conn = DriverManager.getConnection(url, username, password);  //连接状态
    String sql="delete from gouwuche where name='"+name+"'AND username='"+uname+"';";
    int rs=sjk.executeUpdate(sql);
    if(rs>0){
    	System.out.print("删除成功！");
    	%>
    	this.Response.Write(" <script type="text/javascript">alert('删除成功！');window.window.location.href='shiyan.jsp';</script>");
<% }

%>
</body>
</html>
