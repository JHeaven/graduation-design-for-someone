package com.heaven.service;

import java.util.List;

import com.heaven.model.MicroblogReply;
/**
 * ��̬�ظ�service�ӿ�
 * @author HEAVEN
 *
 */
public interface IMicroblogReplyService {
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
    int insert(MicroblogReply record);
    /**
     * �������
     * @param record
     * @return
     */
    int insertSelective(MicroblogReply record);
    /**
     * ��id��ѯ
     * @param id
     * @return
     */
    MicroblogReply selectByPrimaryKey(Integer id);
    /**
     * ��id�������
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(MicroblogReply record);
    /**
     * ��idȫ������
     * @param record
     * @return
     */
    int updateByPrimaryKey(MicroblogReply record);
    /**
     * �õ�����
     * @return
     */
    List<MicroblogReply> selectAll();

}
