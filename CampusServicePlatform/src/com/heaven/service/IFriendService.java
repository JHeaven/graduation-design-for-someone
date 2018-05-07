package com.heaven.service;

import java.util.List;

import com.heaven.model.Friend;
import com.heaven.model.ShareFile;
/**
 * ����service�ӿ�
 * @author HEAVEN
 *
 */
public interface IFriendService {
	/**
	 * ��idɾ��
	 * @param id
	 * @return
	 */
	int deleteByPrimaryKey(Integer id);
	/**
	 * �������
	 * @param record
	 * @return
	 */
    int insert(Friend record);
    /**
     * �������
     * @param record
     * @return
     */
    int insertSelective(Friend record);
    /**
     * ��id��ѯ
     * @param id
     * @return
     */
    Friend selectByPrimaryKey(Integer id);
    /**
     * ��id�������
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Friend record);
    /**
     * ��idȫ������
     * @param record
     * @return
     */
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
