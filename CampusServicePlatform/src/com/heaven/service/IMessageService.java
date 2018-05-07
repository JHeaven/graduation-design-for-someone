package com.heaven.service;

import java.util.List;

import com.heaven.model.Message;
/**
 * ��Ϣservice�ӿ�
 * @author HEAVEN
 *
 */
public interface IMessageService {
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
    int insert(Message record);
    /**
     * �������
     * @param record
     * @return
     */
    int insertSelective(Message record);
    /**
     * ��id��ѯ
     * @param id
     * @return
     */
    Message selectByPrimaryKey(Integer id);
    /**
     * ��id�������
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Message record);
    /**
     * ��idȫ�����£����ֶΣ�
     * @param record
     * @return
     */
    int updateByPrimaryKeyWithBLOBs(Message record);
    /**
     * ��idȫ������
     * @param record
     * @return
     */
    int updateByPrimaryKey(Message record);
    /**
     * �õ��ҵ���Ϣ
     * @param toId
     * @return
     */
    List<Message> selectMyMessage(Integer toId);
}
