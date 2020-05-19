package xjtu.gp.dao;

import java.sql.*;
import java.util.ArrayList;
import xjtu.gp.jdbcUtil.JdbcUtil;

/**
 *-对线路的mysql相关操作
 * @author myj
 * @version 1.1
 *
 */
public class LineDao {
	private static ResultSet rs = null;

	/**
	 * -输入线路，返回车站集合
	 * @param line
	 * @return ArrayList<String> 车站集合
	 */
	public static ArrayList<String> getStationSet(int line) {
		ArrayList<String> ar = new ArrayList<String>();
		String sql = "select metroname from metroinfo where linenum=" + line;
		rs = JdbcUtil.getRs(sql);
		String str = null;
		try {
			while (rs.next()) {
				str = rs.getString("metroname");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String[] s = str.split(" ");
		for (String st : s) {
			ar.add(st);
		}
		// JdbcUtil.closeConnection();
		return ar;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		LineDao ld = new LineDao();
		ld.getStationSet(1);
	}

}
