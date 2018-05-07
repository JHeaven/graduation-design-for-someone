package com.lyh.service;

import java.util.List;

import com.lyh.model.Order;

public interface IOrderService {
	int deleteByPrimaryKey(Integer id);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);
    int selectMax();
    List<Order> selectByUserId(Integer id);


}
