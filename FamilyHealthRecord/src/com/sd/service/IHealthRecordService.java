package com.sd.service;

import java.util.List;

import com.sd.model.HealthRecord;

public interface IHealthRecordService {
	int deleteByPrimaryKey(Integer id);

    int insert(HealthRecord record);

    int insertSelective(HealthRecord record);

    HealthRecord selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(HealthRecord record);

    int updateByPrimaryKey(HealthRecord record);
    
    List<HealthRecord> selectByUser(Integer id);
}
