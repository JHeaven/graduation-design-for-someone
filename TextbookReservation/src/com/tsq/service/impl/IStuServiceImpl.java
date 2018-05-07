package com.tsq.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tsq.dao.DepartmentMapper;
import com.tsq.dao.MajorMapper;
import com.tsq.dao.StuMapper;
import com.tsq.model.Department;
import com.tsq.model.Major;
import com.tsq.model.Stu;
import com.tsq.service.IStuService;

@Service
public class IStuServiceImpl implements IStuService {

	@Resource
	StuMapper stuMapper = null;
	
	@Resource
	MajorMapper majorMapper = null;
	
	@Resource
	DepartmentMapper departmentMapper  = null;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return stuMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Stu record) {
		// TODO Auto-generated method stub
		return stuMapper.insert(record);
	}

	@Override
	public int insertSelective(Stu record) {
		// TODO Auto-generated method stub
		return stuMapper.insertSelective(record);
	}

	@Override
	public Stu selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return stuMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Stu record) {
		// TODO Auto-generated method stub
		return stuMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(Stu record) {
		// TODO Auto-generated method stub
		return stuMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(Stu record) {
		// TODO Auto-generated method stub
		return stuMapper.updateByPrimaryKey(record);
	}

	@Override
	public Stu login(Stu record) {
		// TODO Auto-generated method stub
		return stuMapper.login(record);
	}

	@Override
	public List<Major> selectAllMajor() {
		// TODO Auto-generated method stub
		return majorMapper.selectAll();
	}

	@Override
	public List<Department> selectAllDep() {
		// TODO Auto-generated method stub
		return departmentMapper.selectAll();
	}

	@Override
	public List<Stu> selectAll() {
		// TODO Auto-generated method stub
		return stuMapper.selectAll();
	}

}
