package com.asz.dao;

import java.util.List;

import com.asz.model.Section;

public interface SectionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Section record);

    int insertSelective(Section record);

    Section selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Section record);

    int updateByPrimaryKey(Section record);
    
    List<Section> selectByUser(Integer id);
    
    List<Section> selectByEn(String enId);
    
}