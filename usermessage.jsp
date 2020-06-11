<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.sql.ResultSet" %>
<jsp:useBean id="batch" class="com.Batch"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户信息修改</title>
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
.forth{
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
	width: 124px;
}
.top-right div{
	position: absolute;
	top: -12px;
	left: 2px;
	width: 106px;
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

.forth .forth-left{
	position: absolute;
	height: 51px;
	left: 254px;
	top: -8px;
}
.forth .forth-right{
	position: absolute;
	left: 366px;
	top: 5px;
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
.a-image{
	 width:40px;
	 height:27px;
}
.c-image{
     width:100px;
	 height:37px;
}
a{
    text-decoration:none;
}
</style>

</head>

<body>
<%
	String yemian=request.getParameter("yemian"); 
	System.out.println(yemian);
	String tishi="";
	String li="shoppingcenter";
    if(yemian.equals(li)){
    	tishi="返回购物中心";
    }else{
    	tishi="返回用户中心";
    }
%>
<div class="container">
  <div class="first">
	    <img src="image/logo.jpg"   class="c-image" />
	</div>
	<div class="top">
      <div class="top-left">
        <a href="<%=yemian%>.jsp">
        <img  src="image/1.jpg" class="a-image"/></a>
		<div><%=tishi %></div>
     </div>
      <div class="top-right">
	      <div><p>用户信息页面</p></div>
     </div>
   </div>
   <div class="second">
  </div>
  <!-- 赋值给变量，显示在文本框中 -->
  <%
  /*连接数据库,获取用户信息*/
  	String user_name=(String)session.getAttribute("username1");  //传参
  	
	String sql="select * from user where user_name="+"'"+user_name+"'" +";";   //session.getAttribute("nickname")
	ResultSet rs_message=batch.executeQuery(sql);
	String sex="";
	int tel;
	float wallet;
	String address="";
	String password="";
  	while(rs_message.next()){
  		user_name=rs_message.getString(1);
		password=rs_message.getString(2);
  		sex=rs_message.getString(4);
  		tel=rs_message.getInt(5);
  		address=rs_message.getString(6);
 		wallet=rs_message.getFloat(7);
  %>
  <!-- 增加表单 -->
<form action="usermessage_deal.jsp" method="post">
  <div class="third">
    <div class="zi"><p>昵称：</p></div>
    <div class="kuang"><input class="daxiao" type="text" name="user_name" readonly="true" value="<%=user_name%>"/>
    </div>
    </div>
   <div class="third">
     <div class="zi"><p>性别:</p></div>
    <div class="kuang"><input class="daxiao" type="text" maxlength="2" name="sex" value="<%=sex%>"/>
    </div>
   </div>
   <div class="third">
     <div class="zi"><p>联系电话:</p></div>
    <div class="kuang"><input class="daxiao" type="text" maxlength="11" name="tel" value="<%=tel%>"/>
    </div>
   </div>
   <div class="third">
     <div class="zi"><p>钱包余额：</p></div>
    <div class="kuang"><input class="daxiao" type="text" name="wallet" value="<%=wallet%>" readonly="true"/>
    </div>
   </div>
   <div class="third">
     <div class="zi"><p>发货地址:</p></div>
    <div class="kuang"><input class="daxiao" type="text" maxlength="50" name="address" value="<%=address%>"/>
    </div>
   </div>
   <%  }  %>
   <div class="second">
   </div>
  <div class="forth">
    <div class="forth-left">
          <p>修改密码</p>
      </div>
      <div class="forth-right">
      <a href="update_password.jsp?user_name=<%=user_name%>"><img  src="image/4.jpg" class="a-image" /></a>      </div>
  </div>
  <div class="fifth">
     		<input type="submit" class=""  value="保存信息"/>
  </div>
     </form>
</div>
</body>
</html>

