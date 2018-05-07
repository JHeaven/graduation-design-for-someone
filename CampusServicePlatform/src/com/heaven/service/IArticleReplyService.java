package com.heaven.service;

import java.util.List;

import com.heaven.model.ArticleReply;
/**
 * ����ظ�service�ӿ�
 * @author HEAVEN
 *
 */
public interface IArticleReplyService {
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
    int insert(ArticleReply record);
    /**
     * �������
     * @param record
     * @return
     */
    int insertSelective(ArticleReply record);
    /**
     * ��id��ѯ
     * @param id
     * @return
     */
    ArticleReply selectByPrimaryKey(Integer id);
    /**
     * ��id�������
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(ArticleReply record);
    /**
     * ��id������£������ֶΣ�
     * @param record
     * @return
     */
    int updateByPrimaryKeyWithBLOBs(ArticleReply record);
    /**
     * ��idȫ������
     * @param record
     * @return
     */
    int updateByPrimaryKey(ArticleReply record);
    /**
     * ��id��ѯ
     * @param articleId
     * @return
     */
    List<ArticleReply> selectByArticleId(Integer articleId);
}
