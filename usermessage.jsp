<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.sql.ResultSet" %>
<jsp:useBean id="batch" class="com.Batch"></jsp:useBean>
<%
/*连接数据库,获取用户信息*/
    String nickname="纤夫的爱";
	String sql="select * from member_message where nickname="+"'"+nickname+"'" +";";   //session.getAttribute("nickname")
	ResultSet rs_message=batch.executeQuery(sql);
	String id="";
	String name="";
	String sex="";
	String tel="";
	String bank_card="";
	String address="";
	String password="";
%>
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
	border-style: solid;
	border-width: 2px 0px 0px 0px;
	border-color:#D19275;
	magin:0 auto;
	height:35px;
	width:100%;
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
	width: 120px;
}
.top-right div{
	position: absolute;
	top: -8px;
	left: 2px;
}
.third .zi{
	position: absolute;
	left: 252px;
	top: -5px;
	height: 40px;
	width: 110px;
}
.third .zi_a{
	position: absolute;
	height: 40px;
	width: 294px;
	left: 366px;
	top: -3px;
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
	left: 618px;
	top: 82px;
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
<div class="container">
   <div class="first">
	    <img src="image/logo.jpg"   class="c-image" />
	</div>
   <div class="top">
      <div class="top-left">
        <a href="usercenter">
        <img  src="image/1.jpg" width="52" height="8" class="a-image" /></a>
		<div>返回用户中心</div>
     </div>
      <div class="top-right">
	      <div><p>个人资料</p></div>
     </div>
   </div>
   <div class="second">
  </div>
  <!-- 赋值给变量，显示在文本框中 -->
  <%
  	while(rs_message.next()){
  		id=rs_message.getString(1);
  		nickname=rs_message.getString(2);
  		name=rs_message.getString(3);
  		sex=rs_message.getString(4);
  		tel=rs_message.getString(5);
  		bank_card=rs_message.getString(6);
  		address=rs_message.getString(7);
  		password=rs_message.getString(8);
  %>
  <!-- 增加表单 -->
<form action="usermessage_deal.jsp" method="post">
  <div class="third">
     <div class="zi"><p>ID:</p></div>
    <div class="zi_a"><p><%=id%></p>
    </div>
  </div>
  <div class="third">
    <div class="zi"><p>昵称：</p></div>
    <div class="kuang"><input class="daxiao" type="text" value="<%=nickname%>"/>
    </div>
  </div>
   <div class="third">
     <div class="zi"><p>姓名:</p></div>
    <div class="kuang"><input class="daxiao" type="text" name="name" value="<%=name%>"/>
    </div>
   </div>
   <div class="third">
     <div class="zi"><p>性别:</p></div>
    <div class="kuang"><input class="daxiao" type="text" name="sex" value="<%=sex%>"/>
    </div>
   </div>
   <div class="third">
     <div class="zi"><p>联系电话:</p></div>
    <div class="kuang"><input class="daxiao" type="text" name="tel" value="<%=tel%>"/>
    </div>
   </div>
   <div class="third">
     <div class="zi"><p>绑定银行卡:</p></div>
    <div class="kuang"><input class="daxiao" type="text" name="bank_card" value="<%=bank_card%>"/>
    </div>
   </div>
   <div class="third">
     <div class="zi"><p>发货地址:</p></div>
    <div class="kuang"><input class="daxiao" type="text" name="address" value="<%=address%>"/>
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
      <a href="https://www.baidu.com//"><img  src="image/4.jpg" class="a-image" /></a>      </div>
  </div>
  <div class="fifth">
     		<input type="submit" class="anniu"  value="保存信息"/>
  </div>
     </form>
</div>
</body>
</html>

