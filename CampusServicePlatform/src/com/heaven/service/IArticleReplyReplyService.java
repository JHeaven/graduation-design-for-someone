package com.heaven.service;

import java.util.List;

import com.heaven.model.ArticleReplyReply;
/**
 * 话题回复的回复service接口
 * @author HEAVEN
 *
 */
public interface IArticleReplyReplyService {
	/**
	 * 按id删除
	 * @param id
	 * @return
	 */
	int deleteByPrimaryKey(Integer id);
	/**
	 * 插入对象
	 * @param record
	 * @return
	 */
    int insert(ArticleReplyReply record);
    /**
     * 按需插入
     * @param record
     * @return
     */
    int insertSelective(ArticleReplyReply record);
    /**
     * 按id查询
     * @param id
     * @return
     */
    ArticleReplyReply selectByPrimaryKey(Integer id);
    /**
     * 按id按需更新
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(ArticleReplyReply record);
    /**
     * 按id按需更新（带长字段）
     * @param record
     * @return
     */
    int updateByPrimaryKeyWithBLOBs(ArticleReplyReply record);
    /**
     * 按id全部更新
     * @param record
     * @return
     */
    int updateByPrimaryKey(ArticleReplyReply record);
    /**
     * 按文章id查询
     * @param articleId
     * @return
     */
    List<ArticleReplyReply> selectByArticleId(Integer articleId);
}
