package com.maheng.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.maheng.dao.DepLogMapper;
import com.maheng.dao.DepartmentMapper;
import com.maheng.model.DepLog;
import com.maheng.model.Department;
import com.maheng.service.IDepService;
@Service
public class DepServiceImpl implements IDepService {

	@Resource
	DepLogMapper depLogMapper = null;
	
	@Resource
	DepartmentMapper departmentMapper = null;
	
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return depLogMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(DepLog record) {
		// TODO Auto-generated method stub
		return depLogMapper.insert(record);
	}

	@Override
	public int insertSelective(DepLog record) {
		// TODO Auto-generated method stub
		return depLogMapper.insertSelective(record);
	}

	@Override
	public DepLog selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return depLogMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(DepLog record) {
		// TODO Auto-generated method stub
		return depLogMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(DepLog record) {
		// TODO Auto-generated method stub
		return depLogMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Department> selectAllDepartment() {
		// TODO Auto-generated method stub
		return departmentMapper.selectAll();
	}

	@Override
	public Department selectDepNameByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return departmentMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<DepLog> selectById(Integer id) {
		// TODO Auto-generated method stub
		return depLogMapper.selectById(id);
	}

}
