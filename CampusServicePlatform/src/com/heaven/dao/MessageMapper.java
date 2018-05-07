package com.heaven.dao;

import java.util.List;

import com.heaven.model.Message;
/**
 * 消息dao接口
 * @author HEAVEN
 *
 */
public interface MessageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Message record);

    int insertSelective(Message record);

    Message selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Message record);

    int updateByPrimaryKeyWithBLOBs(Message record);

    int updateByPrimaryKey(Message record);
    
    List<Message> selectMyMessage(Integer toId);
}