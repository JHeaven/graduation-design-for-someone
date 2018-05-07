package com.heaven.dao;

import java.util.List;

import com.heaven.model.Section;
/**
 * °å¿édao½Ó¿Ú
 * 
 * @author HEAVEN
 *
 */
public interface SectionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Section record);

    int insertSelective(Section record);

    Section selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Section record);

    int updateByPrimaryKey(Section record);
    
    List<Section> selectAllByParent(Integer parentId);
}