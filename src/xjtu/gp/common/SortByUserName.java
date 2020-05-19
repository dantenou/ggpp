package xjtu.gp.common;

import java.text.Collator;
import java.util.Comparator;
import java.util.Locale;

public class SortByUserName implements Comparator<User>{

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	@Override
	public int compare(User o1, User o2) {
		// TODO Auto-generated method stub
		Collator instance=Collator.getInstance(Locale.CHINA);
		return instance.compare(o1.getUserName(), o2.getUserName());
	}

}
