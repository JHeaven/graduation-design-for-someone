package com.asz.service;

import java.util.List;

import com.asz.model.Enterprise;

public interface IEnterpriseService {
	int deleteByPrimaryKey(Integer id);

    int insert(Enterprise record);

    int insertSelective(Enterprise record);

    Enterprise selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Enterprise record);

    int updateByPrimaryKey(Enterprise record);
    List<Enterprise> all();

}
