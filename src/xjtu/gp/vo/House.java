package xjtu.gp.vo;

public class House {
	public String title;
	public String img;
	public String src;
	public int price;
	public String type;// 房屋 x室y厅
	public int area;
	public String address;
	public double clongtitude;// 可用来当做距离展示
	public double clatitude;

	public House(String title, String img, String src, int price, String type, int area, String address,
			double clongtitude, double clatitude) {
		super();
		this.title = title;
		this.img = img;
		this.src = src;
		this.price = price;
		this.type = type;
		this.area = area;
		this.address = address;
		this.clongtitude = clongtitude;
		this.clatitude = clatitude;
	}

	@Override
	public String toString() {
		return "House [title=" + title + ", img=" + img + ", src=" + src + ", price=" + price + ", type=" + type
				+ ", area=" + area + ", address=" + address + ", clongtitude=" + clongtitude + ", clatitude="
				+ clatitude + "]";
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getSrc() {
		return src;
	}

	public void setSrc(String src) {
		this.src = src;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getArea() {
		return area;
	}

	public void setArea(int area) {
		this.area = area;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public double getClongtitude() {
		return clongtitude;
	}

	public void setClongtitude(double clongtitude) {
		this.clongtitude = clongtitude;
	}

	public double getClatitude() {
		return clatitude;
	}

	public void setClatitude(double clatitude) {
		this.clatitude = clatitude;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
