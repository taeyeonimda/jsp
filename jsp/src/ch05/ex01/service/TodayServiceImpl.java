package ch05.ex01.service;

import java.util.Date;

import ch05.ex01.dao.TodayDao;
import ch05.ex01.dao.TodayDaoImpl;

public class TodayServiceImpl implements TodayService{
	private TodayDao todayDao;
	
	public TodayServiceImpl() {
		this.todayDao = new TodayDaoImpl();
	}
	
	@Override
	public Date now() {
		return todayDao.getCurrentDate();
	}
}
