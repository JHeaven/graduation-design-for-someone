package com.heaven.dao;

import com.heaven.model.FriendChart;
/**
 * ��������dao�ӿ�
 * @author HEAVEN
 *
 */
public interface FriendChartMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FriendChart record);

    int insertSelective(FriendChart record);

    FriendChart selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(FriendChart record);

    int updateByPrimaryKey(FriendChart record);
}