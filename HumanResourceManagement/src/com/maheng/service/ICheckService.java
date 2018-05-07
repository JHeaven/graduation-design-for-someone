package com.maheng.service;

import java.util.List;

import com.maheng.model.Check;

public interface ICheckService {
	int deleteByPrimaryKey(Integer id);

    int insert(Check record);

    int insertSelective(Check record);

    Check selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Check record);

    int updateByPrimaryKey(Check record);
    
    List<Check> selectAllofIng();

}
