package com.heaven.service;

import java.util.List;

import com.heaven.model.ArticleReplyReply;
/**
 * ����ظ��Ļظ�service�ӿ�
 * @author HEAVEN
 *
 */
public interface IArticleReplyReplyService {
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
    int insert(ArticleReplyReply record);
    /**
     * �������
     * @param record
     * @return
     */
    int insertSelective(ArticleReplyReply record);
    /**
     * ��id��ѯ
     * @param id
     * @return
     */
    ArticleReplyReply selectByPrimaryKey(Integer id);
    /**
     * ��id�������
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(ArticleReplyReply record);
    /**
     * ��id������£������ֶΣ�
     * @param record
     * @return
     */
    int updateByPrimaryKeyWithBLOBs(ArticleReplyReply record);
    /**
     * ��idȫ������
     * @param record
     * @return
     */
    int updateByPrimaryKey(ArticleReplyReply record);
    /**
     * ������id��ѯ
     * @param articleId
     * @return
     */
    List<ArticleReplyReply> selectByArticleId(Integer articleId);
}
