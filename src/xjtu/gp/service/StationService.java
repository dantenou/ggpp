package xjtu.gp.service;

import java.util.ArrayList;

import xjtu.gp.dao.StationDao;
import xjtu.gp.vo.Position;
import xjtu.gp.vo.Station;

public class StationService {
	
	/**
	 * -返回最近的地铁站
	 * @param pos
	 * @return Station
	 */
	public static Station getClosestStation(Position pos){
		ArrayList<Station>ar=StationDao.getStation();
		double minDistance=1000000000;
		Station closestStation=null;
		for(int i=0;i<ar.size();i++){
			Station s=ar.get(i);
			double dis=pos.distanceTo(new Position(s.getLng(),s.getLat()));
			if(dis<minDistance){
				closestStation =s;
				minDistance=dis;
			}
		}
		return closestStation;	
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		StationService.getClosestStation(Position.getPos("深圳市福田区农科中心农林路53号"));
	}

}
