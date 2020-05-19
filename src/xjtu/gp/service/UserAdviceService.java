package xjtu.gp.service;

import xjtu.gp.dao.UserAdviceDao;
import xjtu.gp.vo.UserAdvice;

public class UserAdviceService {
	public static void addUserAdvice(UserAdvice ua){
		UserAdviceDao.addAdvice(ua.getUsername(), ua.getEmail(), ua.getPhone(), ua.getTitle(), ua.getMsg());
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
