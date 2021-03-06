<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="batch" class="com.Batch"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户中心</title>
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
	width:100%；
}
.second{
	width:100%;
	height:190px;
	border-style: solid;
	border-width:2px 0px 0px 0px;
	border-color:#D19275;
	background-color:#E9C2A6;
	clear:both;
}
.third{
	width:100%;
	height:50px;
	border-style: solid;
	border-width: 2px 0px 0px 0px;
	border-color:#D19275;
	background-color:#E9C2A6;
	clear:both;
}
.forth{
	width:100%;
	height:140px;
	border-style: solid;
	border-width: 2px 0px 0px 0px;
	border-color:#D19275;
	background-color:#E9C2A6;
	clear:both;
	position:relative;
}
.interval{
	width:100%;
	height:20px;
	border-style: solid;
	border-width: 2px 0px 0px 0px;
	border-color:#D19275;
	background-color:#E9C2A6;
	clear:both;
}
.fifth{
	width:100%;
	height:50px;
	border-style: solid;
	border-width: 2px 0px 0px 0px;
	border-color:#D19275;
	background-color:#E9C2A6;
	clear:both;
	position:relative;
}
.sixth{
	width:100%;
	height:140px;
	border-style: solid;
	border-width: 2px 0px 0px 0px;
	border-color:#D19275;
	background-color:#E9C2A6;
	clear:both;
}
.seventh{
	width:100%;
	height:60px;
	border-color:transperation;
	clear:both;
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
.second-left{
     float:left;
	 position:relative;
	 margin:0;
	 width:210px;
	 height:100%;
}
.second-center{
    float:left;
    position:relative;
	margin:0;
	width:280px;
	height:100%;
}
.second-right{
	float:right;
	position:relative;
	margin:0;
	width:400px;
	height:100%;
}
.second-zhuce{
	float:left;
	position:relative;
	margin:0;
    width:150px;
	height:100%;
}
.second-denglu{
	float:left;
	position:relative;
	margin:0;
	width:400px;
	height:100%;
}
.third-left{
    float:left;
	position:relative;
	margin:0;
	width:400px;
	height:100%;
}
.third-right{
    float:right;
	position:relative;
	margin:0;
	width:400px;
	height:100%;
}
.sixth-left{
	float:left;
	position:relative;
	margin:0;
	width:33.3%;
	height:100%;
}
.sixth-center{
	float:left;
	position:relative;
	margin:0;
	width:33.3%;
	height:100%;
	border-style: solid;
	border-width:0px 2px 0px 2px;
	border-color:#D19275;
}
.sixth-right{
	float:right;
	position:relative;
	margin:0;
	width:33%;
	height:100%;
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
.second-left img{
	position: absolute;
	left: 33px;
	bottom: 34px;
}
.second-center p{
	position: absolute;
	left: 14px;
	top: 69px;
}
.second-zhuce div{
	position: absolute;
	left: 40px;
	top: 131px;
	height: 24px;
	width: 65px;
	background-color:#D19275;
}
.second-denglu div{
	position: absolute;
	left: 28px;
	top: 131px;
	background-color: #D19275;
	width: 65px;
	height: 24px;
	}
.second-right div{
	position: absolute;
	left: 106px;
	top: 126px;
}
.third-left div{
	position: absolute;
	left: 18px;
	top: -3px;
	height: 27px;
}
.third-right div{
	position: absolute;
	left: 200px;
	top: -4px;
	height: 90%;
	width: 159px;
}

.forth div{
	position: absolute;
	left: 130px;

	top: 36px;
	width: 75px;
}
.fifth div{
	position: absolute;
	float: left;
	width: 100px;
	height: 100%;
	left: 5px;
	top: -3px;
}
.sixth-left div{
	position: absolute;
	left: 144px;
	top: 36px;
	width: 70px;
}
.sixth-center div{
	position: absolute;
	left: 200px;
	top: 36px;
}
.sixth-right div{
	position: absolute;
	left: 100px;
	top: 36px;
	width: 141px;
}
.seventh a{
	position: absolute;
	background-color: #E9C2A6;
	left:45%;
	top: 50%;
    transform: translate(-50%, -50%)
	width: 123px;
	height: 56px;
	width: 173px;
}
a{
    text-decoration:none;
}
.a-image{
	 width:40px;
	 height:27px;
}
.c-image{
     width:100px;
	 height:37px;    
}
</style>
</head>

<body>

<%	String user_name=(String)session.getAttribute("username1");
	
	String yemian="usercenter";
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
	      <div><p>用户中心</p></div>
     </div>
   </div>
<%
    String sql1="select sex from user where user_name='"+user_name+"';";
	ResultSet rs_user=batch.executeQuery(sql1);
	
	String sex="";
	String url="";
	
	while(rs_user.next()){
	  sex=rs_user.getString(1);
	  
	  //System.out.println(sex);
	  if(sex.equals("男")){
		  url="image/男.jpg";
	  }else{
	  	url="image/女.jpg";
	  }
	}
%>
   <div class="second">
       <div class="second-left">
           <img src="<%=url %>" width="130" height="130" />
       </div>
     <div class="second-center">
       <p>昵称：<%=user_name %></p>     <!-- 用户昵称 -->
	   </div>
	   <div class="second-right">
	      <div><a href="usermessage.jsp?yemian=<%=yemian%>"><p>点击查看个人资料-></p></a></div>
	   </div>
   </div>
  <div class="third">
        <div class="third-left">
		    <div><p>我的订单</p></div>
	    </div>
		<div class="third-right">
		    <div><a href="dingdan.jsp?user_name=<%=user_name %>"><p>查看全部订单-></p></a></div>
		</div>
  </div>
  <a href="daishouhuo.jsp?user_name=<%=user_name %>">
  <div class="forth">
         <div align="center">
		       <p>待收货</p>
		 </div>
	</div></a>
	<div class="interval">
	</div>
	<div class="fifth">
	     <div align="center"><p>我的服务</p> </div>
  </div>
  <div class="sixth">
       <a href="Gouwuche.jsp?user_name=<%=user_name %>">
       <div class="sixth-left" align="center">
	       <div align="center">
		       <p>购物车</p>
		   </div>
	   </div></a>
       <a href="zhanneixin.jsp">
       <div class="sixth-center" align="center">
         <div align="center">
		       <p>站内信</p>
	     </div>
       </div></a>
	   <div class="sixth-right" align="center">
         <div align="center">
		     <p>更多敬请期待…</p>
	     </div>
    </div>
	</div>
    <div class="seventh" >  
    <a href="login.jsp">
      <div align="center"><p>退出登录</p></div></a>
    </div>
</div>
</body>
</html>
