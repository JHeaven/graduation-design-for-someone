package com.lm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lm.dao.ReserveMapper;
import com.lm.model.Reserve;
import com.lm.service.IReserveService;


@Service
public class ReserveServiceImpl implements IReserveService {

	
	@Resource
	ReserveMapper reserveMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return reserveMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Reserve record) {
		// TODO Auto-generated method stub
		return reserveMapper.insert(record);
	}

	@Override
	public int insertSelective(Reserve record) {
		// TODO Auto-generated method stub
		return reserveMapper.insertSelective(record);
	}

	@Override
	public Reserve selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return reserveMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Reserve record) {
		// TODO Auto-generated method stub
		return reserveMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Reserve record) {
		// TODO Auto-generated method stub
		return reserveMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Reserve> all() {
		// TODO Auto-generated method stub
		return reserveMapper.all();
	}

	@Override
	public List<Reserve> selectTime() {
		// TODO Auto-generated method stub
		return reserveMapper.selectTime();
	}

}
