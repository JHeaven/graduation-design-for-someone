package com.heaven.service;

import java.util.List;

import com.heaven.model.MicroblogReply;
/**
 * 动态回复service接口
 * @author HEAVEN
 *
 */
public interface IMicroblogReplyService {
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
    int insert(MicroblogReply record);
    /**
     * 按需插入
     * @param record
     * @return
     */
    int insertSelective(MicroblogReply record);
    /**
     * 按id查询
     * @param id
     * @return
     */
    MicroblogReply selectByPrimaryKey(Integer id);
    /**
     * 按id按需更新
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(MicroblogReply record);
    /**
     * 按id全部更新
     * @param record
     * @return
     */
    int updateByPrimaryKey(MicroblogReply record);
    /**
     * 得到所以
     * @return
     */
    List<MicroblogReply> selectAll();

}
