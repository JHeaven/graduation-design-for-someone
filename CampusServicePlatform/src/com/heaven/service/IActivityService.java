package com.heaven.service;

import java.util.List;

import com.heaven.model.Activity;
/**
 * �service�ӿ�
 * @author HEAVEN
 *
 */
public interface IActivityService {
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
	int insert(Activity record);
	/**
	 * �������
	 * @param record
	 * @return
	 */
	int insertSelective(Activity record);
	/**
	 * ��id��ѯ
	 * @param id
	 * @return
	 */
	Activity selectByPrimaryKey(Integer id);
	/**
	 * ��id�������
	 * @param record
	 * @return
	 */
	int updateByPrimaryKeySelective(Activity record);
	/**
	 * ��id������£������ֶΣ�
	 * @param record
	 * @return
	 */
	int updateByPrimaryKeyWithBLOBs(Activity record);
	/**
	 * ��idȫ������
	 * @param record
	 * @return
	 */
	int updateByPrimaryKey(Activity record);
	/**
	 * �õ�����
	 * @return
	 */
	List<Activity> selectAll();
}
