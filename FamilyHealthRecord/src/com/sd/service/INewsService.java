package com.sd.service;

import java.util.List;

import com.sd.model.News;

public interface INewsService {
	int deleteByPrimaryKey(Integer id);

    int insert(News record);

    int insertSelective(News record);

    News selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(News record);

    int updateByPrimaryKey(News record);
    
    List<News> selectAll();
    
    List<News> selectTop8();
}
