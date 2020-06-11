<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="batch" class="com.Batch"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购物中心</title>
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
.second{
	background-color:#E9C2A6;
	border-style: solid;
	border-width: 2px 0px 0px 0px;
	border-color:#D19275;
	magin:0 auto;
	height:50px;
	width:100%；
	position:relative;
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
.forth{
	background-color:#E9C2A6;
	border-style: solid;
	border-width: 2px 0px 0px 0px;
	border-color:#D19275;
	magin:0 auto;
	height:300px;
	width:100%；
}
.fifth{
	background-color:#D19275;
	border-style: solid;
	border-width: 2px 0px 0px 0px;
	border-color:#D19275;
	magin:0 auto;
	height:100px;
	width:100%；
	position:relative;
}
.sixth{
	background-color:#E9C2A6;
	border-style: solid;
	border-width: 2px 0px 0px 0px;
	border-color:#D19275;
	magin:0 auto;
	height:50px;
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
.forth-left{
	border-style: solid;
	float:left;
	border-width: 0px 2px 0px 0px;
	border-color:#D19275;
	width:60%;
	height:100%;
	position:relative;
}
.forth-right{
	float:left;
	width:39.5%;
	height:100%;
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
.second div{
	position: absolute;
	left: 280px;
	top: 94px;
	height: 27px;
}
.second .sousuo{
	position: absolute;
	left: 339px;
	top: 96px;
	height: 21px;
	width: 681px;
	border-color: black;
	border-width: 1px;
}
.second .dianji{
	position: absolute;
	background-color: #D19275;
	border-width: 0px;
	left: 1035px;
	top: 96px;
	height: 31px;
	width: 75px;
}
.third div{
	position: absolute;
	width: 452px;
	left: 469px;
	top: 143px;
}
.forth-left img{
	position: absolute;
	left: 102px;
	top: 28px;
	width: 472px;
	height: 242px;
}
.forth-right .forth-touxiang{
	position: absolute;
	left: 110px;
	top: 18px;
	width: 144px;
	height: 139px;
}
.forth-right .forth-nicheng{
	position: absolute;
	width: 292px;
	height: 76px;
	left: 84px;
	top: 213px;
}

.fifth .fifth-left{
	position: absolute;
	left: 189px;
	top: 481px;
	height: 100px;
	width: 149px;
	background-color: #E9C2A6;
}
.fifth .fifth-center{
	position: absolute;
	height: 100px;
	width: 149px;
	background-color: #E9C2A6;
	left: 579px;
	top: 481px;
}
.fifth .fifth-right{
	position: absolute;
	height: 100px;
	width: 149px;
	background-color: #E9C2A6;
	left: 992px;
	top: 481px;
}
.sixth p{
	position: absolute;
	left: 13px;
	top: 491px;
	height: 25px;
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
.juzhong{
	display:flex;
	justify-context:centet;
	align-items:center;
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
<% String user_name=(String)session.getAttribute("username1");  //传参
	
%>  
<div class="container">
  <div class="first">
	    <img src="image/logo.jpg"   class="c-image" />
	</div>
	<div class="top">
      <div class="top-left">
        <a href="Shouye.jsp">
        <img  src="image/1.jpg" class="a-image"/></a>
		<div>返回首页</div>
     </div>
      <div class="top-right">
	      <div><p>购物中心</p></div>
     </div>
   </div>
   <div class="second">
        <div align="center">搜索：</div>
     <form action="sousuo_deal.jsp" method="post">
            <input type="text" placeholder="请输入搜索商品名称" class="sousuo" name="goods_name"/><!-- 添加搜索框中提示文字 -->
            <input type="submit" class="dianji" value="搜索"/>
       </form>
  </div>
 <div class="third">
    <div>
        <a href="fenlei.jsp?type=数码">数码类</a>
        &nbsp;&nbsp;
        <a href="fenlei.jsp?type=美妆">美妆类</a>
         &nbsp;&nbsp;
        <a href="fenlei.jsp?type=生活">生活类</a>
         &nbsp;&nbsp;
        <a href="fenlei.jsp?type=美食">美食类</a>
    </div>
  </div>

  <div class="forth">
  <%
	String sql1="select * from goods;";
	ResultSet rs_goods=batch.executeQuery(sql1);
	int promote;
	String url="";
	String goods_name="";
	while(rs_goods.next()){
	goods_name=rs_goods.getString(1);
	url=rs_goods.getString(5);
	promote=rs_goods.getInt(6);
	if(promote==4){              //假设此处活动promote=4
%>
    <div class="forth-left">
          <a href="Dtails.jsp?goods_id=<%=goods_name%>"><img src="<%=url%>"  /></a>
    </div>
<%       }
	}

    
//    System.out.println(user_name);
    String sql2="select sex from user where user_name='"+user_name+"';";
	ResultSet rs_user=batch.executeQuery(sql2);
	
	String sex="";
	String url_1="";
	
	while(rs_user.next()){
	  sex=rs_user.getString(1);
	  
	  //System.out.println(sex);
	  if(sex.equals("男")){
		  url_1="image/男.jpg";
	  }else{
	  	url_1="image/女.jpg";
	  }
	}
	String yemian="shoppingcenter";
%>
       <div class="forth-right">
         <a href="usermessage.jsp?yemian=<%=yemian%>"><div class="forth-touxiang"><img src="<%=url_1%>" width="130" height="130" /></div></a>
         <div class="forth-nicheng"><p>昵称:<%=user_name %></p></div>
    </div>
<% 
%>
  </div>
    <div class="sixth">
    <p>人气推荐</p>
  </div>
  <%
	String sql5="select * from goods;";
	ResultSet rs_commodity=batch.executeQuery(sql5);
	
	float price;
	int stock;
	String des="";
	String url_2="";
	String type="";
	while(rs_commodity.next()){
		goods_name=rs_commodity.getString(1);
  		price=rs_commodity.getFloat(2);
  		stock=rs_commodity.getInt(3);
  		des=rs_commodity.getString(4);
  		//System.out.println(price);
  		url_2=rs_commodity.getString(5);
  		type=rs_commodity.getString(7);
%>
  <a href="Dtails.jsp?goods_name=<%=goods_name%>">
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
  <%} %>
</div>
</body>
</html>
