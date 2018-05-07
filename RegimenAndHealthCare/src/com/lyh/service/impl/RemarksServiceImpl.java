package com.lyh.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.dao.RemarksMapper;
import com.lyh.model.Remarks;
import com.lyh.service.IRemarksService;

@Service
public class RemarksServiceImpl implements IRemarksService {

	@Resource
	RemarksMapper remarksMapper = null;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Remarks record) {
		// TODO Auto-generated method stub
		return remarksMapper.insert(record);
	}

	@Override
	public int insertSelective(Remarks record) {
		// TODO Auto-generated method stub
		return remarksMapper.insertSelective(record);
	}

	@Override
	public Remarks selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return remarksMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Remarks record) {
		// TODO Auto-generated method stub
		return remarksMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Remarks record) {
		// TODO Auto-generated method stub
		return remarksMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Remarks> selectByTopic(Integer topicId) {
		// TODO Auto-generated method stub
		return remarksMapper.selectByTopic(topicId);
	}

}
