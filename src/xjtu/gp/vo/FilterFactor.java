package xjtu.gp.vo;

public class FilterFactor {
	public int line;
	public String station;
	public int distance;
	// 房屋类型
	public int bedrooms;
	public int livingrooms;
	
	public Range price; // 区间
	public Range area; // 区间
	
	
	/**
	 * -构建筛选条件
	 * @param line 线路名称
	 * @param station 站名
	 * @param distance 距离
	 * @param bedrooms 室数
	 * @param livingrooms 厅数
	 * @param price 价格
	 * @param area 面积
	 */
	public FilterFactor(int line, String station, int distance, int bedrooms, int livingrooms, Range price, Range area) {
		super();
		this.line = line;
		this.station = station;
		this.distance = distance;
		this.bedrooms = bedrooms;
		this.livingrooms = livingrooms;
		this.price = price;
		this.area = area;
	}

	
	@Override
	public String toString() {
		return "FilterFactor [line=" + line + ", station=" + station + ", distance=" + distance + ", bedrooms="
				+ bedrooms + ", livingrooms=" + livingrooms + ", price=" + price + ", area=" + area + "]";
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
