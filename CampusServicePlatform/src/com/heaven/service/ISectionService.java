package com.heaven.service;

import java.util.List;

import com.heaven.model.Section;
/**
 * ���service�ӿ�
 * @author HEAVEN
 *
 */
public interface ISectionService {
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
	int insert(Section record);
	/**
	 * �������
	 * @param record
	 * @return
	 */
	int insertSelective(Section record);
	/**
	 * ��id��ѯ
	 * @param id
	 * @return
	 */
	Section selectByPrimaryKey(Integer id);
	/**
	 * ��id�������
	 * @param record
	 * @return
	 */
	int updateByPrimaryKeySelective(Section record);
	/**
	 * ��idȫ������
	 * @param record
	 * @return
	 */
	int updateByPrimaryKey(Section record);
	/**
	 * �õ����е����б�
	 * @param parentId
	 * @return
	 */
	List<Section> selectAllByParent(Integer parentId);
}
