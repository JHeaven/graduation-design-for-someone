package com.maheng.dao;

import java.util.List;

import com.maheng.model.Rewards;

public interface RewardsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Rewards record);

    int insertSelective(Rewards record);

    Rewards selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Rewards record);

    int updateByPrimaryKey(Rewards record);
    
    List<Rewards> selectById(Integer id);
}