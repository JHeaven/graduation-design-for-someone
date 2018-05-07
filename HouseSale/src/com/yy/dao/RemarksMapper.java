package com.yy.dao;

import java.util.List;

import com.yy.model.Remarks;

public interface RemarksMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Remarks record);

    int insertSelective(Remarks record);

    Remarks selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Remarks record);

    int updateByPrimaryKey(Remarks record);
    
    List<Remarks> selectByTopic(Integer topicId);

}