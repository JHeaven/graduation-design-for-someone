package com.yy.service;

import java.util.List;

import com.yy.model.OrderDetail;

public interface IOrderDetailService {
	int deleteByPrimaryKey(Integer id);

    int insert(OrderDetail record);

    int insertSelective(OrderDetail record);

    OrderDetail selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OrderDetail record);

    int updateByPrimaryKey(OrderDetail record);
    
    List<OrderDetail> selectByOrder(Integer id);

}
