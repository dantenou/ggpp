package xjtu.gp.common;

import java.util.Comparator;
import java.util.function.Function;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

public class SortByAge implements Comparator<User>{

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	@Override
	public int compare(User o1, User o2) {
		// TODO Auto-generated method stub
		// return 1是大于，-1是小于，0是等于
		if(o1.getAge()>o2.getAge()){
			return 1;
		}
		if(o1.getAge()==o2.getAge()){
			return 0;
		}
		return -1;
	}

	@Override
	public Comparator<User> reversed() {
		// TODO Auto-generated method stub
		return Comparator.super.reversed();
	}

	@Override
	public Comparator<User> thenComparing(Comparator<? super User> other) {
		// TODO Auto-generated method stub
		return Comparator.super.thenComparing(other);
	}

	@Override
	public <U> Comparator<User> thenComparing(Function<? super User, ? extends U> keyExtractor,
			Comparator<? super U> keyComparator) {
		// TODO Auto-generated method stub
		return Comparator.super.thenComparing(keyExtractor, keyComparator);
	}

	@Override
	public <U extends Comparable<? super U>> Comparator<User> thenComparing(
			Function<? super User, ? extends U> keyExtractor) {
		// TODO Auto-generated method stub
		return Comparator.super.thenComparing(keyExtractor);
	}

	@Override
	public Comparator<User> thenComparingInt(ToIntFunction<? super User> keyExtractor) {
		// TODO Auto-generated method stub
		return Comparator.super.thenComparingInt(keyExtractor);
	}

	@Override
	public Comparator<User> thenComparingLong(ToLongFunction<? super User> keyExtractor) {
		// TODO Auto-generated method stub
		return Comparator.super.thenComparingLong(keyExtractor);
	}

	@Override
	public Comparator<User> thenComparingDouble(ToDoubleFunction<? super User> keyExtractor) {
		// TODO Auto-generated method stub
		return Comparator.super.thenComparingDouble(keyExtractor);
	}

}
