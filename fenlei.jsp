<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*"%>
<!DOCTYPE html>
<jsp:useBean id="batch" class="com.Batch"></jsp:useBean>
<html>
<head>
<meta charset="utf-8">
<title>活动页面</title>
<style>
body{
	background-color:#D19275;
}
.container{
	margin: 0 auto;
	padding: 0 auto;
}
.first{
    background-color:#E9C2A6;
	magin:0 auto;
	height:40px;
	width:100%；
	position:relative;
}
.seventh{
	background-color:#E9C2A6;
	border-style: solid;
	border-width: 2px 0px 0px 0px;
	border-color:#D19275;
	magin:0 auto;
	height:220px;
	width:100%；
}
.top{
	background-color:white;
	magin:0 auto;
	height:35px;
	width:100;
}
.top-left{
	float:left;
	width:170px;
	height:35px;
	position:relative;
}
.top-right{
	 float:right;
	 width:140px;
	 height:35px;
	 position:relative;
}
.seventh-left{
	border-width: 0px 2px 0px 0px;
	border-color:#D19275;
	border-style: solid;
	float:left;
	width:30%;
	height:100%;
	position:relative;
}
.seventh-right{
	float:right;
	width:69%;
	height:100%;
	position:relative;
}
.first img{
	position: absolute;
	left: 9px;
	top: 9px;
}
.top-left div{
	position: absolute;
	left: 49px;
	top: 6px;
	width: 124px;
}
.top-right div{
	position: absolute;
	top: -12px;
	left: 2px;
	width: 106px;
}
.seventh-left img{
	position: absolute;
	left: 40px;
	top: 20px;
}
.seventh-right .name{
	position: absolute;
	left: 15px;
	top: 40px;
	width: 246px;
}
.seventh-right .price{
	position: absolute;
	left: 15px;
	top: 69px;
	width: 243px;
	height: 53px;
}
.seventh-right .type{
	position: absolute;
	left: 15px;
	top: 10px;
	width: 258px;
}
.seventh-right .stock{
	position: absolute;
	width: 180px;
	height: 42px;
	left: 16px;
	top: 103px;
}
.seventh-right .des{
	position: absolute;
	left: 377px;
	top: 11px;
	width: 330px;
	height: 94px;
}
a{
    text-decoration:none;
}
.a-image{
	 width:40px;
	 height:27px;
}
.b-image{
     width:250px;
	 height:180px;
}
.c-image{
     width:100px;
	 height:37px;
}
</style>
</head>
<body>
<div class="container">
  <div class="first">
	    <img src="image/logo.jpg"   class="c-image" />
	</div>
	<div class="top">
      <div class="top-left">
        <a href="shoppingcenter.jsp">
        <img  src="image/1.jpg" class="a-image"/></a>
		<div>返回购物中心</div>
     </div>
      <div class="top-right">
	      <div><p>分类</p></div>
     </div>
   </div>
 <%
 	String type=request.getParameter("type");
 	String sql1="select * from goods where type='"+type+"';";//通过传进的活动类型获取活动信息
 	ResultSet rs_fenlei=batch.executeQuery(sql1);
 	String goods_name="";
	String url="";
	float price;
	String des="";
	int stock;
	while(rs_fenlei.next()){
		goods_name=rs_fenlei.getString(1);
  		price=rs_fenlei.getFloat(2);
  		stock=rs_fenlei.getInt(3);
  		des=rs_fenlei.getString(4);
  		url=rs_fenlei.getString(5);
  		type=rs_fenlei.getString(7);
 %>
 <a href="Dtails.jsp?goods_name=<%=goods_name%>">
   <div class="seventh">
  	  <div class="seventh-left">
          <img src="<%=url %>" class="b-image"/>
       </div>
      <div class="seventh-right">
        <div class="name">
              <p>商品名：<%=goods_name %></p>
          </div>
      <div class="price">
        <p>价格：<%=price %><p>
      </div>
      <div class="type">
        <p>类型：<%=type %>类</p>
      </div>
      <div class="des">
        <p>商品描述：<%=des %></p>
      </div>
      <div class="stock">
         <p>库存：<%=stock %></p>
      </div>
    </div>
  </div>
   </a>
 <%    }
 %>
   </div>
</div>
</body>
</html>
