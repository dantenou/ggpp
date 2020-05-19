package xjtu.gp.common;

import java.util.Comparator;

public class SortUserId implements Comparator<User>{

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	@Override
	public int compare(User o1, User o2) {
		// TODO Auto-generated method stub
		if(o1.getId()>o2.getId())
			return 1;
		return -1;
	}

}
