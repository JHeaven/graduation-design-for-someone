package com.maheng.service;

import java.util.List;

import com.maheng.model.DepLog;
import com.maheng.model.Department;

public interface IDepService {
	int deleteByPrimaryKey(Integer id);

    int insert(DepLog record);

    int insertSelective(DepLog record);

    DepLog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(DepLog record);

    int updateByPrimaryKey(DepLog record);
    
    List<Department> selectAllDepartment();
    
    Department selectDepNameByPrimaryKey(Integer id);
    
    List<DepLog> selectById(Integer id);


}
