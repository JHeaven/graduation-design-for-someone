package com.lm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lm.dao.OrderSMapper;
import com.lm.model.OrderS;
import com.lm.service.IOrderSService;

@Service
public class OrderSServiceImpl implements IOrderSService{

	
	@Resource
	OrderSMapper orderSMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return orderSMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(OrderS record) {
		// TODO Auto-generated method stub
		return orderSMapper.insert(record);
	}

	@Override
	public int insertSelective(OrderS record) {
		// TODO Auto-generated method stub
		return orderSMapper.insertSelective(record);
	}

	@Override
	public OrderS selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return orderSMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(OrderS record) {
		// TODO Auto-generated method stub
		return orderSMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(OrderS record) {
		// TODO Auto-generated method stub
		return orderSMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(OrderS record) {
		// TODO Auto-generated method stub
		return orderSMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<OrderS> all(Integer id) {
		// TODO Auto-generated method stub
		return orderSMapper.all(id);
	}

}
