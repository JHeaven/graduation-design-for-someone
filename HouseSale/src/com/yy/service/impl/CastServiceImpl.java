package com.yy.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yy.dao.CastMapper;
import com.yy.model.Cast;
import com.yy.service.ICastService;
@Service
public class CastServiceImpl implements ICastService {

	@Resource
	CastMapper castMapper = null;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return castMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Cast record) {
		// TODO Auto-generated method stub
		return castMapper.insert(record);
	}

	@Override
	public int insertSelective(Cast record) {
		// TODO Auto-generated method stub
		return castMapper.insertSelective(record);
	}

	@Override
	public Cast selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return castMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Cast record) {
		// TODO Auto-generated method stub
		return castMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Cast record) {
		// TODO Auto-generated method stub
		return castMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Cast> selectByUserId(Integer id) {
		// TODO Auto-generated method stub
		return castMapper.selectByUserId(id);
	}

	@Override
	public Cast selectXXX(Cast record) {
		// TODO Auto-generated method stub
		return castMapper.selectXXX(record);
	}

}
