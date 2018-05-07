package com.asz.dao;

import java.util.List;

import com.asz.model.Position;

public interface PositionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Position record);

    int insertSelective(Position record);

    Position selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Position record);

    int updateByPrimaryKeyWithBLOBs(Position record);

    int updateByPrimaryKey(Position record);
    
    List<Position> selectByEnter(Integer userId);
    
    List<Position> selectMohu(String str);
}