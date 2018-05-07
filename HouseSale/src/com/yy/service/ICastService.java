package com.yy.service;

import java.util.List;

import com.yy.model.Cast;

public interface ICastService {
	int deleteByPrimaryKey(Integer id);

    int insert(Cast record);

    int insertSelective(Cast record);

    Cast selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Cast record);

    int updateByPrimaryKey(Cast record);
    
    List<Cast> selectByUserId(Integer id);
    
    Cast selectXXX(Cast record);
}
