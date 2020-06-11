<%-- 
    Document   : register
    Created on : 2020-6-4, 16:51:43
    Author     : church刘诗思
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>注册界面</title>
        <style>
            *{
                margin: 0;
                padding: 0;
            }
            body{
                background-color: #D19275;
            }
            #out{
                background:#E9C2A6;
                margin: 70px;
            }
            #inner{
                padding: 20px 100px;
            }
            h2{
                padding: 20px;
            }
            
            label{
		display: inline-block;
		width:100px;
		height: 40px;
		line-height: 40px;
		text-align: justify;
		text-align-last: justify;
	    }
        </style>
    </head>
    <body>
        <div id="out">
            <h2>您好！欢迎来到注册页面！请填好以下信息，感谢配合！</h2>
            <div id="inner">
                <form action="registercheck.jsp" method="post" >
                    <div><label>昵称：</label><input type="text" name="username" />* </div>
                    <div><label>性别：</label><input type="radio" name="sex" />男&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="sex"/>女*</div>
                    <div><label>密码：</label><input type="password" name="password"/>(密码不得少于十位)* </div>
                    <div><label>请确认密码：</label><input type="password" name="checkpassword"/>* </div>
                    <div><label>联系电话：</label><input type="text" name="tel"/> *</div>
                    <div><label>收货地址：</label><input type="text" name="address"/> *</div>
                     <div>说明：带有*的为必选项</div>
                     <p>&nbsp;</p>
                     <div><input type="submit" value="注册并登录"/></div>
                </form>
            </div>
        </div>

    </body>
</html>
