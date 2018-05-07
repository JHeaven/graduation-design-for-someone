package com.heaven.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.heaven.dao.FriendMapper;
import com.heaven.model.Friend;
import com.heaven.service.IFriendService;
/**
 * ª∞Ã‚
 * @author HEAVEN
 *
 */
@Service
public class FriendServiceImpl implements IFriendService {
 	@Resource
	FriendMapper friendMapper = null;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return friendMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Friend record) {
		return friendMapper.insert(record);
	}

	@Override
	public int insertSelective(Friend record) {
		return friendMapper.insertSelective(record);
	}

	@Override
	public Friend selectByPrimaryKey(Integer id) {
		return friendMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Friend record) {
		return friendMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Friend record) {
		return friendMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Friend> selectMeetMyFriend(Integer toId) {
		return friendMapper.selectMeetMyFriend(toId);
	}

	@Override
	public int updateState(Friend record) {
		return friendMapper.updateState(record);
	}

	@Override
	public List<Friend> selectAllMyFriend(Integer toId) {
		return friendMapper.selectAllMyFriend(toId);
	}
	
}
