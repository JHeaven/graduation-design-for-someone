package com.yy.dao;

import java.util.List;

import com.yy.model.Topic;

public interface TopicMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Topic record);

    int insertSelective(Topic record);

    Topic selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Topic record);

    int updateByPrimaryKeyWithBLOBs(Topic record);

    int updateByPrimaryKey(Topic record);
    
    List<Topic> selectByPage(Integer page);
    
    List<Topic> selectAll();
    
    List<Topic> selectTop5();
}