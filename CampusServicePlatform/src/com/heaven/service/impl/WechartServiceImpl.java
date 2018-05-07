package com.heaven.service.impl;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.heaven.dao.UserMapper;
import com.heaven.dao.WechartMapper;
import com.heaven.model.User;
import com.heaven.model.Wechart;
import com.heaven.model.WechartKey;
import com.heaven.service.IWechartService;
import com.heaven.utils.MD5;

/**
 * н╒пе
 * @author HEAVEN
 *
 */
@Service
public class WechartServiceImpl implements IWechartService{
	
	@Resource
	WechartMapper wechartMapper = null;
	
	@Resource
	UserMapper userService = null;
	
	@Override
	public int deleteByPrimaryKey(WechartKey key) {
		return wechartMapper.deleteByPrimaryKey(key);
	}

	@Override
	public int insert(String content, String openId) {
		int tag = content.indexOf("#");
		String username=content.substring(0, tag);
		String userpwd=content.substring(tag+1);
		User user = new User();
		user.setLoginName(username);
		user.setLoginPass(MD5.encryption(userpwd));
		user = userService.checkLogin(user);
		if (user!=null) {
			Wechart record = new Wechart();
			record.setIsdelete(0);
			record.setOpenId(openId);
			record.setOutTime(new Date());
			record.setUserId(user.getId());
			if (wechartMapper.insert(record)>0) {
				return 1;
			}
			return 0;
		}else{
			return 0;
		}
		
	}

	@Override
	public int insertSelective(Wechart record) {
		return wechartMapper.insertSelective(record);
	}

	@Override
	public Wechart selectByPrimaryKey(WechartKey key) {
		return wechartMapper.selectByPrimaryKey(key);
	}

	@Override
	public int updateByPrimaryKeySelective(Wechart record) {
		return wechartMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Wechart record) {
		return wechartMapper.updateByPrimaryKey(record);
	}

}
