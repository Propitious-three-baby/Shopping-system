package gwcsjk;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class ljsjk {
	Connection connection = null;
	ResultSet rs = null;

	//mysql数据库url
	String userMySql="root"; 
	String passwordMySql="root";
	String urlMySql = "jdbc:mysql://localhost:3306/shopping-system?useSSL=false&serverTimezone=UTC";
	
	
	public ljsjk() {
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			System.out.println("mysql数据库驱动加载成功");

		}
		catch(java.lang.ClassNotFoundException e) {
			e.printStackTrace();
		}
	}


	public void connect(){
		try{
			connection = DriverManager.getConnection(urlMySql,userMySql,passwordMySql);  
			if(connection!=null){
	            System.out.println("数据库连接成功");
	        }
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void disconnect(){
		try{
			if(connection != null){
				connection.close();
				connection = null;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}


	public ResultSet executeQuery(String sql) {
		try {
			System.out.println("executeQuery(). sql = " + sql);
			
			PreparedStatement pstm = connection.prepareStatement(sql);
			// 执行查询
			rs = pstm.executeQuery();
		} 
		catch(SQLException ex) { 
			ex.printStackTrace();
		}
		return rs;
	}
	
	public int executeUpdate(String sql) {
		int count = 0;
		connect();
		try {
			Statement stmt = connection.createStatement();
			count = stmt.executeUpdate(sql);
		} 
		catch(SQLException ex) { 
			System.err.println(ex.getMessage());		
		}
		disconnect();
		return count;
	}
}
