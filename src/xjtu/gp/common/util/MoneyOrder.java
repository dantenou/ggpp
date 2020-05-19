package xjtu.gp.common.util;

import java.util.Comparator;
import xjtu.gp.vo.*;
public class MoneyOrder implements Comparator<House>{

	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	@Override
	public int compare(House o1, House o2) {
		// TODO Auto-generated method stub
		if(o1.getPrice()>o2.getPrice())
			return 1;
		if(o1.getPrice()==o2.getPrice())
			return 0;
		return -1;
	}

}
