package com.heaven.dao;

import java.util.List;

import com.heaven.model.Classroom;
/**
 * °à¼¶dao½Ó¿Ú
 * @author HEAVEN
 *
 */
public interface ClassroomMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Classroom record);

    int insertSelective(Classroom record);

    Classroom selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Classroom record);

    int updateByPrimaryKey(Classroom record);
    
    List<Classroom> selectAllClassroom();
}