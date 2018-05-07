package com.xjd.dao;

import java.util.List;

import com.xjd.model.Room;
import com.xjd.model.RoomWithBLOBs;

public interface RoomMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RoomWithBLOBs record);

    int insertSelective(RoomWithBLOBs record);

    RoomWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RoomWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(RoomWithBLOBs record);

    int updateByPrimaryKey(Room record);
    
    List<RoomWithBLOBs> all();
}