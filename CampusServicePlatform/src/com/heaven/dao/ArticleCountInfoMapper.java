package com.heaven.dao;

import com.heaven.model.ArticleCountInfo;
/**
 * 话题记录dao接口
 * @author HEAVEN
 *
 */
public interface ArticleCountInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ArticleCountInfo record);

    int insertSelective(ArticleCountInfo record);

    ArticleCountInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ArticleCountInfo record);

    int updateByPrimaryKey(ArticleCountInfo record);
}