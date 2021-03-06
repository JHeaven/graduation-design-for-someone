package com.tsq.dao;

import java.util.List;

import com.tsq.model.Sign;

public interface SignMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Sign record);

    int insertSelective(Sign record);

    Sign selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Sign record);

    int updateByPrimaryKey(Sign record);
    
    List<Sign> selectByUserId(Integer userId);
    
    List<Sign> tj();
}