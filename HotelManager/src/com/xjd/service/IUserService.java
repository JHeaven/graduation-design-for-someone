package com.xjd.service;

import java.util.List;

import com.xjd.model.Users;

public interface IUserService {
	int deleteByPrimaryKey(Integer userId);

    int insert(Users record);

    int insertSelective(Users record);

    Users selectByPrimaryKey(Integer userId);
    
    Users login(Users record);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);
    
    List<Users> all();

}
