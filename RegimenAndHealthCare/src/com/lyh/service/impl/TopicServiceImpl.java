package com.lyh.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.dao.TopicMapper;
import com.lyh.model.Topic;
import com.lyh.service.ITopicService;
@Service
public class TopicServiceImpl implements ITopicService {

	@Resource
	TopicMapper topicMapper = null;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return topicMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Topic record) {
		// TODO Auto-generated method stub
		return topicMapper.insert(record);
	}

	@Override
	public int insertSelective(Topic record) {
		// TODO Auto-generated method stub
		return topicMapper.insertSelective(record);
	}

	@Override
	public Topic selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return topicMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Topic record) {
		// TODO Auto-generated method stub
		return topicMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(Topic record) {
		// TODO Auto-generated method stub
		return topicMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(Topic record) {
		// TODO Auto-generated method stub
		return topicMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Topic> selectByPage(Integer page) {
		// TODO Auto-generated method stub
		page = (page-1)*5;
		return topicMapper.selectByPage(page);
	}

	@Override
	public List<Topic> selectAll() {
		// TODO Auto-generated method stub
		return topicMapper.selectAll();
	}

	@Override
	public List<Topic> selectTop5() {
		// TODO Auto-generated method stub
		return topicMapper.selectTop5();
	}

}
