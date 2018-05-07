package com.lyh.dao;

import java.util.List;

import com.lyh.model.Cast;

public interface CastMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Cast record);

    int insertSelective(Cast record);

    Cast selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Cast record);

    int updateByPrimaryKey(Cast record);
    
    List<Cast> selectByUserId(Integer id);
    
    Cast selectXXX(Cast record);
}