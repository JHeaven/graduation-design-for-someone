package com.asz.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.asz.dao.EnterpriseMapper;
import com.asz.model.Enterprise;
import com.asz.service.IEnterpriseService;

@Service
public class EnterpriseServiceImpl implements IEnterpriseService {

	@Resource
	EnterpriseMapper enterpriseMapper;

	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return enterpriseMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Enterprise record) {
		// TODO Auto-generated method stub
		return enterpriseMapper.insert(record);
	}

	@Override
	public int insertSelective(Enterprise record) {
		// TODO Auto-generated method stub
		return enterpriseMapper.insertSelective(record);
	}

	@Override
	public Enterprise selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return enterpriseMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Enterprise record) {
		// TODO Auto-generated method stub
		return enterpriseMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Enterprise record) {
		// TODO Auto-generated method stub
		return enterpriseMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Enterprise> all() {
		// TODO Auto-generated method stub
		return enterpriseMapper.all();
	}
	
	
}
