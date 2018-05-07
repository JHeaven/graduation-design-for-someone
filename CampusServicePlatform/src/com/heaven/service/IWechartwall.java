package com.heaven.service;

import java.util.List;

import com.heaven.model.Wechartwall;
/**
 * 微信墙service接口
 * @author HEAVEN
 *
 */
public interface IWechartwall {
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
    int insert(Wechartwall record);
    /**
     * 按需插入
     * @param record
     * @return
     */
    int insertSelective(Wechartwall record);
    /**
     * 按id查询
     * @param id
     * @return
     */
    Wechartwall selectByPrimaryKey(Integer id);
    /**
     * 按id按需更新
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Wechartwall record);
    /**
     * 按id全部更新
     * @param record
     * @return
     */
    int updateByPrimaryKey(Wechartwall record);
    /**
     * 首页数据
     * @return
     */
    List<Wechartwall> selectByFirst();
    /**
     * 下一页数据
     * @param id
     * @return
     */
    List<Wechartwall> selectByNext(Integer id);
    
}
