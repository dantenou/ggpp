package xjtu.gp.dao;

import java.io.UnsupportedEncodingException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import xjtu.gp.jdbcUtil.JdbcUtil;
import xjtu.gp.vo.*;

public class StationDao {

	private static ResultSet rs=null;
	public static Position getLngLat(String name){
		String sql=" select lng,lat from cleanstationdata where name='"+name+"'";
		rs=JdbcUtil.getRs(sql);
		Position p=null;
		try {
			while(rs.next()){
				p=new Position(rs.getDouble("lng"),rs.getDouble("lat"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return p;		
	}
	
	public static ArrayList<Station> getStation(){
		String sql="select name,lng,lat from cleanstationdata";
		ArrayList<Station> ar=new ArrayList<Station>();
		rs=JdbcUtil.getRs(sql);
		try {
			while(rs.next()){
				Station st=new Station();
				st.setName(rs.getString("name"));
				st.setLng(rs.getDouble("lng"));
				st.setLat(rs.getDouble("lat"));
				ar.add(st);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ar;	
	}
	
	
	public static void main(String[] args) {
//		System.out.println(getLngLat("罗湖"));
		ArrayList<Station>ar=getStation();
		System.out.println(ar.get(166));
	}

}
