package com.heaven.dao;

import java.util.List;

import org.apache.commons.fileupload.util.LimitedInputStream;

import com.heaven.model.Friend;
/**
 * ����dao�ӿ�
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
     * ���ҵĺ�������
     * @param toId
     * @return
     */
    List<Friend> selectMeetMyFriend(Integer toId);
    /**
     * �޸�״̬
     * @param record
     * @return
     */
    int updateState(Friend record);
    /**
     * �鿴�ҵ����к���
     * @param toId
     * @return
     */
    List<Friend> selectAllMyFriend(Integer toId);
}