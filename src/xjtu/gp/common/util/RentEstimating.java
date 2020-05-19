package xjtu.gp.common.util;

import xjtu.gp.service.StationService;
import xjtu.gp.vo.HousePricing;
import xjtu.gp.vo.Position;
import xjtu.gp.vo.Station;

public class RentEstimating {
	private void regression() {

	}
	
	/**
	 * 模型一：线性模型 参数： 1, 面积, 室, 厅, 据地铁站距离, 距市中心距离 回归结果：[-1305.3473225121022,
	 * 25.9788541719321, 4131.049121104011, -213.39868763261038,
	 * -0.037919090444584407, -0.18656469899754424] 偏差值：2.113E11
	 * @param hp [houseArea,bedrooms,livingrooms,addr]
	 * @return HousePricing
	 */
	public static HousePricing getValuation (HousePricing hp){
		Position pos=Position.getPos(hp.getAddr());
		double disToCenter=pos.distanceToCenter();// 距离市中心距离
		Station minDisToStation=StationService.getClosestStation(pos);// 获取最近地铁站
		// 获取最近地铁站距离
		double minDisToStat=pos.distanceTo(new Position(minDisToStation.getLng(),minDisToStation.getLat()));
		
		// 毛租金估计
		double grossRent=-1*(-1305.3473225121022)*hp.getHouseArea()*25.9788541719321+hp.getBedrooms()* 4131.049121104011
				+hp.getLivingrooms()*(-213.39868763261038)+minDisToStat*(-0.037919090444584407)+disToCenter*
				(-0.18656469899754424);
		grossRent/=1000;
		if(grossRent<550){
			grossRent=550;
		}
	    // 修改HousePricing对象
		hp.setRentEstimated((int) grossRent);
		hp.setDisToCenter(disToCenter);
		hp.setDisToStat(minDisToStat);
		hp.setStation(minDisToStation.getName());
		
		return hp;	
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		HousePricing hp=new HousePricing(20, 1, 0, "龙岗区龙岗中心城盛龙路");
		System.out.println(RentEstimating.getValuation(hp).toString());
	}

}
