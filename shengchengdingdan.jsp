<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat"%>
<jsp:useBean id="sjk" class="gwcsjk.ljsjk"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title> 生成订单</title>
    </head>
<body>
   <% 
       int[] Count=new int[100];
       String[] Goodsname=new String[100];
       float[] Price=new float[100];;
       int [] Stock=new int[100];
       String UserName;
       int i=0;
       float money=0;
       String password1=""; 
       float needmoney=(float)0.0;
       String pwd=new String(request.getParameter("pwd").getBytes("ISO-8859-1"),"UTF-8");
       String beizhu=new String(request.getParameter("beizhu").getBytes("ISO-8859-1"),"UTF-8");
       UserName=(String)session.getAttribute("username1");
     if(pwd.equals("")){
   %>
    	 <script type="text/javascript">alert('密码不能为空！');window.window.location.href='Gouwuche.jsp';</script>
     <% 
     }
         Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
         String url = "jdbc:mysql://localhost:3306/shopping-system?useSSL=false&serverTimezone=UTC"; //数据库名
         String username = "root";  //数据库用户名
         String password = "root";  //数据库用户密码
         Statement stmt = null;  
         ResultSet rs = null;
         Connection conn = DriverManager.getConnection(url, username, password);  //连接状态
         stmt = conn.createStatement(); 
     try {  
             String sql = "SELECT cart.goods_name,price,count,wallet,password,stock FROM cart,goods,user where cart.goods_name=goods.goods_name AND cart.user_name=user.user_name AND cart.user_name='"+UserName+"';"; //查询语句
             rs = stmt.executeQuery(sql);  
             i=0;
             Goodsname=new String[100];
             while (rs.next()) {
            	 Stock[i]=rs.getInt("stock");
            	password1=rs.getString("password");
             	money=rs.getFloat("wallet");
             	Count[i]=rs.getInt("count");
             	Goodsname[i]=rs.getString("goods_name");
             	Price[i]=rs.getFloat("price");
             	i++;
             	}
     }catch (Exception e) {        
         out.print(e);  
     }   
     out.print(money);
     needmoney=0;
     for(int z=0;z<i;z++){
    	 needmoney=needmoney+Price[z]*Count[z];
     }
     if(!pwd.equals(password1))
    {
         %>
	 <script type="text/javascript">alert('密码错误！');window.window.location.href='Gouwuche.jsp';</script><% 
     }
     else{
    	 for(int z=0;z<i;z++){
    		 int kc=Stock[z]-Count[z];
    		 String sql5="UPDATE `shopping-system`.`goods` SET `stock` = '"+kc+"' WHERE (`goods_name` = '"+Goodsname[z]+"');";
    		 sjk.executeUpdate(sql5);
    	 }
    	 float a=money-needmoney;
    	 String sql2="select id from `order`;";
    	 rs = stmt.executeQuery(sql2);  
         int maxid=0;
         while (rs.next()) {
        	if(rs.getInt("id")>maxid){
        		maxid=rs.getInt("id");
        	}
         	}
         out.print(maxid);
         maxid=maxid+1;
         DateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
         Date date = new Date(System.currentTimeMillis());
         System.out.println(dateFormat.format(date));
 		 String time1=dateFormat.format(date);
    	 out.print(time1);
    	 int time=Integer.parseInt(time1);
    	 for(int z=0;z<i;z++){
    	 String sql3="INSERT INTO `shopping-system`.`order` (`id`, `goods_name`, `creat_time`, `user_name`, `remark`, `number`, `receive`) VALUES ('"+maxid+"', '"+Goodsname[z]+"', '"+time+"', '"+UserName+"', '"+beizhu+"', '"+Count[z]+"', 'f');";
    	 sjk.executeUpdate(sql3);
    	 }
    	 for(int z=0;z<i;z++){
 	    	String sql4="DELETE FROM `shopping-system`.`cart` WHERE (`goods_name` = '"+Goodsname[z]+"') and (`user_name` = '"+UserName+"');";
 	    	sjk.executeUpdate(sql4);
 	     }
    	 String sql="UPDATE `shopping-system`.`user` SET `wallet` = '"+a+"' WHERE (`user_name` = '"+UserName+"');";
    	 sjk.executeUpdate(sql);
    	 %>
    	 <script type="text/javascript">alert('购买成功！');window.window.location.href='Gouwuche.jsp';</script><% 
     }
    %> 
    
                

</body>
</html>
