package com.sd.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sd.dao.QuestionMapper;
import com.sd.model.Question;
import com.sd.service.IQuestionService;

@Service
public class QuestionServiceImpl implements IQuestionService {

	@Resource
	QuestionMapper questionMapper = null;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return questionMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Question record) {
		// TODO Auto-generated method stub
		return questionMapper.insert(record);
	}

	@Override
	public int insertSelective(Question record) {
		// TODO Auto-generated method stub
		return questionMapper.insertSelective(record);
	}

	@Override
	public Question selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return questionMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Question record) {
		// TODO Auto-generated method stub
		return questionMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Question record) {
		// TODO Auto-generated method stub
		return questionMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Question> selectByUser(Integer id) {
		// TODO Auto-generated method stub
		return questionMapper.selectByUser(id);
	}

}
