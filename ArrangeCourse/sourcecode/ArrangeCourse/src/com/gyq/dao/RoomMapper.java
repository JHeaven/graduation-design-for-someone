package com.gyq.dao;

import java.util.List;

import com.gyq.model.Room;

public interface RoomMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Room record);

    int insertSelective(Room record);

    Room selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Room record);

    int updateByPrimaryKey(Room record);
    
    List<Room> selectALL();
}