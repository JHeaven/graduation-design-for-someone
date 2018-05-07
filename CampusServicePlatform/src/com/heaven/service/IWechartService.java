package com.heaven.service;

import com.heaven.model.Wechart;
import com.heaven.model.WechartKey;
/**
 * 微信互联service接口
 * @author HEAVEN
 *
 */
public interface IWechartService {
	/**
	 * 按id删除
	 * @param key
	 * @return
	 */
	int deleteByPrimaryKey(WechartKey key);
	/**
	 * 插入对象
	 * @param content
	 * @param fromUserName
	 * @return
	 */
    int insert(String content, String fromUserName);
    /**
     * 按需插入
     * @param record
     * @return
     */
    int insertSelective(Wechart record);
    /**
     * 按id查询
     * @param key
     * @return
     */
    Wechart selectByPrimaryKey(WechartKey key);
    /**
     * 按id按需更新
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Wechart record);
    /**
     * 按id全部更新
     * @param record
     * @return
     */
    int updateByPrimaryKey(Wechart record);
}
