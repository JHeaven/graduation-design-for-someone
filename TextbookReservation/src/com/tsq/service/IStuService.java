package com.tsq.service;

import java.util.List;

import com.tsq.model.Department;
import com.tsq.model.Major;
import com.tsq.model.Stu;

public interface IStuService {
	int deleteByPrimaryKey(Integer id);

    int insert(Stu record);

    int insertSelective(Stu record);

    Stu selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Stu record);

    int updateByPrimaryKeyWithBLOBs(Stu record);

    int updateByPrimaryKey(Stu record);
    
    Stu login(Stu record);

    List<Major> selectAllMajor();
    
    List<Department> selectAllDep();
    
    List<Stu> selectAll();

}
