<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>吉祥三宝主页</title>
<style>
  body{background-color:#D19275}
  #ZT{width:1100px;margin:0 auto;}
  #header{width:1100px;height:90px;background:#E9C2A6;}
  #logo{width:200px;height:80px;float:left;text-align:center;}
  #XX2{width:1100px;height:10px;float:left;}
  #XX{width:900px;height:5px;float:right;}
  #XX3{width:1100px;height:30px;}
  #nav{width:900px;height:40px;background:#E9C2A6;float:right;font-size:20px;font-weight:bold;}
  #k1{float:left;}
  #k2{float:right;}
  #sx{float:center;}
  #XX4{xidth:1100px;height:20px;background:#E9C2A6;}
  #bodyer{width:1100px;height:570px;background:#E9C2A6;float:left;}
  #bodyer1{width:20px;height:550px;background:#E9C2A6;float:left;}
  #bodyer2{width:340px;height:550px;background:#D19275;float:left;text-align:center;}
  #bodyer9{width:340px;height:50px;background:#D19275;}
  #bodyer3{width:1080px;height:550px;background:#D19275;float:right;}
  #bodyer4{width:740px;height:550px;background:#D19275;float:right;}
  #bodyer5{width:720px;height:550px;background:#D19275;float:right;}
  #bodyer6{width:380px;height:550px;background:#D19275;float:right;}
  #bodyer7{width:360px;height:550px;background:#D19275;float:right;}
  #bodyer8{width:20px;height:550px;background:#E9C2A6;float:right;}
  a:link{color:white;text-decoration:none;}
  a:visited{color:white;}
  a:hover{color:white;text-decoration:none;}
  td{font-size:200%}
</style>
</head>

<body>
<%String UserName=(String)session.getAttribute("username1"); %>
<div id="ZT">
  <div id="header">
    <div id="XX2"></div>
    <div id="logo">
       <img src="img/logo.png"/>
   </div>
    <div id="XX"></div>
    <div id="nav">
        <table width="100%" height="40px">
           <tr>
              <td align="center"><a href="shoppingcenter.jsp">购物中心</a></td>
              <td align="center"><a href="Gouwuche.jsp">购物车</a></td>
              <td align="center"><a href="usercenter.jsp">用户中心</a></td>
           </tr>
        </table>
    </div>
  </div>
  <div id="XX3"></div>
  <div id="XX4"></div>
  <div id="bodyer">
    <div id="bodyer1"></div>
    <div id="bodyer3">
      <div id="bodyer2"> 
        <a href="huodong.jsp?promote=1"><img src="https://img.alicdn.com/simba/img/TB1YaolIbr1gK0jSZFDSuv9yVXa.jpg" width="340px" height="550px"></a>
      </div>
      <div id="bodyer4">
        <div id="bodyer1"></div>
        <div id="bodyer5">
          <div id="bodyer2"> 
             <a href="huodong.jsp?promote=2"><img src="https://img.alicdn.com/simba/img/TB1YaolIbr1gK0jSZFDSuv9yVXa.jpg" width="340px" height="550px"></a>
          </div>
          <div id="bodyer6">
            <div id="bodyer1"></div>
            <div id="bodyer7">
              <div id="bodyer2"> 
                <a href="huodong.jsp?promote=3"><img src="https://img.alicdn.com/simba/img/TB1YaolIbr1gK0jSZFDSuv9yVXa.jpg" width="340px" height="550px"></a>
              </div>
              <div id="bodyer8"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>  
</div>
</body>
</html>
