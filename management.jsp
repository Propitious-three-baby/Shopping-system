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
        Connection con=null;
        Statement stmt=null;
        ResultSet rs=null;
        String pic;
        Class.forName( "com.mysql.jdbc.Driver");
        String 
        url="jdbc:mysql://localhost:3306/shopping-system?useUnicode=true&characterEncoding=gbk";
        con=DriverManager.getConnection(url,"root","root");
        stmt=con.createStatement();

       String sql="select * from noname";
        rs=stmt.executeQuery(sql);
        while(rs.next()){
        %>

        <div id="管理页面">
	<h3 class="欢迎词">XXX管理员，您好！欢迎来到管理中心！</h3>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
        <div>
        <p class="头像">头像:</p>
	<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src=<%=rs.getString("头像链接") %> width="109" height="92" alt="头像" ></p>
        
        <p>昵称：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("姓名") %> </p>
        <%
            }
       %>
            
            
        <p class="管理">查看订单信息: </p>
        <form name="time">  
	    <ul>
                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请输入需要查看得时间:
                    <input type="text" name="syear"/>年<input type="text" name="smonth"/>月<input type="text" name="sday"/>日至
                    <input type="text" name="eyear" />年<input type="text" name="emonth"/>月<input type="text" name="eday"/>日
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="确定" class="确定" onclick="subs();" />
                 </li>
                <li>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <textarea name="订单信息" cols="50" rows="8" id="订单信息"></textarea>
                </li>
            </ul>
        </form>
        <script>
            var start_time=0;
             var end_time=0;
            function subs()
            {
                var ls;
                 ls=time.syear.value;
                    start_time+=parseInt(ls);
                ls=time.smonth.value;
                    start_time=start_time*100;
                    start_time+=parseInt(ls);
                ls=time.sday.value;
                   start_time=start_time*100;
                    start_time+=parseInt(ls);
               ls=time.eyear.value;
                end_time+=parseInt(ls);
                ls=time.emonth.value;
               end_time=end_time*100;
                end_time+=parseInt(ls);
                ls=time.eday.value;
                end_time=end_time*100;
                end_time+=parseInt(ls);

                 <%
                    sql="select * from 订单";
                    rs=stmt.executeQuery(sql);
                    while(rs.next()){
                 %>
                 document.getElementById("订单信息").innerHTML= 12;
                <%
                   }
                    rs.close();
                   stmt.close();
                   con.close();
               %>
                
                
            }
            
         
            
            
            
        </script>
        
        
         
        <p class="管理">商品管理：</p>
        <form>
            <ul>
                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 商品名称： 
                    <input name="商品名称" type="text" id="商品名称">
                    商品价格：
                    <input type="text" name="商品价格" id="商品价格">
                    商品尺码：
                    <input type="text" name="商品尺码" id="商品尺码">
                    商品数量：
                    <input type="text" name="商品数量" id="商品数量">
                 </li>
                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商品详细信息：</li>
                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <textarea name="详细描述" cols="30" rows="5" id="详细描述"></textarea>
                  <input type="submit" name="提交" id="提交" value="添加" >
                  <input type="submit" name="删除" id="删除" value="删除">
                </li>
            </ul>
            <input type="submit" name="保存" id="保存" value="返回并保存" >
        </form>
        </div>
        </div>
    


