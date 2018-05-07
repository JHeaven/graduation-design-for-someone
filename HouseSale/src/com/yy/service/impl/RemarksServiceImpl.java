package com.yy.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yy.dao.RemarksMapper;
import com.yy.model.Remarks;
import com.yy.service.IRemarksService;

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
