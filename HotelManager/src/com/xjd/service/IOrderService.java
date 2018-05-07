package com.xjd.service;

import java.util.List;

import com.xjd.model.Order;

public interface IOrderService {
	int deleteByPrimaryKey(Integer id);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKeyWithBLOBs(Order record);

    int updateByPrimaryKey(Order record);
    
    List<Order> all();
    
    List<Order> selectTime(Order record);
    
    List<Order> selectByUser(Integer id);


}
