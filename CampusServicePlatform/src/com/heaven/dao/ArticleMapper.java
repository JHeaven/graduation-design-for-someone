package com.heaven.dao;

import java.util.List;
import java.util.Map;

import com.heaven.model.Article;
/**
 * 话题dao接口
 * @author HEAVEN
 *
 */
public interface ArticleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Article record);

    int insertSelective(Article record);

    Article selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Article record);

    int updateByPrimaryKeyWithBLOBs(Article record);

    int updateByPrimaryKey(Article record);
    
    List<Article> selectAll();
    
    List<Article> selectAllByCondition(Map paramMap);
    
    int selectCountByCondition(Article record);
}