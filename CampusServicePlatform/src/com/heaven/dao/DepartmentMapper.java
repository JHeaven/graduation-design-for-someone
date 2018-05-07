package com.heaven.dao;

import java.util.List;

import com.heaven.model.Department;
/**
 * 部门dao接口
 * @author HEAVEN
 *
 */
public interface DepartmentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Department record);

    int insertSelective(Department record);

    Department selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Department record);

    int updateByPrimaryKey(Department record);
    
    List<Department> selectAllDepartment();
}