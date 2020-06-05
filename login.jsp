<%-- 
    Document   : login
    Created on : 2020-6-5, 9:42:56
    Author     : church刘诗思
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>登录界面</title>
    </head>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        body{
            background-color: #D19275;
        }
        .主体部分{
            display: line-block;
            padding: 20px 0 100px 550px;
            
        }
        #背景{
            background:#E9C2A6;
            margin: 100px; 
        }
        h2{
            padding: 20px 0 100px 500px;
        }
        .size{
            width:100px;
            height: 30px;
        }
    </style>
    <body>
        <div id="背景">
            <h2>欢迎来到吉祥三宝购物网站!</h2>
            <div class="主体部分">
                <img src="吉祥三宝.png" />
                <p>&nbsp;</p>
                <div>
                    <form>
                        账号：<input type="text" name="username"/><br>
                        密码：<input type="password" name="password"/><br>
                        <p>&nbsp;</p>
                        <input type="submit" value="登录" name="login" class="size"/>
                        <input type="submit" value="注册" name="register" class="size"/>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
