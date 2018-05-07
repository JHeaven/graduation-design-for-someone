package com.tsq.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tsq.dao.SignMapper;
import com.tsq.model.Sign;
import com.tsq.service.ISignService;

@Service
public class SignServiceImpl implements ISignService{

	@Resource
	SignMapper signMapper = null;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return signMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Sign record) {
		// TODO Auto-generated method stub
		return signMapper.insert(record);
	}

	@Override
	public int insertSelective(Sign record) {
		// TODO Auto-generated method stub
		return signMapper.insertSelective(record);
	}

	@Override
	public Sign selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return signMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Sign record) {
		// TODO Auto-generated method stub
		return signMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Sign record) {
		// TODO Auto-generated method stub
		return signMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Sign> selectByUserId(Integer userId) {
		// TODO Auto-generated method stub
		return signMapper.selectByUserId(userId);
	}

	@Override
	public List<Sign> tj() {
		// TODO Auto-generated method stub
		return signMapper.tj();
	}

}
