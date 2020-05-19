package xjtu.gp.jdbcUtil;

import java.sql.*;

public class JdbcUtil {
	private static String url = "jdbc:mysql://localhost:3306/szzf";
	private static String driverName = "com.mysql.jdbc.Driver";
	private static String userName = "root";
	private static String password = "123456";

	// 定义连接数据库需要的对象
	static Connection connection = null;
	static PreparedStatement statement = null;
	static ResultSet rs = null;

	static {
		try {
			Class.forName(driverName);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	// 获取连接
	public static Connection getConnection() {
		try {
			connection = DriverManager.getConnection(url, userName, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return connection;
	}

	// 关闭连接
	public static void closeConnection() {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else if (statement != null) {
			try {
				statement.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else if (connection != null) {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	// 查询数据
	public static ResultSet getRs(String sql) {
		try {
			statement = JdbcUtil.getConnection().prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			rs = statement.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}

	// 执行sql
	public static void executeSql(String sql) {
		try {
			statement = JdbcUtil.getConnection().prepareStatement(sql);
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		
		/**
		 * 增删改查操作（对classtest数据库操作）
		 */
//		String sql="update class1 set name='三班' where Id=3";
//		JdbcUtil.executeSql(sql);
		
		/**
		 * preparedStatement的获取数据
		 */
//		String sql = "SELECT * FROM zfinfo";
//		ResultSet rs=JdbcUtil.getRs(sql);
//		try {
//			while(rs.next()){
//				System.out.println(rs.getString(1));
//			}
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		/**
		 * 普通Statement的获取数据
		 */
//		try {
//			Statement stmt=JdbcUtil.getConnection().createStatement();
//			String sql = "SELECT * FROM zfinfo";
//          ResultSet rs = stmt.executeQuery(sql);
//        
//            // 展开结果集数据库
//            while(rs.next()){
//                // 通过字段检索
//                String id  = rs.getString(3);
//                String name = rs.getString(1);
//                String url = rs.getString(2);
//    
//                // 输出数据
//                System.out.print("ID: " + id);
//                System.out.print("--站点名称: " + name);
//                System.out.print("--站点 URL: " + url);
//                System.out.print("\n");
//            }
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
	}
}
