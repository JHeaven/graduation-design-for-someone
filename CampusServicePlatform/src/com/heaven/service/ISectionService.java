package com.heaven.service;

import java.util.List;

import com.heaven.model.Section;
/**
 * 板块service接口
 * @author HEAVEN
 *
 */
public interface ISectionService {
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
	int insert(Section record);
	/**
	 * 按需插入
	 * @param record
	 * @return
	 */
	int insertSelective(Section record);
	/**
	 * 按id查询
	 * @param id
	 * @return
	 */
	Section selectByPrimaryKey(Integer id);
	/**
	 * 按id按需更新
	 * @param record
	 * @return
	 */
	int updateByPrimaryKeySelective(Section record);
	/**
	 * 按id全部更新
	 * @param record
	 * @return
	 */
	int updateByPrimaryKey(Section record);
	/**
	 * 得到所有的子列表
	 * @param parentId
	 * @return
	 */
	List<Section> selectAllByParent(Integer parentId);
}
