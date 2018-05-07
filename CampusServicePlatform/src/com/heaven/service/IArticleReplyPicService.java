package com.heaven.service;

import java.util.List;

import com.heaven.model.ArticleReplyPic;
import com.heaven.model.ArticleReplyPicWithBLOBs;
/**
 * 话题回复图片service接口
 * @author HEAVEN
 *
 */
public interface IArticleReplyPicService {
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
    int insert(ArticleReplyPicWithBLOBs record);
    /**
     * 按需插入
     * @param record
     * @return
     */
    int insertSelective(ArticleReplyPicWithBLOBs record);
    /**
     * 按id查询
     * @param id
     * @return
     */
    ArticleReplyPicWithBLOBs selectByPrimaryKey(Integer id);
    /**
     * 按id按需更新
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(ArticleReplyPicWithBLOBs record);
    /**
     * 按id按需更新（带长字段）
     * @param record
     * @return
     */
    int updateByPrimaryKeyWithBLOBs(ArticleReplyPicWithBLOBs record);
    /**
     * 按id全部更新
     * @param record
     * @return
     */
    int updateByPrimaryKey(ArticleReplyPic record);
    /**
     * 按文章id查询
     * @param articleId
     * @return
     */
    List<ArticleReplyPicWithBLOBs> selectByArticleId(Integer articleId);
}
