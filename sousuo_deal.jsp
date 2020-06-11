<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*"%>
<!DOCTYPE html>
<jsp:useBean id="batch" class="com.Batch"></jsp:useBean>
<html>
<head>
<meta charset="utf-8">
<title>搜索页面</title>
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
.top{
	background-color:white;
	magin:0 auto;
	height:35px;
	width:100;
}
.third{
	background-color:#E9C2A6;
	border-style: solid;
	border-width: 2px 0px 0px 0px;
	border-color:#D19275;
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
.top-left div{
	position: absolute;
	left: 49px;
	top: 6px;
	width: 135px;
}
.top-right div{
	position: absolute;
	top: -12px;
	left: 2px;
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
.seventh-left img{
	position: absolute;
	left: 40px;
	top: 20px;
}
.seventh-right .name{
	position: absolute;
	left: 15px;
	top: 40px;
}
.seventh-right .price{
	position: absolute;
	left: 15px;
	top: 70px;
	width: 157px;
	height: 60px;
}
.seventh-right .type{
	position: absolute;
	left: 15px;
	top: 10px;
}

.seventh-right .stock{
	position: absolute;
	width: 143px;
	height: 42px;
	left: 15px;
	top: 100px;
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
	      <div><p>搜索商品</p></div>
     </div>
   </div>
 <div class="third">搜索结果：</div>
  <%
    String goods_name=new String(request.getParameter("goods_name").getBytes("ISO-8859-1"),"UTF-8");
    System.out.println(goods_name);
    String sql5="select * from goods where goods_name='"+goods_name+"';";
	ResultSet rs_commodity=batch.executeQuery(sql5);
	float price;
	int stock;
	String des="";
	String url_2="";
	String type="";
	if(rs_commodity==null){
	%>
	  this.Response.Write(" <script language=javascript>alert('请输入正确的商品全名！'); window.window.location.href='shoppingcenter.jsp';</script> ");
	  <%}else{
	while(rs_commodity.next()){
		goods_name=rs_commodity.getString(1);
  		price=rs_commodity.getFloat(2);
  		stock=rs_commodity.getInt(3);
  		des=rs_commodity.getString(4);
  		System.out.println(price);
  		url_2=rs_commodity.getString(5);
  		type=rs_commodity.getString(7);
%>
  <a href="商品详情页链接?goods_name=<%=goods_name%>">
  <div class="seventh">
  	  <div class="seventh-left">
          <img src="<%=url_2 %>" class="b-image"/>
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
  <% } 
  } %>
</div>
</body>
</html>
