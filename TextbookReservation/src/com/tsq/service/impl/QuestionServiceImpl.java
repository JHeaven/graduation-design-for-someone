package com.tsq.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tsq.dao.QuestionMapper;
import com.tsq.model.Question;
import com.tsq.model.QuestionWithBLOBs;
import com.tsq.service.IQuestionService;

@Service
public class QuestionServiceImpl implements IQuestionService {

	@Resource
	QuestionMapper questionMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return questionMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(QuestionWithBLOBs record) {
		// TODO Auto-generated method stub
		return questionMapper.insert(record);
	}

	@Override
	public int insertSelective(QuestionWithBLOBs record) {
		// TODO Auto-generated method stub
		return questionMapper.insertSelective(record);
	}

	@Override
	public QuestionWithBLOBs selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return questionMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(QuestionWithBLOBs record) {
		// TODO Auto-generated method stub
		return questionMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(QuestionWithBLOBs record) {
		// TODO Auto-generated method stub
		return questionMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(Question record) {
		return questionMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<QuestionWithBLOBs> selectByUserId(Integer id) {
		// TODO Auto-generated method stub
		return questionMapper.selectByUserId(id);
	}

}
