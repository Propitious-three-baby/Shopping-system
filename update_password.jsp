<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>修改密码</title>
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
	width:100%;
	height:20px;
	border-style: solid;
	border-width: 2px 0px 0px 0px;
	border-color:#D19275;
	background-color:#E9C2A6;
	clear:both;
}
.third{
	width:100%;
	height:40px;
	border-style: solid;
	border-width: 2px 0px 0px 0px;
	border-color:#D19275;
	background-color:#E9C2A6;
	clear:both;
	position:relative;
}
.fifth{
	width:100%;
	height:250px;
	border-style: solid;
	border-width: 2px 0px 0px 0px;
	border-color:#D19275;
	background-color:#E9C2A6;
	clear:both;
	position:relative;
}
.third .zi{
	position: absolute;
	left: 252px;
	top: -5px;
	height: 40px;
	width: 110px;
}
.third .kuang{
	position: absolute;
	left: 363px;
	top: 10px;
	width: 293px;
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
	width: 149px;
}
.top-right div{
	position: absolute;
	top: -12px;
	left: 2px;
}
.fifth input{
	position: absolute;
	left: 440px;
	top: 80px;
	width: 215px;
	height: 65px;
	background-color: #D19275;
	border-width: 0px;
}
.daxiao{
	width:500px;
	height:20px;
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
<%String user_name=(String)session.getAttribute("username1"); %>
<div class="container">
  <div class="first">
	    <img src="image/logo.jpg"   class="c-image" />
  </div>
  <div class="top">
      <div class="top-left">
        <a href="usermessage.jsp?user_name=<%=user_name%>">
        <img  src="image/1.jpg" class="a-image"/></a>
		<div>返回用户信息页</div>
     </div>
  </div>
  <form action="password_deal.jsp" method="post">
  <div class="third">
    <div class="zi"><p>原密码：</p></div>
    <div class="kuang"><input class="daxiao" type="password" maxlength="20" name="yuanmima"/>
    </div>
    </div>
   <div class="third">
     <div class="zi"><p>现密码:</p></div>
    <div class="kuang"><input class="daxiao" type="password" maxlength="20" name="xianmima" />
    </div>
   </div>
   <div class="third">
     <div class="zi"><p>确认密码:</p></div>
    <div class="kuang"><input class="daxiao" type="password" maxlength="20" name="querenmima" />
    </div>
   </div>
   <div class="fifth">
     		<input type="submit" class=""  value="确认修改"/>
  </div>
</form>
</div>
</body>
</html>
