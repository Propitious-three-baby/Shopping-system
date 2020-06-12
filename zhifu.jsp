<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>支付界面</title>
<style>
  body{background-color:#D19275}
        #ZT{width:1100px;height:600px;margin:0 auto;background:#E9C2A6;}
  #header{width:1100px;height:50px;background:white;}
  #header1{width:1100px;height:30px;background:white;}
  #header2{width:30px;height:30px;float:left;background:white;}
  #header3{width:1070px;height:30px;float:right;background:white;}
  #header4{width:100px;height:30px;float:left;background:white;}
  #header5{width:970px;height:30px;float:right;background:white;}
  #header6{width:840px;height:30px;float:left;}
  #header7{width:129px;height:30px;float:right;border-width:0px 0px 0px 1px;border-style:solid;border-color:#D19275;text-align:center;}
  #XX{width:1100px;height:10px;}
  #bodyer{width:1100px;height:80px;}
  #XX1{width:30px;height:80px;float:left;}
  #bodyer1{width:1070px;height:80px;float:right;}
  #logo{width:200px;height:80px;float:left;}
  #bodyer2{width:870px;height:80px;float:right;}
  #name{width:390px;height:80px;float:left;text-align:center;}
  #bodyer3{width:480px;height:80px;float:right;}
  #bodyer4{width:450px;height:80px;float:left;}
  #XX2{width:450px;height:20px;}
  #search{width:450px;height:40px;background:#E9C2A6;text-align:center;}
  h1{font-size:200%;color:red;}
  .input_text{width:358px;height:38px;border:1px solid black;padding:0px;float:left;font-size:100%;}
  .input_sub{width:90px;height:40px;backgroung:#D19275;border:0px;float:left;color:black;cursor:pointer;}
  #bodyer5{width:1100px;height:20px;}
  #bodyer6{width:1100px;height:400px;background:#E9C2A6;}
  #bodyer7{width:385px;height:400px;float:left;}
  #bodyer8{width:715px;height:400px;float:right;}
  #bodyer9{width:715px;height:100px;}
  #bodyer10{width:715px;height:200px;}
  #bodyer11{width:300px;height:220px;float:left;background:white;}
  #bodyer12{width:300px;height:15px;}
  #bodyer13{width:300px;height:120px;text-align:center;}
    
  .input_sub3{width:90px;height:50px;background:yellow;border:0px;float:left;color:black;cursor:pointer;}
</style>
<%!int[] Count;%>
<%!String[] Goodsname; %>
<%!float[] Price; %>
<%!String UserName; %>
<%!int i=0; %>
<%!String money; %>
<%!int [] Stock=new int[100]; %>
</head>
<body>
   <%  
       UserName=request.getParameter("user_name");
       money=request.getParameter("money");
       String needmoney=request.getParameter("needmoney");
       float money1=Float.parseFloat(money);
       float needmoney1=Float.parseFloat(needmoney);
       if(money1-needmoney1<0){%>
    	  <script type="text/javascript">alert('您的余额不足，请充值后购买！');window.window.location.href='Gouwuche.jsp';</script> 
      <%  }
        try {  
            Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
            String url = "jdbc:mysql://localhost:3306/shopping-system?useSSL=false&serverTimezone=UTC"; //数据库名
            String username = "root";  //数据库用户名
            String password = "root";  //数据库用户密码
            Connection conn = DriverManager.getConnection(url, username, password);  //连接状态

            if(conn != null){  
                //out.print("数据库连接成功！");  
               // out.print("<br />");     
                Statement stmt = null;  
                ResultSet rs = null;  
                String sql = "SELECT cart.goods_name,price,count,wallet,stock FROM cart,goods,user where cart.goods_name=goods.goods_name AND cart.user_name=user.user_name AND cart.user_name='"+UserName+"';"; //查询语句
                stmt = conn.createStatement();  
                rs = stmt.executeQuery(sql);  
                i=0;
                Count=new int[100];
                Goodsname=new String[100];
                Price=new float[100];
                while (rs.next()) {
                	Stock[i]=rs.getInt("stock");
                	Count[i]=rs.getInt("count");
                	Goodsname[i]=rs.getString("goods_name");
                	Price[i]=rs.getFloat("price");
                	i++;
                	}
            }
            else{  
                out.print("连接失败！");  
            }  
            
        }catch (Exception e) {        
            out.print(e);  
        }  
        for(int z=0;z<i;z++){
        	if(Stock[z]<Count[z]){
        		%>
            	this.Response.Write(" <script type="text/javascript">alert('有商品库存不足！');window.window.location.href='Gouwuche.jsp';</script>");<% 
        	}
        }
%>   
  </div>
  <div id="ZT">
    <div id="header">
      <hr width="1100px" size="3px" color="red" align="center">
      <div id="header1">
        <div id="header2"></div>
        <div id="header3">
          <div id="header4">
            <a href="Gouwuche.jsp"><img src="img/fanhuigouwuche.png" width="100px" height="30px"></a>
          </div>
          <div id="header5">
            <div id="header6"></div>
            <div id="header7">
              <a href="usercenter.jsp"><img src="img/gerenzhongxin.png" width="99px" height="30px"></a>
            </div>
          </div>
        </div>
      </div>
      <hr width="1100px" size="3px" color="red" align="center">
    </div>
    <div id="XX"></div>
    <div id="bodyer">
      <div id="XX1"></div>
      <div id="bodyer1">
        <div id="logo">
          <img src="img/logo.png" width="200px" height="80px">
        </div>
        <div id="bodyer2">
          <div id="name">
            <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;订单支付</h1>
          </div>
          <div id="bodyer3">
            <div id="bodyer4">
              <div id="XX2"></div>
              <div id="search">
                <from class="search_from">
                账户昵称：<%=UserName %><br/>
                </from>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div id="bodyer5"></div>
    <div id="bodyer6">
      <div id="bodyer7"></div>
      <div id="bodyer8">
        <div id="bodyer9"></div>
        <div id="bodyer10">
          <div id="bodyer11">
            <div id="bodyer12"></div>
            <div id="bodyer13">
            应付金额：<%=needmoney %><br/><br/>
            账户余额：<%=money %><br/><br/>
            <form action="shengchengdingdan.jsp" method="post">
              请输入密码：<input type="password" name="pwd" size="20"/><br/><br/>
              <textarea name="beizhu" cols="20" rows="2" id="详细描述"></textarea><br/><br/>
              <input type="submit" value="确认支付" />
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
