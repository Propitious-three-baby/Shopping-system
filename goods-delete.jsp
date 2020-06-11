<%-- 
    Document   : Details
    Created on : 2020-6-4, 9:55:32
    Author     : church刘诗思
--%>
<%@page import="javafx.scene.input.KeyCode"%>
<%@page import="java.lang.Integer"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html>
	<head>
        <meta charset="utf-8">
        <title>详情页面</title>
        <style>
            *{
                margin: 0;
                padding: 0;
            }
            body{
		background-color: #D19275;
		padding:20px 70px;
            }
            #nav{
                background:white;
                font-size:20px;
                border: 1px solid red;
            }
            #main{
		width:auto;
		height:500px;
                position: relative;
                padding: 20px;
            }
            img{
		width:50%;
                height:100%;
		float:left;
            }
            .out{
		height:20%;
		width: 50%;
		text-align: center;
		float: left;
            }
            .商品{
                  position: relative; 
                  top: 50%; 
            }
            #提交{
                  width:100px;
                  height:50px;
            }
            #详情页{
                    background:#E9C2A6;
                    position: relative;
                    margin: 0;
            }
             #详细介绍{
                    padding: 20px;
            }
            table{
                width: 100%;
            }

        </style>
    </head>
    <body>
        <div id="详情页">
        <div id="nav">
            <table>
            	<tr>
                    <td  width="200px"><a href="http://localhost:8084/web/management.jsp"><img src="返回.png"></a></td>
                     <td align="left">商品详情页</td>
                </tr>
            </table>
        </div>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <%
            String goods=request.getParameter("ask_name");
            Connection con=null;
        Statement stmt=null;
        ResultSet rs=null;
        Class.forName( "com.mysql.jdbc.Driver");
        String 
        url="jdbc:mysql://localhost:3306/shopping-system?useUnicode=true&characterEncoding=gbk";
        con=DriverManager.getConnection(url,"root","root");
        stmt=con.createStatement();

         
         String sql="select * from goods where goods_name='"+ goods+"'";
        rs=stmt.executeQuery(sql);
        while(rs.next()){
        %>

            <div id="main" >
        	<img src="<%=rs.getString("url")%>" />
            <div class="out" >
                <div class="商品" ><h1><%=rs.getString("goods_name")%></h1></div>
            </div>
            <div class="out">
            	<div class="商品" >商品价格：<%=rs.getString("price")%></div>
            </div>
            <div class="out">
            	<div class="商品" >商品详细描述：<%=rs.getString("des")%></div>
            </div>
            <div class="out">
            	<div class="商品" >商品库存量：<%=rs.getString("stock")%></div>
            </div>
            <div class="out">

                <a href="set_active.jsp?goods_id=1&goods_name=<%=rs.getString("goods_name")%>"><button class="商品" id="提交" >设为每周新品</button></a>
                <a href="set_active.jsp?goods_id=2&goods_name=<%=rs.getString("goods_name")%>"><button class="商品" id="提交" >设为必买榜单</button></a>
                <a href="set_active.jsp?goods_id=3&goods_name=<%=rs.getString("goods_name")%>"><button class="商品" id="提交" >设为超u惠</button></a>
                <a href="set_active.jsp?goods_id=4&goods_name=<%=rs.getString("goods_name")%>"><button class="商品" id="提交" >删除</button></a>
                <a href="set_active.jsp?goods_id=5&goods_name=<%=rs.getString("goods_name")%>"><button class="商品" id="提交" >取消活动设置</button></a>
            </div>
            </div>
            <p>&nbsp;</p>
            <%
                }
            %>
        </div>
    </body>
</html>
