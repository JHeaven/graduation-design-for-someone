package com.asz.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.asz.dao.AngMapper;
import com.asz.model.Ang;
import com.asz.service.IAngService;

@Service
public class AngServiceImpl implements IAngService {

	
	@Resource
	AngMapper angMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Ang record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Ang record) {
		// TODO Auto-generated method stub
		return angMapper.insertSelective(record);
	}

	@Override
	public Ang selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return angMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Ang record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(Ang record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Ang record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Ang> selectall() {
		// TODO Auto-generated method stub
		return angMapper.selectall();
	}

}
