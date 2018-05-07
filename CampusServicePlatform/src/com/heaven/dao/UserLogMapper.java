package com.heaven.dao;

import java.util.List;

import com.heaven.model.UserLog;
/**
 * 用户日志dao接口
 * @author HEAVEN
 *
 */
public interface UserLogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserLog record);

    int insertSelective(UserLog record);

    UserLog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserLog record);

    int updateByPrimaryKey(UserLog record);
    
    List<UserLog> selectAllUserLog();
}