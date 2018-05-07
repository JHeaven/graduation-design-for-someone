package com.lyh.service;

import java.util.List;

import com.lyh.model.Food;

public interface IFoodService {
	int deleteByPrimaryKey(Integer id);

    int insert(Food record);

    int insertSelective(Food record);

    Food selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Food record);

    int updateByPrimaryKeyWithBLOBs(Food record);

    int updateByPrimaryKey(Food record);
    
    List<Food> selectAll();
}
