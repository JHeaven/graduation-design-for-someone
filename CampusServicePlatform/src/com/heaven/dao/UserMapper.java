package com.heaven.dao;

import com.heaven.model.User;
/**
 * �û�dao�ӿ�
 * @author HEAVEN
 *
 */
public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKeyWithBLOBs(User record);

    int updateByPrimaryKey(User record);

	User checkLogin(User user);
	
	int updateScoreRand(User user);
	
	User selectByEmail(String email);
	
	User selectByIdAndPass(User user);
}