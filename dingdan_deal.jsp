<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*"%>
    <jsp:useBean id="batch" class="com.Batch"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>删除订单页面</title>
</head>
<body>
<%  String dingdan_id=request.getParameter("dingdan_id"); //获取订单号
	System.out.println(dingdan_id);  
	String sql="delete from dingdan_message where dingdan_id='"+dingdan_id+"';";   
	int rs=batch.executeUpdate(sql);
	if(rs>0){
		System.out.println("删除成功！");
	%>
	this.Response.Write(" <script language=javascript>alert('删除订单成功！'); window.window.location.href='dingdan.jsp';</script> ");%
<%  }
	%>
</body>
</html>
