package com.lm.dao;

import java.util.List;

import com.lm.model.Reserve;

public interface ReserveMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Reserve record);

    int insertSelective(Reserve record);

    Reserve selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Reserve record);

    int updateByPrimaryKey(Reserve record);
    
    List<Reserve> all();
    
    List<Reserve> selectTime();
}