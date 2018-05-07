package com.sd.service;

import java.util.List;

import com.sd.model.Question;

public interface IQuestionService {
	int deleteByPrimaryKey(Integer id);

    int insert(Question record);

    int insertSelective(Question record);

    Question selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Question record);

    int updateByPrimaryKey(Question record);
    
    List<Question> selectByUser(Integer id);
}
