<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
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
}
.top-right div{
	position: absolute;
	top: -12px;
	left: 2px;
}
.second div{
	position: absolute;
	left: 280px;
	top: 53px;
	height: 27px;
}
.second input{
	position: absolute;
	left: 339px;
	top: 52px;
	height: 21px;
	width: 681px;
	border-color: black;
	border-width: 1px;
}
.third div{
	position: absolute;
	width: 452px;
	left: 470px;
	top: 109px;
}
.forth-right .forth-touxiang{
	position: absolute;
	left: 110px;
	top: 18px;
	width: 144px;
	height: 139px;
}
.forth-right .forth-denglu{
	position: absolute;
	background-color: #D19275;
	width: 66px;
	height: 50px;
	top: 180px;
	left: 88px;
}
.forth-right .forth-zhuce{
	position: absolute;
	background-color: #D19275;
	left: 211px;
	top: 180px;
	width: 66px;
	height: 50px;
}
.forth-right .forth-ID{
	position: absolute;
	width: 75px;
	height: 40px;
	left: 84px;
	top: 177px;
}
.forth-right .forth-nicheng{
	position: absolute;
	width: 75px;
	height: 40px;
	left: 78px;
	top: 215px;
}

.fifth .fifth-left{
	position: absolute;
	left: 189px;
	top: 440px;
	height: 100px;
	width: 149px;
	background-color: #E9C2A6;
}
.fifth .fifth-center{
	position: absolute;
	height: 100px;
	width: 149px;
	background-color: #E9C2A6;
	left: 582px;
	top: 440px;
}
.fifth .fifth-right{
	position: absolute;
	height: 100px;
	width: 149px;
	background-color: #E9C2A6;
	left: 992px;
	top: 438px;
}
.sixth p{
	position: absolute;
	left: 19px;
	top: 551px;
	height: 25px;
}
.seventh-left img{
	position: absolute;
	left: 40px;
	top: 20px;
}
.seventh-right .name{
	position: absolute;
	left: 193px;
	top: 86px;
}
.seventh-right .price{
	position: absolute;
	left: 194px;
	top: 24px;
	width: 157px;
	height: 96px;
}
a{
    text-decoration:none;
}
/* 鼠标移动到选项上修改背景颜色 */

.dropdown{
	position: relative;
  	display: inline-block;
  	
}
.content {
	display:none;
	position:absolute;
	background-color:white;
}
.dropdown:hover .content{
	display:block;
	background-color:white;
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
        <input type="text" placeholder="请输入搜索商品名称"/><!-- 添加搜索框中提示文字 -->
  </div>
  <!-- 不做分类了，把分类藏起来 -->
  <!-- <div class="third">
    <div>
        <a href="https://www.baidu.com//">分类1</a>
        &nbsp;&nbsp;
        <a href="https://www.baidu.com//">分类2</a>
         &nbsp;&nbsp;
        <a href="https://www.baidu.com//">分类3</a>
         &nbsp;&nbsp;
        <a href="https://www.baidu.com//">分类4</a>
    </div>
  </div>
   -->
  <div class="forth">
    <div class="forth-left">
          
    </div>
       <div class="forth-right">
         <a href="https://www.baidu.com//"><div class="forth-touxiang"><img src="image/2.jpg" width="130" height="130" /></div></a>
         <!--<a href="https://www.baidu.com//"><div class="forth-denglu" align="center"><p>登录</p></div></a>
         <a href="https://www.baidu.com//"><div class="forth-zhuce" align="center"><p>注册</p></div></a>
         -->
         <div class="forth-ID" align="center"><p>ID:</p></div>
         <div class="forth-nicheng" align="center"><p>昵称:</p></div>
    </div>
  </div>
    
    <div class="fifth">
      <a href="https://www.baidu.com//"><div class="fifth-left" align="center" ><p>每周新品</p></div></a>
      <a href="https://www.baidu.com//"><div class="fifth-center" align="center"><p>必买榜单</p></div></a>
      <a href="https://www.baidu.com//"><div class="fifth-right" align="center"><p>超U惠</p></div></a>
  </div>
    <div class="sixth">
    <p>人气推荐</p>
  </div>
  <a href="https://www.baidu.com//">
  <div class="seventh">
  	  <div class="seventh-left">
          <img src="image/3.jpg" class="b-image"/>
       </div>
    <div class="seventh-right">
      <div class="name">
             <p>商品名：摄相机</p>
      </div>
       <div class="price">
             <p>价格:5000<p>
       </div>
    </div>
  </div>
  </a>
</div>
</body>
</html>
