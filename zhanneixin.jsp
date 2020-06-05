<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>站内信</title>
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
	border-style: solid;
	border-width: 2px 0px 0px 0px;
	border-color:#D19275;
	magin:0 auto;
	height:35px;
	width:100%;
}
.second{
	background-color:#E9C2A6;
	border-style: solid;
	border-width: 2px 0px 0px 0px;
	border-color:#D19275;
	magin:0 auto;
	height:35px;
	width:100%;
	position:relative;
}
.third{
	background-color:#E9C2A6;
	border-style: solid;
	border-width: 2px 0px 0px 0px;
	border-color:#D19275;
	magin:0 auto;
	height:400px;
	width:100%;
	position:relative;
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
	top: -8px;
	left: 2px;
}
.second div{
	position: absolute;
	top: -10px;
	left: 424px;
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
        <a href="https://www.baidu.com//">
        <img  src="image/1.jpg" width="52" height="8" class="a-image" /></a>
		<div>返回用户中心</div>
      </div>
      <div class="top-right">
	      <div><p>站内信</p></div>
     </div>
  </div>
   <div class="second">
        <div><p>站内信</p></div>
  </div>
  <div class="third">
       
  </div>
</div>
</body>
</html>
