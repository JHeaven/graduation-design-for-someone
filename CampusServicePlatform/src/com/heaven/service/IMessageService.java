package com.heaven.service;

import java.util.List;

import com.heaven.model.Message;
/**
 * 消息service接口
 * @author HEAVEN
 *
 */
public interface IMessageService {
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
    int insert(Message record);
    /**
     * 按需插入
     * @param record
     * @return
     */
    int insertSelective(Message record);
    /**
     * 按id查询
     * @param id
     * @return
     */
    Message selectByPrimaryKey(Integer id);
    /**
     * 按id按需更新
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Message record);
    /**
     * 按id全部更新（长字段）
     * @param record
     * @return
     */
    int updateByPrimaryKeyWithBLOBs(Message record);
    /**
     * 按id全部更新
     * @param record
     * @return
     */
    int updateByPrimaryKey(Message record);
    /**
     * 得到我的信息
     * @param toId
     * @return
     */
    List<Message> selectMyMessage(Integer toId);
}
