<%-- 
    Document   : management
    Created on : 2020-6-4, 9:11:59
    Author     : church刘诗思
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>

    <head>
            <meta charset="utf-8">
            <title>管理界面</title>
            <style type="text/css">
			body{
				background-color: #D19275;
                                padding: 20px 70px;
				
			}
			.头像{
				float:left;
			}
			input{
                                width: 50px;
                                height: auto;
			}
			ul{
				list-style-type: none; 
			}
			.确定{
				width:50px;
			}
			.管理{
				color:#60C;
			}
			#保存{
				width:auto;
				height:50px;
			}
                        #管理页面{
                              background:#E9C2A6;
                              padding: 10px 150px;
                              
                        }
		</style>
    </head>

    
        <%
        String username1=(String)session.getAttribute("username1");
        Connection con=null;
        Statement stmt=null;
        ResultSet rs=null;
        String pic;
        Class.forName( "com.mysql.jdbc.Driver");
        String 
        url="jdbc:mysql://localhost:3306/shopping-system?useUnicode=true&characterEncoding=gbk";
        con=DriverManager.getConnection(url,"root","root");
        stmt=con.createStatement();

       String sql="select * from user where user_name='"+username1+"'";
        rs=stmt.executeQuery(sql);
        while(rs.next()){
        %>

        <div id="管理页面">
	<h3 class="欢迎词"><%=username1%>管理员，您好！欢迎来到管理中心！</h3>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
        <div>
        <p class="头像">头像:</p>
	<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="背景图片1.jpg" width="109" height="92" alt="头像" ></p>
        
        <p>昵称：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("user_name") %> </p>
        <%
            }
       %>
            
        <p class="管理">查看订单信息: </p>
        <form method="get" action="manage-order.jsp">
	    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请输入需要查看得时间:
                    <input type="text" name="syear"/>年<input type="text" name="smonth"/>月<input type="text" name="sday"/>日至
                <input type="text" name="eyear" />年<input type="text" name="emonth"/>月<input type="text" name="eday"/>日
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="确定"  />
        </form>
    
        <p class="管理">商品管理：</p>
        <form method="get" action="Commodity-information.jsp">
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一、商品添加：
            <ul>
                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 商品名称： 
                    <input name="gname" type="text" id="商品名称">
                    商品价格：
                    <input type="text" name="gprice" id="商品价格">
                    商品数量：
                    <input type="text" name="gcount" id="商品数量">
                    商品图片地址：
                     <input type="text" name="gurl" id="商品图片地址">
                    商品类型：
                     <input type="text" name="gtype" id="类型">
                 </li>
                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商品详细信息：</li>
                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <textarea name="gdescribe" cols="30" rows="5" id="详细描述"></textarea>
                  <input type="submit" name="提交" id="提交" value="添加">
                </li>
            </ul>
        </form>
        <form method="get" action="goods-delete.jsp">
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;二、商品删除和商品设置：<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            需要删除或设置的商品名称：<input type="text" name="ask_name"/><input type="submit" value="查询"/>
        </form>
        <a href="http://localhost:8084/web/Shouye.jsp"><img src="返回.png"/></a>
        </div>
        </div>
    


