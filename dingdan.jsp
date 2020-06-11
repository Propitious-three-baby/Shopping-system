<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="batch" class="com.Batch"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
 .shanchu{
	position: relative;
	width: 116px;
	height: 36px;
	left: 351px;
	top: 179px;
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
 	width: 321px;
 }
 .third-right .price{
 	position: absolute;
 	left: -189px;
 	top: 80px;
 	width: 250px;
 	height: 54px;
 }
 .third-right .type{
	position: absolute;
	left: -190px;
	top: 9px;
	width: 319px;
 }
 .third-right .create_time{
	position: absolute;
	width: 344px;
	left: -188px;
	top: 156px;
 }
 .third-right .number{
	position: absolute;
	width: 190px;
	height: 42px;
	left: -188px;
	top: 117px;
 }
 .third-right .remark{
	position: absolute;
	left: 139px;
	top: 61px;
	width: 330px;
	height: 94px;
 }
  .third-right .receive{
	position: absolute;
	width: 154px;
	height: 48px;
	left: 137px;
	top: 20px;
 }
  .third-right .shanchu{
 	position: absolute;
 }
 .shanchu input{

 	background-color: #D19275;
 	border-width: 0px;
 	left: 884px;
 	top: -85px;
 	height: 28px;
 	width: 95px;
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
 <%	//String user_name=request.getParameter("user_name"); 
 	//System.out.println(user_name);
 	String user_name="小红";
 %>
 <%
 	String sql1="select * from `order`,goods where order.user_name='"+user_name+"' and order.goods_name=goods.goods_name order by id;";
 	ResultSet rs_dingdan=batch.executeQuery(sql1);
 	int id;
 	String goods_name="";
 	int create_time;
 	String remark="";
 	int number;
 	String receive="";
 	
 	String url="";
 	String price="";
 	String type="";
 	int x=0;
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
 		id=rs_dingdan.getInt(1);
 		System.out.println(id);
 		goods_name=rs_dingdan.getString(2);
 		create_time=rs_dingdan.getInt(3);
 		remark=rs_dingdan.getString(5);
 		number=rs_dingdan.getInt(6);
 		receive=rs_dingdan.getString(7);
		System.out.println(receive);
 		
 		url=rs_dingdan.getString(12);
 		price=rs_dingdan.getString(9);
 		type=rs_dingdan.getString(14);
   %>
   <div class="third">
         <div class="third-left">
         <%
         if(x!=id||x==0){ 
         %>
            <div class="dingdan_id"><p>订单号：<%=id %></p></div>
            <%} %>
            <img src="<%=url %>" class="b-image"/>
         </div>
         <div class="third-right"> 
         <%
         if(x!=id||x==0){ 
         %>
            <div class="shanchu" align="center"><a href="dingdan_deal.jsp?id=<%=id %>&user_name=<%=user_name%>">
                <input type="submit" value="删除订单<%=id%>"/></a>
            </div>
          <%
          		}
         %>
            <div class="name">
              <p>商品名：<%=goods_name %></p>
            </div>
           <div class="price">
               <p>价格:<%=price %><p>
            </div>
            <div class="type">
              <p>类型：<%=type%></p>
            </div>
 	      <div class="create_time">
 	        <p>订单创建时间：<%=create_time %></p>
           </div>
           <div class="number">
              <p>数量：<%=number %></p>
    
            </div>
            <div class="remark">
              <p>备注：<%=remark %></p>
            </div>
<%
        String s="";
		if(receive.equals("T")){
			s="已收货";
		}else{s="未收货";}
%>
            <div class="receive">
              <p><%=s%></p>
            </div>
         </div>

    </div>
    <%   
    	x=id;
 } 
 	%>
  </div>
 </body>
 </html>

