<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
    <jsp:useBean id="batch" class="com.Batch"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>删除订单页面</title>
</head>
<body>
<%  int id=Integer.parseInt(request.getParameter("id")); //获取订单号 
	//System.out.println(id);  
	String user_name=request.getParameter("user_name");
	String sql="delete from `order` where id='"+id+"';";   
	int rs=batch.executeUpdate(sql);
	if(rs>0){
		System.out.println("删除成功！");
	%>
	this.Response.Write(" <script language=javascript>alert('删除订单成功！'); window.window.location.href='dingdan.jsp?user_name=<%=user_name%>';</script> ");

<% }
	%>
</body>
</html>
