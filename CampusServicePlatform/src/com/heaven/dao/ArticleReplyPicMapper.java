package com.heaven.dao;

import java.util.List;

import com.heaven.model.ArticleReplyPic;
import com.heaven.model.ArticleReplyPicWithBLOBs;
/**
 * 话题回复dao接口
 * @author HEAVEN
 *
 */
public interface ArticleReplyPicMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ArticleReplyPicWithBLOBs record);

    int insertSelective(ArticleReplyPicWithBLOBs record);

    ArticleReplyPicWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ArticleReplyPicWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(ArticleReplyPicWithBLOBs record);

    int updateByPrimaryKey(ArticleReplyPic record);
    
    List<ArticleReplyPicWithBLOBs> selectByArticleId(Integer articleId);
}