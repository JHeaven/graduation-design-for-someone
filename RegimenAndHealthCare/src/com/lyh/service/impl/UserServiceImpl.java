package com.lyh.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.dao.UsersMapper;
import com.lyh.model.Users;
import com.lyh.service.IUserService;


@Service
public class UserServiceImpl implements IUserService {

	@Resource
	UsersMapper userMapper = null;
	
	@Override
	public int deleteByPrimaryKey(Integer userId) {
		// TODO Auto-generated method stub
		return userMapper.deleteByPrimaryKey(userId);
	}

	@Override
	public int insert(Users record) {
		// TODO Auto-generated method stub
		return userMapper.insert(record);
	}

	@Override
	public int insertSelective(Users record) {
		// TODO Auto-generated method stub
		return userMapper.insertSelective(record);
	}

	@Override
	public Users selectByPrimaryKey(Integer userId) {
		// TODO Auto-generated method stub
		return userMapper.selectByPrimaryKey(userId);
	}

	@Override
	public Users login(Users record) {
		// TODO Auto-generated method stub
		return userMapper.login(record);
	}

	@Override
	public int updateByPrimaryKeySelective(Users record) {
		// TODO Auto-generated method stub
		return userMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Users record) {
		// TODO Auto-generated method stub
		return userMapper.updateByPrimaryKey(record);
	}

}
