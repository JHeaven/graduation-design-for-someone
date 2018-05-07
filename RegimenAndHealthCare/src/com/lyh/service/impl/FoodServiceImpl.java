package com.lyh.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.dao.FoodMapper;
import com.lyh.model.Food;
import com.lyh.service.IFoodService;

@Service
public class FoodServiceImpl implements IFoodService {

	@Resource
	FoodMapper foodMapper = null;
	
	
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return foodMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Food record) {
		// TODO Auto-generated method stub
		return foodMapper.insert(record);
	}

	@Override
	public int insertSelective(Food record) {
		// TODO Auto-generated method stub
		return foodMapper.insertSelective(record);
	}

	@Override
	public Food selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return foodMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Food record) {
		// TODO Auto-generated method stub
		return foodMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(Food record) {
		// TODO Auto-generated method stub
		return foodMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(Food record) {
		// TODO Auto-generated method stub
		return foodMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Food> selectAll() {
		// TODO Auto-generated method stub
		return foodMapper.selectAll();
	}

}
