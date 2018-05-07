package com.lm.service;

import java.util.List;

import com.lm.model.OrderS;

public interface IOrderSService {
	int deleteByPrimaryKey(Integer id);

    int insert(OrderS record);

    int insertSelective(OrderS record);

    OrderS selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OrderS record);

    int updateByPrimaryKeyWithBLOBs(OrderS record);

    int updateByPrimaryKey(OrderS record);
    
    List<OrderS> all(Integer id);

}
