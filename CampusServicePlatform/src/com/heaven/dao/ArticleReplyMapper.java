package com.heaven.dao;

import java.util.List;

import com.heaven.model.ArticleReply;
/**
 * 话题回复dao接口
 * @author HEAVEN
 *
 */
public interface ArticleReplyMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ArticleReply record);

    int insertSelective(ArticleReply record);

    ArticleReply selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ArticleReply record);

    int updateByPrimaryKeyWithBLOBs(ArticleReply record);

    int updateByPrimaryKey(ArticleReply record);
    
    List<ArticleReply> selectByArticleId(Integer articleId);
}