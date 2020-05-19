package xjtu.gp.common;
import java.util.Comparator;

import xjtu.gp.vo.House;
public abstract class SortMoney implements Comparator<House>{

	@Override
	public int compare(House o1, House o2) {
		// TODO Auto-generated method stub
		if(o1.getPrice()<o2.getPrice())
			return 1;
		return -1;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
