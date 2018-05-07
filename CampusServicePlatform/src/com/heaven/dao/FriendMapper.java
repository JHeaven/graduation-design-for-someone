package com.heaven.dao;

import java.util.List;

import org.apache.commons.fileupload.util.LimitedInputStream;

import com.heaven.model.Friend;
/**
 * 好友dao接口
 * @author HEAVEN
 *
 */
public interface FriendMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Friend record);

    int insertSelective(Friend record);

    Friend selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Friend record);

    int updateByPrimaryKey(Friend record);
    /**
     * 给我的好友申请
     * @param toId
     * @return
     */
    List<Friend> selectMeetMyFriend(Integer toId);
    /**
     * 修改状态
     * @param record
     * @return
     */
    int updateState(Friend record);
    /**
     * 查看我的所有好友
     * @param toId
     * @return
     */
    List<Friend> selectAllMyFriend(Integer toId);
}