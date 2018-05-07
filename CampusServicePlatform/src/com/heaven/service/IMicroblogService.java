package com.heaven.service;

import java.util.List;

import com.heaven.model.Microblog;
/**
 * ��̬
 * @author HEAVEN
 *
 */
public interface IMicroblogService {
	/**
	 * ɾ��
	 * @param id
	 * @return
	 */
	int deleteByPrimaryKey(Integer id);
	/**
	 * ������̬
	 * @param record
	 * @return
	 */
    int insert(Microblog record);
    /**
     * �������
     * @param record
     * @return
     */
    int insertSelective(Microblog record);
    /**
     * ��ID��ѯ
     * @param id
     * @return
     */
    Microblog selectByPrimaryKey(Integer id);
    /**
     * �������
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Microblog record);
    /**
     * �������
     * @param record
     * @return
     */
    int updateByPrimaryKeyWithBLOBs(Microblog record);
    /**
     * ��idȫ������
     * @param record
     * @return
     */
    int updateByPrimaryKey(Microblog record);
    /**
     * ������Ϣ��ҳ
     * @param pageNo
     * @return
     */
    List<Microblog> selectLatest(Integer pageNo);
    /**
     * �ҵĶ�̬
     * @param id
     * @return
     */
    List<Microblog> selectOfMy(Integer id);
    /**
     * ����
     * @param id
     * @return
     */
    int dianzan(Integer id);
    /**
     * ����10
     * @return
     */
    List<Microblog> selectPop10();
}
