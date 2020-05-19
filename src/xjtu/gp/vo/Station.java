package xjtu.gp.vo;

public class Station {
	public String name;
	public double lng;
	public double lat;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getLng() {
		return lng;
	}
	public void setLng(double lng) {
		this.lng = lng;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	@Override
	public String toString() {
		return "Station [name=" + name + ", lng=" + lng + ", lat=" + lat + "]";
	}
	
	
}
