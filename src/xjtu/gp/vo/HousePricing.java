package xjtu.gp.vo;

/**
 * @author 马奕俊
 *
 */
public class HousePricing {
	public int HouseArea;
	public int bedrooms;
	public int livingrooms;
	public String addr;
	private int rentEstimated=-1;
	private double disToCenter=-1;
	private double disToStat=-1;
	private String station=null;
	

	
	public HousePricing(int houseArea, int bedrooms, int livingrooms, String addr) {
		super();
		HouseArea = houseArea;
		this.bedrooms = bedrooms;
		this.livingrooms = livingrooms;
		this.addr = addr;
		this.rentEstimated=-1;
	}
	
	public int getHouseArea() {
		return HouseArea;
	}

	public void setHouseArea(int houseArea) {
		HouseArea = houseArea;
	}

	public int getBedrooms() {
		return bedrooms;
	}

	public void setBedrooms(int bedrooms) {
		this.bedrooms = bedrooms;
	}

	public int getLivingrooms() {
		return livingrooms;
	}

	public void setLivingrooms(int livingrooms) {
		this.livingrooms = livingrooms;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public int getRentEstimated() {
		return rentEstimated;
	}

	public void setRentEstimated(int rentEstimated) {
		this.rentEstimated = rentEstimated;
	}

	public double getDisToCenter() {
		return disToCenter;
	}

	public void setDisToCenter(double disToCenter) {
		this.disToCenter = disToCenter;
	}

	public double getDisToStat() {
		return disToStat;
	}

	public void setDisToStat(double disToStat) {
		this.disToStat = disToStat;
	}

	public String getStation() {
		return station;
	}

	public void setStation(String station) {
		this.station = station;
	}
	
	@Override
	public String toString() {
		return "HousePricing [HouseArea=" + HouseArea + ", bedrooms=" + bedrooms + ", livingrooms=" + livingrooms
				+ ", addr=" + addr + ", rentEstimated=" + rentEstimated + ", disToCenter=" + disToCenter
				+ ", disToStat=" + disToStat + ", station=" + station + "]";
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
