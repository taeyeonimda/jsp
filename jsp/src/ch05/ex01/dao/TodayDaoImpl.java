package ch05.ex01.dao;

import java.util.Date;

import ch05.ex01.config.Configuration;
import ch05.ex01.dao.mapper.TodayMapper;

public class TodayDaoImpl implements TodayDao{
	private TodayMapper todayMap;
	
	public TodayDaoImpl() {
		this.todayMap = Configuration.getMapper(TodayMapper.class);
	}
	
	@Override
	public Date getCurrentDate() {
		return todayMap.getCurrentDate();
	}
}
