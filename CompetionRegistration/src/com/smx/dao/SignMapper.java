package com.smx.dao;

import java.util.List;

import com.smx.model.Sign;

public interface SignMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Sign record);

    int insertSelective(Sign record);

    Sign selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Sign record);

    int updateByPrimaryKey(Sign record);
    
    List<Sign> selectAllByUserId(Integer stuId);
    
    Sign check(Sign record);
    
    List<Sign> selectAllByBelong(Integer stuId);
    
}