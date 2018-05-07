package com.sd.service;

import java.util.List;

import com.sd.model.User;

public interface IUserService {
	public String sayHello();
	public String sayNo();
	
	int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    User login(String name,String pass);
    
    List<User> selectAll();

}
