package com.lm.dao;

import java.util.List;

import com.lm.model.OrderS;

public interface OrderSMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OrderS record);

    int insertSelective(OrderS record);

    OrderS selectByPrimaryKey(Integer id);
    
    List<OrderS> all(Integer id);

    int updateByPrimaryKeySelective(OrderS record);

    int updateByPrimaryKeyWithBLOBs(OrderS record);

    int updateByPrimaryKey(OrderS record);
}