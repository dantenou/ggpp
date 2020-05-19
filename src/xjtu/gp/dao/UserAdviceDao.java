package xjtu.gp.dao;

import xjtu.gp.jdbcUtil.JdbcUtil;

public class UserAdviceDao {
	public static void addAdvice(String name,String email,String phone,String title,String msg){
		String sql="insert into feedback(username,email,phone,title,message)values('"
				+name+"','"+email+"','"+phone+"','"+title+"','"+msg+"')";
		
		JdbcUtil.executeSql(sql);
	}
	
	public static void securityAdd(String name,String email,String phone,String title,String msg){
		String sql="insert into feedback(username,email,phone,title,message)values(?,?,?,?,?)";
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		UserAdviceDao.addAdvice("mayijun1", "1870952", "1716@qq.com", "fuck the website", "i dont like it");
	}

}
