package com.heaven.dao;

import java.util.List;
import java.util.Map;

import com.heaven.model.Microblog;
/**
 * ¶¯Ì¬dao½Ó¿Ú
 * @author HEAVEN
 *
 */
public interface MicroblogMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Microblog record);

    int insertSelective(Microblog record);

    Microblog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Microblog record);

    int updateByPrimaryKeyWithBLOBs(Microblog record);

    int updateByPrimaryKey(Microblog record);
    
    List<Microblog> selectLatest(Integer pageNo);
    
    int dianzan(Integer id);
    
    List<Microblog> selectOfMy(Integer id);
    
    List<Microblog> selectPop10();
    
}