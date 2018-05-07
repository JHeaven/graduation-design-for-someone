package com.heaven.service;

import com.heaven.model.Wechart;
import com.heaven.model.WechartKey;
/**
 * ΢�Ż���service�ӿ�
 * @author HEAVEN
 *
 */
public interface IWechartService {
	/**
	 * ��idɾ��
	 * @param key
	 * @return
	 */
	int deleteByPrimaryKey(WechartKey key);
	/**
	 * �������
	 * @param content
	 * @param fromUserName
	 * @return
	 */
    int insert(String content, String fromUserName);
    /**
     * �������
     * @param record
     * @return
     */
    int insertSelective(Wechart record);
    /**
     * ��id��ѯ
     * @param key
     * @return
     */
    Wechart selectByPrimaryKey(WechartKey key);
    /**
     * ��id�������
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Wechart record);
    /**
     * ��idȫ������
     * @param record
     * @return
     */
    int updateByPrimaryKey(Wechart record);
}
