package xjtu.gp.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import xjtu.gp.dao.HouseDao;
import xjtu.gp.dao.StationDao;
import xjtu.gp.vo.FilterFactor;
import xjtu.gp.vo.House;
import xjtu.gp.vo.Position;
import xjtu.gp.vo.Range;

public class HouseService {
	/**
	 * -查询dao层对数据库的信息获取是否为空，然后在进行操作！
	 * 
	 * @param ff
	 * @return
	 */
	public static ArrayList<House> findFitHouse(FilterFactor ff) {
		// 获取筛选条件
		String station = ff.station;
		int distance = ff.distance;
		int bedrooms = ff.bedrooms;
		int livingrooms = ff.livingrooms;
		Range price = ff.price;
		Range area = ff.area;

		System.out.println("HouseService：" + ff.toString());
		ResultSet rs = HouseDao.findHouse();
		ArrayList<House> ar = new ArrayList<House>();
		// 获取全部数据
		try {
			while (rs.next()) {
				House h = new House(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
						rs.getInt(6), rs.getString(7), rs.getDouble(8), rs.getDouble(9));
				ar.add(h);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("查询合适房屋SQL错误");
		}
		// 对筛选条件进行转换&对数据筛选
		/* 线路以及车站处理：视为用户所在位置 */
		String stat = station.split("站")[0];
		// 获取用户出发点
		Position pStat = StationDao.getLngLat(stat);
		/* 距离筛选 */
		if (distance != -1) {
			distance = distance * 1000;
			for (int i = ar.size() - 1; i >= 0; i--) {
				House h = ar.get(i);
				Position pos = new Position(h.clongtitude, h.clatitude);
				if (pStat.distanceTo(pos) > distance) {
					ar.remove(i);
				} else {
					// 距离合适者修改“经度”成“距离”。
					h.clongtitude = pStat.distanceTo(pos);
					ar.set(i, h);

				}
			}
		}

		/* 室数筛选 */
		if (bedrooms != -1) {// 不进行筛选
			if (bedrooms <= 5) {
				for (int i = ar.size() - 1; i >= 0; i--) {
					int tp = Integer.parseInt(ar.get(i).type.split("室")[0]);
					if (tp != bedrooms) {
						ar.remove(i);
					}
				}
			} else {// 卧室数量>5
				for (int i = ar.size() - 1; i >= 0; i--) {
					int tp = Integer.parseInt(ar.get(i).type.split("室")[0]);
					if (tp < bedrooms) {
						ar.remove(i);
					}
				}
			}
		}

		/* 厅数筛选 */
		if (livingrooms != -1) {// 不进行筛选
			if (livingrooms <= 5) {
				for (int i = ar.size() - 1; i >= 0; i--) {
					int tp = Integer.parseInt(ar.get(i).type.split("室")[1].split("厅")[0]);
					if (tp != livingrooms) {
						ar.remove(i);
					}
				}
			} else {// 卧室数量>5
				for (int i = ar.size() - 1; i >= 0; i--) {
					int tp = Integer.parseInt(ar.get(i).type.split("室")[1].split("厅")[0]);
					if (tp < livingrooms) {
						ar.remove(i);
					}
				}
			}
		}

		/* 租房价格筛选 */
		if (price != null) {
			int up = price.up;
			int down = price.down;
			for (int i = ar.size() - 1; i >= 0; i--) {
				if (ar.get(i).price < down || ar.get(i).price > up) {
					ar.remove(i);
				}
			}
		}

		/* 租房面积筛选 */
		if (area != null) {
			int up = area.up;
			int down = area.down;
			for (int i = ar.size() - 1; i >= 0; i--) {
				if (ar.get(i).area < down || ar.get(i).area > up) {
					ar.remove(i);
				}
			}
		}
		return ar;
	}
	
	/**
	 * -对记录进行距离排序（经度已经变为距离）
	 * @param ar 接收来自合适条件房子记录
	 * @return ArrayList<House>
	 */
	public static ArrayList<House>sortByDistance(ArrayList<House>ar){
		House hi;
		House hj;
		House htmp;		
		for(int i=0;i<ar.size();i++){
			for(int j=i+1;j<ar.size();j++){
				if(ar.get(i).getClongtitude()>ar.get(j).getClongtitude()){
					hi=ar.get(i);
					hj=ar.get(j);
					htmp=hi;
					ar.set(i, hj);
					ar.set(j, htmp);				
				}
			}
		}
		return ar;		
	}
	
	/**
	 * -租金排序房屋
	 * @param ar 房屋记录
	 * @return ArrayList<House>
	 * @throws ClassCastException caused by method <code>(ArrayList<House>)ar.Clone()</code> in GetWantedHouseServlet
	 */
	public static ArrayList<House>SortByRent(ArrayList<House>ar){
		House hi;
		House hj;
		House htmp;		
		for(int i=0;i<ar.size();i++){
			for(int j=i+1;j<ar.size();j++){
				if(ar.get(i).getPrice()>ar.get(j).getPrice()){
					hi=ar.get(i);
					hj=ar.get(j);
					htmp=hi;
					ar.set(i, hj);
					ar.set(j, htmp);				
				}
			}
		}
		return ar;	
	}
	
	/**
	 * -面积排序
	 * @param ar
	 * @return
	 * @throws ClassCastException caused by method <code>(ArrayList<House>)ar.Clone()</code> in GetWantedHouseServlet
	 */
	public static ArrayList<House>SortByArea(ArrayList<House>ar){
		House hi;
		House hj;
		House htmp;		
		for(int i=0;i<ar.size();i++){
			for(int j=i+1;j<ar.size();j++){
				if(ar.get(i).getArea()<ar.get(j).getArea()){
					hi=ar.get(i);
					hj=ar.get(j);
					htmp=hi;
					ar.set(i, hj);
					ar.set(j, htmp);				
				}
			}
		}
		return ar;		
	}
	
	/**
	 * -获取最大租金面积的房屋
	 * @param ar
	 * @return
	 * @throws ClassCastException caused by method <code>(ArrayList<House>)ar.Clone()</code> in GetWantedHouseServlet
	 */
	public static ArrayList<House>GetMaxMoneysHouse(ArrayList<House>ar){
		House hi;
		House hj;
		House htmp;		
		for(int i=0;i<ar.size();i++){
			for(int j=i+1;j<ar.size();j++){
				if(ar.get(i).getPrice()<ar.get(j).getPrice()){
					// swap
					hi=ar.get(i);
					hj=ar.get(j);
					htmp=hi;
					ar.set(i, hj);
					ar.set(j, htmp);				
				}
			}
		}
		return ar;	
	}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<House> aa = null;
		aa = HouseService.findFitHouse(
				// 1号线，罗湖站，四公里内，三室，三厅，价格：4000-6000，面积：40-60
				new FilterFactor(1, "罗湖站", 4, -1, -1, new Range(100000, 4000), new Range(600, 40)));
//		HouseService.sortByDistance(aa);
		
//		HouseService.SortByRent(aa);
		
//		HouseService.SortByArea(aa);
		
		HouseService.GetMaxMoneysHouse(aa);

	}

}
