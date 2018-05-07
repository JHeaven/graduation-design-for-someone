package com.heaven.dao;

import java.util.List;

import com.heaven.model.Wechartwall;
/**
 * Î¢ÐÅÇ½dao½Ó¿Ú
 * @author HEAVEN
 *
 */
public interface WechartwallMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Wechartwall record);

    int insertSelective(Wechartwall record);

    Wechartwall selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Wechartwall record);

    int updateByPrimaryKey(Wechartwall record);
    
    List<Wechartwall> selectByFirst();
    
    List<Wechartwall> selectByNext(Integer id);
}