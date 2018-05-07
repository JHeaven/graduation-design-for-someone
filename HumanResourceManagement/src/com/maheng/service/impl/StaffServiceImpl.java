package com.maheng.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.maheng.dao.StaffMapper;
import com.maheng.model.Staff;
import com.maheng.service.IStaffService;

@Service
public class StaffServiceImpl implements IStaffService{

	@Resource
	StaffMapper staffMapper = null;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return staffMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Staff record) {
		// TODO Auto-generated method stub
		return staffMapper.insert(record);
	}

	@Override
	public int insertSelective(Staff record) {
		// TODO Auto-generated method stub
		return staffMapper.insertSelective(record);
	}

	@Override
	public Staff selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return staffMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Staff record) {
		// TODO Auto-generated method stub
		return staffMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(Staff record) {
		// TODO Auto-generated method stub
		return staffMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(Staff record) {
		// TODO Auto-generated method stub
		return staffMapper.updateByPrimaryKey(record);
	}

	@Override
	public Staff login(Staff record) {
		// TODO Auto-generated method stub
		return staffMapper.login(record);
	}

	@Override
	public Staff oversfz(String record) {
		// TODO Auto-generated method stub
		return staffMapper.oversfz(record);
	}

	@Override
	public List<Staff> selectAll() {
		// TODO Auto-generated method stub
		return staffMapper.selectAll();
	}

	@Override
	public List<Staff> top5() {
		// TODO Auto-generated method stub
		return staffMapper.top5();
	}

}
