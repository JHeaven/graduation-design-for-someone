package com.heaven.service;

import java.util.List;

import com.heaven.model.Microblog;
/**
 * 动态
 * @author HEAVEN
 *
 */
public interface IMicroblogService {
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	int deleteByPrimaryKey(Integer id);
	/**
	 * 新增动态
	 * @param record
	 * @return
	 */
    int insert(Microblog record);
    /**
     * 按需插入
     * @param record
     * @return
     */
    int insertSelective(Microblog record);
    /**
     * 按ID查询
     * @param id
     * @return
     */
    Microblog selectByPrimaryKey(Integer id);
    /**
     * 按需更新
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Microblog record);
    /**
     * 按需更新
     * @param record
     * @return
     */
    int updateByPrimaryKeyWithBLOBs(Microblog record);
    /**
     * 按id全部更新
     * @param record
     * @return
     */
    int updateByPrimaryKey(Microblog record);
    /**
     * 最新消息分页
     * @param pageNo
     * @return
     */
    List<Microblog> selectLatest(Integer pageNo);
    /**
     * 我的动态
     * @param id
     * @return
     */
    List<Microblog> selectOfMy(Integer id);
    /**
     * 点赞
     * @param id
     * @return
     */
    int dianzan(Integer id);
    /**
     * 最新10
     * @return
     */
    List<Microblog> selectPop10();
}
