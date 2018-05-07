package com.heaven.service;

import java.util.List;

import com.heaven.model.Article;
/**
 * ����service�ӿ�
 * @author HEAVEN
 *
 */
public interface IArticleService {
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
    int insert(Article record);
    /**
     * �������
     * @param record
     * @return
     */
    int insertSelective(Article record);
    /**
     * ��id��ѯ
     * @param id
     * @return
     */
    Article selectByPrimaryKey(Integer id);
    /**
     * ��id�������
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Article record);
    /**
     * ��id������£������ֶΣ�
     * @param record
     * @return
     */
    int updateByPrimaryKeyWithBLOBs(Article record);
    /**
     * ��idȫ������
     * @param record
     * @return
     */
    int updateByPrimaryKey(Article record);
    /**
     * �õ���������
     * @return
     */
    List<Article> selectAll();
    /**
     * �õ���ҳҳ�������
     * @param condition
     * @param PageNo
     * @param pageSize
     * @return
     */
    List<Article> selectAllByCondition(Article condition,Integer PageNo,Integer pageSize);
    /**
     * ����������ѯ����
     * @param record
     * @return
     */
    int selectCountByCondition(Article record);
}
