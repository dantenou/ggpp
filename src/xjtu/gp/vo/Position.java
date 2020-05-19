package xjtu.gp.vo;

import xjtu.gp.common.util.Baidu_API;

/**
 * -位置对象
 * @author Shinelon
 * @version 1.1
 */
public class Position {
	private double longitude;// 经度
	private double latitude; // 纬度
	
	public Position(double longitude, double latitude) {
		super();
		this.longitude = longitude;
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	
	/**
	 * Gets the latitude.
	 *
	 * @return the latitude
	 */
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	/**
	 * -判断本pos距离另一个pos的距离
	 * @param pos
	 * @return double
	 */
	public double distanceTo(Position pos){
		Position x=new Position(longitude,latitude);
		return Position.getDistance(x,pos);	
	}
	
	/**
	 * -市中心：深圳中心区（深圳中央商务区）坐落在广东省深圳市福田区
	 * @param pos
	 * @return  
	 */
	public static double distanceToCenter(Position pos){
		// 广东省深圳市福田区新园路37号
		Position center=new Position(114.06450593766749,22.549184621492437);
		return pos.distanceTo(center);
	}
	
	public double distanceToCenter(){
		return distanceToCenter(new Position(longitude,latitude));
	}
	
	public static Position getPos(String addr){
		return Baidu_API.getPositionByBMap(addr);
	}
	
	@Override
	public String toString() {
		return "Position [longitude=" + longitude + ", latitude=" + latitude + "]";
	}
	
	/**
	 * -判断两个position的距离（米）
	 * @param x
	 * @param y
	 * @return double
	 */
	public static double getDistance(Position x,Position y){
		double EARTH_RADIUS = 6378.137;
		
		double xlng=x.getLongitude();
		double xlat=x.getLatitude();
		double ylng=y.getLongitude();
		double ylat=y.getLatitude();
		
		double radxlat=Position.rad(xlat);
		double radylat=Position.rad(ylat);
		double radlatDiff=radxlat-radylat;
		double radlngDiff=Position.rad(xlng)-Position.rad(ylng);
		
		double distance = 2 * Math.asin(Math.sqrt(
				Math.pow(Math.sin(radlatDiff / 2), 2) + Math.cos(radxlat) * Math.cos(radylat) * Math.pow(Math.sin(radlngDiff / 2), 2)
				));
		distance = distance * EARTH_RADIUS;
		distance = Math.round(distance * 10000d) / 10000d;
		distance = distance * 1000;
		return distance;		
	}
	
	private static double rad(double lnglat) {
		return lnglat * Math.PI / 180.0;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Position x=new Position(109.9534750000,34.2375560000);
		Position y=new Position(108.9534750000,34.2464320000);
//		System.out.println("距离:"+getDistance(x,y)+" -- "+x.distanceTo(y));
		System.out.println(Position.getPos("广东省深圳市福田区福民路"));
		System.out.println(Position.getPos("广东省深圳市福田区福民路105号"));
		System.out.println(Position.distanceToCenter(new Position(114.06154700465763,22.528465912071983)));
		System.out.println(Position.distanceToCenter(new Position(114.0615470046576,22.52846591141758)));
		System.out.println(Position.distanceToCenter(new Position(114.06450593766746,22.549184621262005)));
		 
		
	}

}
