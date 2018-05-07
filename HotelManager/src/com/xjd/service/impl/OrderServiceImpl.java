package com.xjd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xjd.dao.OrderMapper;
import com.xjd.model.Order;
import com.xjd.service.IOrderService;

@Service
public class OrderServiceImpl implements IOrderService {

	
	@Resource
	OrderMapper orderMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return orderMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Order record) {
		// TODO Auto-generated method stub
		return orderMapper.insert(record);
	}

	@Override
	public int insertSelective(Order record) {
		// TODO Auto-generated method stub
		return orderMapper.insertSelective(record);
	}

	@Override
	public Order selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return orderMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Order record) {
		// TODO Auto-generated method stub
		return orderMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(Order record) {
		// TODO Auto-generated method stub
		return orderMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(Order record) {
		// TODO Auto-generated method stub
		return orderMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Order> all() {
		// TODO Auto-generated method stub
		return orderMapper.all();
	}

	@Override
	public List<Order> selectTime(Order record) {
		// TODO Auto-generated method stub
		return orderMapper.selectTime(record);
	}

	@Override
	public List<Order> selectByUser(Integer id) {
		// TODO Auto-generated method stub
		return orderMapper.selectByUser(id);
	}

}
