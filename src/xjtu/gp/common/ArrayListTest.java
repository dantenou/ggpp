package xjtu.gp.common;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ArrayListTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		User u1 = new User(1,"阿三",23);
		User u2 = new User(3,"布四",23);
		User u3 = new User(2,"拆五",23);
		User u4 = new User(5,"董流",21);
		User u5 = new User(4,"恩八",22);
		
		ArrayList<User> list = new ArrayList<User>();

		list.add(u1);
		list.add(u2);
		list.add(u3);
		list.add(u4);
		list.add(u5);
		
		ArrayList<User>l=(ArrayList<User>) list.clone();
		System.out.println("排序前:");
		for (User user : list) {
			System.out.println(user);
		}
		
		Collections.sort(list, new SortByAge()); //按照年龄排序
//		Collections.sort(list, new SortUserId());
//		Collections.sort(list, new SortByUserName());
		
		System.out.println("排序后:");
		for (User user : list) {
			System.out.println(user);
		}
		
		l.sort(new SortByAge());
		System.out.println("自身排序：");
		for(User u:l){
			System.out.println(u);
		}
		
	}

}
