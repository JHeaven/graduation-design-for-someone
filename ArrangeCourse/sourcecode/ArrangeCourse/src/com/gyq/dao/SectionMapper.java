package com.gyq.dao;

import java.util.List;

import com.gyq.model.Section;

public interface SectionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Section record);

    int insertSelective(Section record);

    Section selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Section record);

    int updateByPrimaryKey(Section record);
    
    List<Section> selectall();
    
}