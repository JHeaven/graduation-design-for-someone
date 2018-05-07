package com.heaven.dao;

import com.heaven.model.UserLevel;
/**
 * 用户等级dao接口
 * @author HEAVEN
 *
 */
public interface UserLevelMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserLevel record);

    int insertSelective(UserLevel record);

    UserLevel selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserLevel record);

    int updateByPrimaryKey(UserLevel record);
}