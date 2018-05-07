package com.lyh.service;

import java.util.List;

import com.lyh.model.Remarks;

public interface IRemarksService {
	int deleteByPrimaryKey(Integer id);

    int insert(Remarks record);

    int insertSelective(Remarks record);

    Remarks selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Remarks record);

    int updateByPrimaryKey(Remarks record);
    
    List<Remarks> selectByTopic(Integer topicId);

}
