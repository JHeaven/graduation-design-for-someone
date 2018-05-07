package com.asz.service;

import java.util.List;

import com.asz.model.Ang;

public interface IAngService {
	int deleteByPrimaryKey(Integer id);

    int insert(Ang record);

    int insertSelective(Ang record);

    Ang selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Ang record);

    int updateByPrimaryKeyWithBLOBs(Ang record);

    int updateByPrimaryKey(Ang record);
    
    List<Ang> selectall();
}
