package com.heaven.biz;

import java.util.List;

import com.heaven.dao.ChartDao;
import com.heaven.vo.Chart;

public class ChartBiz {
	ChartDao chartDao = new ChartDao();
	
	public int sendMessage(Chart chart){
		return chartDao.add(chart);
	}
	
	public List<Chart> getFirstSite(){
		return chartDao.getFirstSite();
	}
	
	public List<Chart> getNextSite(int id){
		return chartDao.getNextSite(id);
	}
}
