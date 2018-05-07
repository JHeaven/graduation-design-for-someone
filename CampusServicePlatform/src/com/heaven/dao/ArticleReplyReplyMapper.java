package com.heaven.dao;

import java.util.List;

import com.heaven.model.ArticleReplyReply;
/**
 * ����ظ��Ļظ�dao�ӿ�
 * @author HEAVEN
 *
 */
public interface ArticleReplyReplyMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ArticleReplyReply record);

    int insertSelective(ArticleReplyReply record);

    ArticleReplyReply selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ArticleReplyReply record);

    int updateByPrimaryKeyWithBLOBs(ArticleReplyReply record);

    int updateByPrimaryKey(ArticleReplyReply record);
    
    List<ArticleReplyReply> selectByArticleId(Integer articleId);
}