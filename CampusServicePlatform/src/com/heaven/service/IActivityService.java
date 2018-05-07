package com.heaven.service;

import java.util.List;

import com.heaven.model.Activity;
/**
 * 活动service接口
 * @author HEAVEN
 *
 */
public interface IActivityService {
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
	int insert(Activity record);
	/**
	 * 按需插入
	 * @param record
	 * @return
	 */
	int insertSelective(Activity record);
	/**
	 * 按id查询
	 * @param id
	 * @return
	 */
	Activity selectByPrimaryKey(Integer id);
	/**
	 * 按id按需更新
	 * @param record
	 * @return
	 */
	int updateByPrimaryKeySelective(Activity record);
	/**
	 * 按id按需更新（带长字段）
	 * @param record
	 * @return
	 */
	int updateByPrimaryKeyWithBLOBs(Activity record);
	/**
	 * 按id全部更新
	 * @param record
	 * @return
	 */
	int updateByPrimaryKey(Activity record);
	/**
	 * 得到所以
	 * @return
	 */
	List<Activity> selectAll();
}
