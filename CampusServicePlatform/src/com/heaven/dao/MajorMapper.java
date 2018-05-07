package com.heaven.dao;

import java.util.List;

import com.heaven.model.Major;
/**
 * 专业dao接口
 * @author HEAVEN
 *
 */
public interface MajorMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Major record);

    int insertSelective(Major record);

    Major selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Major record);

    int updateByPrimaryKey(Major record);
    
    List<Major> selectAllMajor();
}