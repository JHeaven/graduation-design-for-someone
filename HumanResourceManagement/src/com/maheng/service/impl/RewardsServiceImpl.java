package com.maheng.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.maheng.dao.RewardsMapper;
import com.maheng.model.Rewards;
import com.maheng.service.IRewardsService;

@Service
public class RewardsServiceImpl implements IRewardsService {

	
	@Resource
	RewardsMapper rewardsMapper = null;
	
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return rewardsMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Rewards record) {
		// TODO Auto-generated method stub
		return rewardsMapper.insert(record);
	}

	@Override
	public int insertSelective(Rewards record) {
		// TODO Auto-generated method stub
		return rewardsMapper.insertSelective(record);
	}

	@Override
	public Rewards selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return rewardsMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Rewards record) {
		// TODO Auto-generated method stub
		return rewardsMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Rewards record) {
		// TODO Auto-generated method stub
		return rewardsMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Rewards> selectById(Integer id) {
		// TODO Auto-generated method stub
		return rewardsMapper.selectById(id);
	}

}
