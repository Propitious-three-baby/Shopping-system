<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:useBean id="batch" class="com.Batch"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>用户信息处理页面</title>
</head>

<body>
<%
    String user_name=new String(request.getParameter("user_name").getBytes("ISO-8859-1"),"UTF-8");
	//System.out.println(name);//测试读入了没
	String sex=new String(request.getParameter("sex").getBytes("ISO-8859-1"),"UTF-8");
	int tel=Integer.parseInt(request.getParameter("tel"));
	String address=new String(request.getParameter("address").getBytes("ISO-8859-1"),"UTF-8");

    String sql="update user set "+
	"sex='"		  +sex+"',"+
	"tel='"       +tel+"',"+
	"address='"	  +address+"' "
	+"where user_name='"  +user_name+"';";
	int r=batch.executeUpdate(sql);
	if(r>0){
	%>
		this.Response.Write(" <script language=javascript>alert('保存信息成功！'); window.window.location.href='usermessage.jsp?user_name=<%=user_name%>';</script> ");
<% 

    }
%>
</body>
</html>
