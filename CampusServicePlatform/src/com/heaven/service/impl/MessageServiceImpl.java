package com.heaven.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.heaven.dao.MessageMapper;
import com.heaven.model.Message;
import com.heaven.service.IMessageService;
@Service 
/**
 * ª∞Ã‚
 * @author HEAVEN
 *
 */
public class MessageServiceImpl implements IMessageService{

	@Resource
	MessageMapper messageMapper = null;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return messageMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Message record) {
		return messageMapper.insert(record);
	}

	@Override
	public int insertSelective(Message record) {
		return messageMapper.insertSelective(record);
	}

	@Override
	public Message selectByPrimaryKey(Integer id) {
		return messageMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Message record) {
		return messageMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(Message record) {
		return messageMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(Message record) {
		return messageMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Message> selectMyMessage(Integer toId) {
		return messageMapper.selectMyMessage(toId);
	}
	
}
