<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <jsp:useBean id="batch" class="com.Batch"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>确认收货</title>
</head>
<body>
<% int id=Integer.parseInt(request.getParameter("id"));
	String goods_name=request.getParameter("goods_name");
	String user_name=request.getParameter("user_name");
	String sql="update `order` set receive ='T' where id='"+id+"' and goods_name='"+goods_name+"';"; 
	int rs=batch.executeUpdate(sql);
	if(rs>0){
		System.out.println("成功！");
	%>
	this.Response.Write(" <script language=javascript>alert('确认收货成功！'); window.window.location.href='daishouhuo.jsp?user_name=<%=user_name%>';</script> ");

<% }
	%>
</body>
</html>
