package com.lyh.dao;

import java.util.List;

import com.lyh.model.Order;

public interface OrderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);
    
    int selectMax();
    
    List<Order> selectByUserId(Integer id);
}