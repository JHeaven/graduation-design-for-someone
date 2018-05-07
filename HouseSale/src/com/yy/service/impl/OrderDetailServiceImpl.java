package com.yy.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yy.dao.OrderDetailMapper;
import com.yy.model.OrderDetail;
import com.yy.service.IOrderDetailService;

@Service
public class OrderDetailServiceImpl implements IOrderDetailService {

	
	@Resource
	OrderDetailMapper orderDetailMapper = null;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return orderDetailMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(OrderDetail record) {
		// TODO Auto-generated method stub
		return orderDetailMapper.insert(record);
	}

	@Override
	public int insertSelective(OrderDetail record) {
		// TODO Auto-generated method stub
		return orderDetailMapper.insertSelective(record);
	}

	@Override
	public OrderDetail selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return orderDetailMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(OrderDetail record) {
		// TODO Auto-generated method stub
		return orderDetailMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(OrderDetail record) {
		// TODO Auto-generated method stub
		return orderDetailMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<OrderDetail> selectByOrder(Integer id) {
		// TODO Auto-generated method stub
		return orderDetailMapper.selectByOrder(id);
	}

}
