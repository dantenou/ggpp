package xjtu.gp.common.util;

import java.util.Comparator;

import xjtu.gp.vo.House;

public class AreaOrder implements Comparator<House>{

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	@Override
	public int compare(House o1, House o2) {
		// TODO Auto-generated method stub
		if(o1.getArea()>o2.getArea())
			return 1;
		if(o1.getArea()<o2.getArea())
			return -1;
		return 0;
	}

}
