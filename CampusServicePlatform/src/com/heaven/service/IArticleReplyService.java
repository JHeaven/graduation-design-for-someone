package com.heaven.service;

import java.util.List;

import com.heaven.model.ArticleReply;
/**
 * 话题回复service接口
 * @author HEAVEN
 *
 */
public interface IArticleReplyService {
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
    int insert(ArticleReply record);
    /**
     * 按需插入
     * @param record
     * @return
     */
    int insertSelective(ArticleReply record);
    /**
     * 按id查询
     * @param id
     * @return
     */
    ArticleReply selectByPrimaryKey(Integer id);
    /**
     * 按id按需更新
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(ArticleReply record);
    /**
     * 按id按需更新（带长字段）
     * @param record
     * @return
     */
    int updateByPrimaryKeyWithBLOBs(ArticleReply record);
    /**
     * 按id全部更新
     * @param record
     * @return
     */
    int updateByPrimaryKey(ArticleReply record);
    /**
     * 按id查询
     * @param articleId
     * @return
     */
    List<ArticleReply> selectByArticleId(Integer articleId);
}
