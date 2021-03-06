package com.xjd.dao;

import java.util.List;

import com.xjd.model.Order;

public interface OrderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKeyWithBLOBs(Order record);

    int updateByPrimaryKey(Order record);
    
    List<Order> all();
    List<Order> selectByUser(Integer id);
    List<Order> selectTime(Order record);
    
}