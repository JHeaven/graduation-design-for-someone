package com.gyq.service;

import java.util.List;

import com.gyq.model.Section;

public interface ISectionService {
	int deleteByPrimaryKey(Integer id);

    int insert(Section record);

    int insertSelective(Section record);

    Section selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Section record);

    int updateByPrimaryKey(Section record);
    
    List<Section> selectall();

}
