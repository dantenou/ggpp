package xjtu.gp.common.util;

import xjtu.gp.vo.*;
import java.util.Comparator;

public class ComprehensiveRanking implements Comparator<House>{

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	/**
	 * -综合排序
	 */
	@Override
	public int compare(House o1, House o2) {
		// TODO Auto-generated method stub
		// 价格：0.35;面积：0.2;距离：0.3;性价比：0.15;
		double grade1=0;
		double grade2=0;
		
		/* 价格  */
		if(o1.getPrice()<o2.getPrice()){
			grade1+=0.35;
		}
		else if(o2.getPrice()<o1.getPrice()){
			grade2+=0.35;
		}
		
		/*	面积	*/
		if(o1.getArea()>o2.getArea())
			grade1+=0.2;
		else if(o2.getArea()>o1.getArea())
			grade2+=0.2;
		
		/*	距离地铁站	*/
		if(o1.getClongtitude()<o2.getClongtitude())
			grade1+=0.2;
		else if(o2.getClongtitude()<o1.getClongtitude())
			grade2+=0.2;
		
		/*	性价比	*/
		if(o1.getArea()/o1.getPrice()>o2.getArea()/o2.getPrice())
			grade1+=0.15;
		else if(o1.getArea()/o1.getPrice()<o2.getArea()/o2.getPrice())
			grade2+=0.15;
		
		o1.setClatitude(grade1);
		o2.setClatitude(grade2);
		
		/*	评分	*/
		if(grade1>grade2)
			return 1;
		if(grade1<grade2)
			return -1;
		return 0;
	}

}
