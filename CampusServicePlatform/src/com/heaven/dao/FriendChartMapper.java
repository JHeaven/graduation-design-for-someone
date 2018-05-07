package com.heaven.dao;

import com.heaven.model.FriendChart;
/**
 * 好友聊天dao接口
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