<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>购物车</title>
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
    #bodyer6{width:1100px;}
    #bodyer7{width:30px;float:left;}
    #bodyer8{width:1070px;float:right;}
    #bodyer9{width:1040px;background:yellow;float:left;}
  #biaotou{width:1040px;height:40px;background:white;}
  #XX3{width:10px;height:40px;background:white;float:left;background:white;}
  #XX4{width:1030px;height:10px;float:right;background:white;}
  #biaotou1{width:1030px;height:30px;float:right;}
  #biaotou2{width:400px;height:30px;float:left;text-align:center;}
  #biaotou3{width:630px;height:30px;float:right;background:white;}
  #biaotou4{width:430px;height:30px;float:right;background:white;}
  #biaotou5{width:230px;height:30px;float:right;background:white;}
  #shangpin{width:1040px;height:40px;background:white;}
  #shangpin1{width:1030px;height:30px;float:right;background:white;}
  #shangpin2{width:400px;height:30px;float:left;background:white;text-align:center;}
  #shangpin3{width:630px;height:30px;float:right;background:white;}
  #shangpin4{width:430px;height:30px;float:right;background:white;}
  #shangpin5{width:230px;height:30px;float:right;background:white;}
  #shangpin6{width:150px;height:30px;float:right;background:white;}
  .input_sub2{width:90px;height:20px;backgroung:white;border:0px;float:left;color:black;cursor:pointer;}
  #zhifu{width:1040px;height:50px;background:white;position:fixed;
			left:50%;margin-left:-520px;text-align:center;line-height:50px;bottom:0;}
  #zhifu2{width:530px;height:50px;background:white;float:right;}
  #zhifu3{width:380px;height:50px;float:right;}
  #zhifu4{width:90px;height:50px;float:right;}
  .input_sub3{width:90px;height:50px;background:yellow;border:0px;float:left;color:black;cursor:pointer;}
</style>
<%!int[] Count;%>
<%!String[] Goodsname; %>
<%!float[] Price; %>
<%!String UserName; %>
<%!int i=0; %>
<%!float money; %>
</head>
<body>
   <% 
       UserName=(String)session.getAttribute("username1");
        try {  
        	String username=request.getParameter("username");
            String password=request.getParameter("password");
            String username1=(String)session.getAttribute("username1");
        Connection con=null;
        Statement stmt=null;
        ResultSet rs=null;
        Class.forName( "com.mysql.jdbc.Driver");
        String 
        url="jdbc:mysql://localhost:3306/shopping-system?useUnicode=true&characterEncoding=gbk";
        con=DriverManager.getConnection(url,"root","root");
        stmt=con.createStatement();

            if(con != null){  
                //out.print("数据库连接成功！");  
               // out.print("<br />");     
                
                String sql = "SELECT cart.goods_name,price,count,wallet FROM cart,goods,user where cart.goods_name=goods.goods_name AND cart.user_name=user.user_name AND cart.user_name='"+UserName+"';"; //查询语句
                stmt = con.createStatement();  
                rs = stmt.executeQuery(sql);  
                i=0;
                Count=new int[100];
                Goodsname=new String[100];
                Price=new float[100];
                while (rs.next()) {
                	money=rs.getFloat("wallet");
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
%>   
  </div>
  <div id="ZT">
    <div id="header">
      <hr width="1100px" size="3px" color="red" align="center">
      <div id="header1">
        <div id="header2"></div>
        <div id="header3">
          <div id="header4">
            <a href="Shouye.jsp"><img src="img/fanhui.png" width="100px" height="30px"></a>
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
            <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;购物车</h1>
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
        <div id="bodyer9">
          <div id="biaotou">
            <div id="XX3"></div>
            <div id="XX4"></div>
            <div id="biaotou1">
              <div id="biaotou2">
                商品名称
              </div>
              <div id="biaotou3">
                单价
                <div id="biaotou4">
                  份数
                  <div id="biaotou5">
                    合计
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
        
          
          <div id="shangpin">
            <%for(int j=0;j<i;j++){ %>
            <div id="XX3"></div>
            <div id="XX4"></div>
            <div id="shangpin1">
              <div id="shangpin2">
                <a href=""><%=Goodsname[j]%></a>
              </div>
              <div id="shangpin3">
                <%=Price[j] %>
                <div id="shangpin4">
                  <%=Count[j] %>
                  <div id="shangpin5">
                    <% out.print(Price[j]*Count[j]); %>
                    <div id="shangpin6">
                     <a href="scgwc.jsp?goods_name=<%=Goodsname[j] %>&user_name=<%=UserName%>">
                       <input type="button"  value="删除">
                     </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <% } %>
          </div>
          
          
        </div>
      </div>
    </div>
  </div>
   <div id="zhifu">
    <div id="zhifu2">
      已选商品<%int sps=0;for(int z=0;z<i;z++){sps=sps+Count[z];}%><%=sps %>件
      <div id="zhifu3">
        合计：<% float s=(float)0.0;
        for(int z=0;z<i;z++){
        	s=s+Price[z]*Count[z];
        }
        %><%=s %>元
        <div id="zhifu4">
          <a href="zhifu.jsp?user_name=<%=UserName%>&needmoney=<%=s%>&money=<%=money%>">
          <input type="submit" value="支付" class="input_sub3">
        </div>
      </div>
    </div>
    
</body>
</html>
