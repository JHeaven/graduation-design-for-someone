package com.heaven.dao;

import com.heaven.model.UserLevel;
/**
 * �û��ȼ�dao�ӿ�
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