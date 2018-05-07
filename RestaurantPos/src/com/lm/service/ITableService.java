package com.lm.service;

import java.util.List;

import com.lm.model.Table;

public interface ITableService {
	int deleteByPrimaryKey(Integer id);

    int insert(Table record);

    int insertSelective(Table record);

    Table selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Table record);

    int updateByPrimaryKey(Table record);
    
    List<Table> all();
}
