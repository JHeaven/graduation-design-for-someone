package com.tsq.dao;

import java.util.List;

import com.tsq.model.Question;
import com.tsq.model.QuestionWithBLOBs;

public interface QuestionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(QuestionWithBLOBs record);

    int insertSelective(QuestionWithBLOBs record);

    QuestionWithBLOBs selectByPrimaryKey(Integer id);
    
    List<QuestionWithBLOBs> selectByUserId(Integer id);

    int updateByPrimaryKeySelective(QuestionWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(QuestionWithBLOBs record);

    int updateByPrimaryKey(Question record);
}