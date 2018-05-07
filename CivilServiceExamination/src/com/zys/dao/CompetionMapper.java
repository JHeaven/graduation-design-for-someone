package com.zys.dao;

import java.util.List;

import com.zys.model.Competion;

public interface CompetionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Competion record);

    int insertSelective(Competion record);

    Competion selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Competion record);

    int updateByPrimaryKey(Competion record);
    
    List<Competion> selectAll();
}