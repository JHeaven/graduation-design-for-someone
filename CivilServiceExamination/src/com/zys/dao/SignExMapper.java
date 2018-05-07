package com.zys.dao;

import java.util.List;

import com.zys.model.SignEx;

public interface SignExMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SignEx record);

    int insertSelective(SignEx record);

    SignEx selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SignEx record);

    int updateByPrimaryKey(SignEx record);
    
    List<SignEx> selectByUserIdAndBelong(SignEx record);
}