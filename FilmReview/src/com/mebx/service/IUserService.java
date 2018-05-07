package com.mebx.service;

import java.util.List;

import com.mebx.model.User;

public interface IUserService {
	int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

	User login(User user);
	
    List<User> selectall();

}
