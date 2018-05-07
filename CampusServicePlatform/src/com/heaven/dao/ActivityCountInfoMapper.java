package com.heaven.dao;

import com.heaven.model.ActivityCountInfo;
/**
 * 活动记录dao接口
 * @author HEAVEN
 *
 */
public interface ActivityCountInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ActivityCountInfo record);

    int insertSelective(ActivityCountInfo record);

    ActivityCountInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ActivityCountInfo record);

    int updateByPrimaryKey(ActivityCountInfo record);
}