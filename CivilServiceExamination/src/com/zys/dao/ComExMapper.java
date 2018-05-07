package com.zys.dao;

import java.util.List;

import com.zys.model.ComEx;

public interface ComExMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ComEx record);

    int insertSelective(ComEx record);

    ComEx selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ComEx record);

    int updateByPrimaryKeyWithBLOBs(ComEx record);

    int updateByPrimaryKey(ComEx record);
    
    List<ComEx> selectByBelong(Integer belong);
    
    List<ComEx> all();
    
}