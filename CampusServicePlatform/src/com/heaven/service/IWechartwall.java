package com.heaven.service;

import java.util.List;

import com.heaven.model.Wechartwall;
/**
 * ΢��ǽservice�ӿ�
 * @author HEAVEN
 *
 */
public interface IWechartwall {
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
    int insert(Wechartwall record);
    /**
     * �������
     * @param record
     * @return
     */
    int insertSelective(Wechartwall record);
    /**
     * ��id��ѯ
     * @param id
     * @return
     */
    Wechartwall selectByPrimaryKey(Integer id);
    /**
     * ��id�������
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Wechartwall record);
    /**
     * ��idȫ������
     * @param record
     * @return
     */
    int updateByPrimaryKey(Wechartwall record);
    /**
     * ��ҳ����
     * @return
     */
    List<Wechartwall> selectByFirst();
    /**
     * ��һҳ����
     * @param id
     * @return
     */
    List<Wechartwall> selectByNext(Integer id);
    
}
