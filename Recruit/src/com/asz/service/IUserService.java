package com.asz.service;

import java.util.List;

import com.asz.model.User;

public interface IUserService {
	int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    User login(User record);
    
    List<User> all();

}
