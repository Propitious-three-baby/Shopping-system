<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<jsp:useBean id="batch" class="com.Batch"></jsp:useBean>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>全部订单</title>
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
	height:20px;
	width:100%；
}
.third{
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
.third-left{
	border-style: solid;
	border-width: 0px 2px 0px 0px;
	border-color:#D19275;
	float:left;
	width:40%;
	height:100%;
	position:relative;
}
.third-right{
	 float:right;
	 width:39%;
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
	top: -8px;
	left: 2px;
	width: 93px;
}
.third-left img{
	position: absolute;
	left: 40px;
	top: 20px;
}
.third-left .dingdan_id{
	position: absolute;
	height: 45px;
	left: -1px;
	top: -20px;
}
.third-right .name{
	position: absolute;
	left: -190px;
	top: 46px;
}
.third-right .price{
	position: absolute;
	left: -190px;
	top: 119px;
	width: 157px;
	height: 54px;
}
.third-right .type_{
	position: absolute;
	left: -191px;
	top: 10px;
}
.third-right .commodity_id{
	position: absolute;
	left: -191px;
	top: 82px;
	width: 181px;
}
.third-right .payment{
	position: absolute;
	left: 139px;
	top: 156px;
	width: 181px;
}
.third-right .number{
	position: absolute;
	width: 143px;
	height: 42px;
	left: -190px;
	top: 153px;
}
.third-right .remark{
	position: absolute;
	left: 139px;
	top: 12px;
	width: 330px;
	height: 94px;
}
.third-right input{
	position: absolute;
	background-color: #D19275;
	border-width: 0px;
	left: 415px;
	top: 177px;
	height: 33px;
	width: 86px;
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
<%	String nickname="纤夫的爱"; %><!-- 测试例 -->
<%
	String sql1=" select * from dingdan_message,commodity_message where dingdan_message.user='"+nickname+"' and dingdan_message.commodity_id=commodity_message.commodity_id;";   //session.getAttribute("nickname")
	ResultSet rs_dingdan=batch.executeQuery(sql1);
	String dingdan_id="";
	String user="";
	String payment="";
	String remark="";
	String number="";
	String commodity_id="";
	String receive="";
	String send="";
	
	String image="";
	String commodity_name="";
	String price="";
	String type_="";
%>
<div class="container">
    <div class="first">
	    <img src="image/logo.jpg"   class="c-image" />
	</div>
   <div class="top">
      <div class="top-left">
        <a href="usercenter.jsp">
        <img  src="image/1.jpg" width="52" height="8" class="a-image" /></a>
		<div>返回用户中心</div>
      </div>
      <div class="top-right">
	      <div><p>全部订单</p></div>
     </div>
   </div>
   <div class="second">
   </div>
<%
  	while(rs_dingdan.next()){
  		dingdan_id=rs_dingdan.getString(1);
  		user=rs_dingdan.getString(2);
  		payment=rs_dingdan.getString(3);
  		System.out.println(payment);
  		remark=rs_dingdan.getString(4);
  		number=rs_dingdan.getString(5);
  		commodity_id=rs_dingdan.getString(6);
  		receive=rs_dingdan.getString(7);
  		send=rs_dingdan.getString(8);
  		
  		image=rs_dingdan.getString(10);
  		commodity_name=rs_dingdan.getString(11);
  		price=rs_dingdan.getString(12);
  		type_=rs_dingdan.getString(13);
  %>
  <div class="third">
        <div class="third-left">
           <div class="dingdan_id"><p>订单号：<%=dingdan_id %></p></div>
           <img src="<%=image %>" class="b-image"/>
        </div>
        <div class="third-right">     
           <div class="name">
             <p>商品名：<%=commodity_name %></p>
           </div>
           <div class="price">
              <p>价格:<%=price %><p>
           </div>
           <div class="type_">
             <p>类型：<%=type_ %></p>
           </div>
	      <div class="commodity_id">
            <p>商品号：<%=commodity_id %></p>
           </div>
           <div class="payment">
           <%if(payment.equals("T")){ %>
              <p>已付款</p>
              <%}else{ %>
               <a href="https://www.baidu.com//"><p>未付款，去付款</p></a>
               <%} %>
           </div>
           <div class="number">
             <p>数量：<%=number %></p>
           </div>
           <div class="remark">
               <p>备注：<%=remark %></p>
           </div>
           <a href="dingdan_deal.jsp?dingdan_id=<%=dingdan_id %>">
           <input type="submit" value="删除订单"/></a>
        </div>
   </div>
 <% } %>
</div>
</body>
</html>
