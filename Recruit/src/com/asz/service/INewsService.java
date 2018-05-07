package com.asz.service;

import java.util.List;

import com.asz.model.News;

public interface INewsService {
	 int deleteByPrimaryKey(Integer id);

	    int insert(News record);

	    int insertSelective(News record);

	    News selectByPrimaryKey(Integer id);

	    int updateByPrimaryKeySelective(News record);

	    int updateByPrimaryKeyWithBLOBs(News record);

	    int updateByPrimaryKey(News record);
	    
	    List<News> selectall();
	    List<News> selectTop6();
}
