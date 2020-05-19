package xjtu.gp.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import xjtu.gp.jdbcUtil.JdbcUtil;
import xjtu.gp.vo.*;
/**
 * service层对应实现方法或者直接调用dao层的数据库操作结果，dao+mapper层对应于数据库的操作（获取数据，或者增删改查等），controller层对应于后台servlet，属于调用后台方法；
 * @author Shinelon
 *
 */
public class HouseDao {	
	private static ResultSet rs=null;
	
	public static ResultSet findHouse(){
		String sql="select title,img,src,price,type,area,cleanhouseinfo.address,clongitude,clatitude from cleancellinfo,cleanhouseinfo where cleanhouseinfo.cellid=cleancellinfo.cellid order by zfid";
		rs=JdbcUtil.getRs(sql);
		return rs;	
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
