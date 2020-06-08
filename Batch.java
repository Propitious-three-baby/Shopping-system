package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Batch {
	public Connection conn = null; // 数据库连接对象
	public Statement stmt = null; // statement对象，用于执行mysql语句
	public ResultSet rs = null; // 结果对象集
	// 驱动类的类名
	private static String dbClassName = "com.mysql.jdbc.Driver";
	private static String dbUrl = "jdbc:mysql://localhost:3306/text_1?";
	private static String dbUser = "root"; // 登录mysql的用户名
	private static String dbPwd = "root"; // 登录mysql的密码
	/*
	 * 
	 * 创建与数据库的连接
	 * 
	 */
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName(dbClassName).newInstance(); // 装载数据库驱动
			// 获取数据库连接对象
			conn = DriverManager.getConnection(dbUrl, dbUser, dbPwd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(conn!=null) {
			System.out.println("....");
		}
		if (conn == null) {
			System.err.println("DbConnectionManger.getConnection():" + dbClassName + "\r\n" + dbUrl + "\r\n" + dbUser
					+ "/" + dbPwd);
		}
		return conn;
	}
	/*
	 * 
	 * 更新数据功能
	 * 
	 */
	public int executeUpdate(String sql) {
		int result = 0; // 更新数据的记录条数
		try {
			conn = getConnection(); // 获取数据库连接
			// 创建用于执行SQL语句的statement对象
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			result = stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO: handle exception
			result = 0;
			e.printStackTrace(); // 输出异常信息
		}
		try {
			stmt.close();
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
	}
	/*
	 * 
	 * 根据指定的mysql语句查询数据
	 * 
	 */
	public ResultSet executeQuery(String sql) {
		try {
			conn = getConnection(); // 获取数据库连接
			// 创建用于执行mySQL语句的statement对象
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			rs = stmt.executeQuery(sql); // 执行mySQL语句
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return rs;
	}
	/**
	 * 
	 * 功能：更新数据后获取生成的自动编号
	 */

	public int executeUpdate_id(String sql) {
		int result = 0;
		try { // 捕捉异常
			conn = getConnection(); // 获取数据库连接
			// 创建用于执行SQL语句的Statement对象
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			result = stmt.executeUpdate(sql); // 执行SQL语句
			if (result>0) { // 如果存在数据
				System.out.println("插入成功");
			}
		} catch (SQLException ex) { // 处理异常
			result = 0;
		}
		return result; // 返回获取结果
	}
	/*
	 * 
	 * 关闭数据库
	 * 
	 */
	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (stmt != null) {
				stmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace(System.err);
		}
	}
	public void test() {
		if (getConnection() != null) {
			System.out.println("测试连接成功");
		}
	}
}
