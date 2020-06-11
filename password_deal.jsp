<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*"%>
    <jsp:useBean id="batch" class="com.Batch"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>修改密码处理页</title>
</head>
<body>
<%
	String user_name=(String)session.getAttribute("username1");
    
	System.out.println(user_name);
	String yuanmima=new String(request.getParameter("yuanmima").getBytes("ISO-8859-1"),"UTF-8");
	System.out.println(yuanmima);
	String xianmima=new String(request.getParameter("xianmima").getBytes("ISO-8859-1"),"UTF-8");
	System.out.println(xianmima);
	String querenmima=new String(request.getParameter("querenmima").getBytes("ISO-8859-1"),"UTF-8");
	System.out.println(querenmima);
	String sql1="select password from user where user_name='"+user_name+"';";
	ResultSet rs_password=batch.executeQuery(sql1);
	String password="";
	while(rs_password.next()){
		password=rs_password.getString(1);
		System.out.println(password);
		if(yuanmima.equals(password)&&xianmima.equals(querenmima)&&!yuanmima.equals("")&&!xianmima.equals("")&&!querenmima.equals("")){
			String sql2="update user set password='"+xianmima+"' where user_name='"+user_name+"';";
			int r=batch.executeUpdate(sql2);
			if(r>0){
			%>
				this.Response.Write(" <script language=javascript>alert('密码修改成功！'); window.window.location.href='usermessage.jsp?user_name=<%=user_name%>';</script> ");
		<% 
		    }
		}if(yuanmima.equals("")||xianmima.equals("")||querenmima.equals("")){
			%>
			this.Response.Write(" <script language=javascript>alert('密码不能为空！'); window.window.location.href='update_password.jsp?user_name=<%=user_name%>';</script> ");
		<% 
			}if(!yuanmima.equals(password)){
			%>
			this.Response.Write(" <script language=javascript>alert('密码输入错误！'); window.window.location.href='update_password.jsp?user_name=<%=user_name%>';</script> ");
		<%
		}if(!xianmima.equals(querenmima)){
			%>
			this.Response.Write(" <script language=javascript>alert('密码输入不一致！'); window.window.location.href='update_password.jsp?user_name=<%=user_name%>';</script> ");
		<%	}	
	}
		%>
</body>
</html>
