package com.heaven.service;

import java.util.List;

import com.heaven.model.Article;
/**
 * 话题service接口
 * @author HEAVEN
 *
 */
public interface IArticleService {
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
    int insert(Article record);
    /**
     * 按需插入
     * @param record
     * @return
     */
    int insertSelective(Article record);
    /**
     * 按id查询
     * @param id
     * @return
     */
    Article selectByPrimaryKey(Integer id);
    /**
     * 按id按需更新
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Article record);
    /**
     * 按id按需更新（带长字段）
     * @param record
     * @return
     */
    int updateByPrimaryKeyWithBLOBs(Article record);
    /**
     * 按id全部更新
     * @param record
     * @return
     */
    int updateByPrimaryKey(Article record);
    /**
     * 得到所有数据
     * @return
     */
    List<Article> selectAll();
    /**
     * 得到分页页面的数据
     * @param condition
     * @param PageNo
     * @param pageSize
     * @return
     */
    List<Article> selectAllByCondition(Article condition,Integer PageNo,Integer pageSize);
    /**
     * 按多条件查询个数
     * @param record
     * @return
     */
    int selectCountByCondition(Article record);
}
