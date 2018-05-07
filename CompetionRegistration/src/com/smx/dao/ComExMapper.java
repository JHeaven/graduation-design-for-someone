package com.smx.dao;

import java.util.List;

import com.smx.model.ComEx;

public interface ComExMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ComEx record);

    int insertSelective(ComEx record);

    ComEx selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ComEx record);

    int updateByPrimaryKeyWithBLOBs(ComEx record);

    int updateByPrimaryKey(ComEx record);
    
    List<ComEx> selectByBelong(Integer belong);
}