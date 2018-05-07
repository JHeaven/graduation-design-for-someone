package com.heaven.service;

import java.util.List;

import com.heaven.model.ArticleReplyPic;
import com.heaven.model.ArticleReplyPicWithBLOBs;
/**
 * ����ظ�ͼƬservice�ӿ�
 * @author HEAVEN
 *
 */
public interface IArticleReplyPicService {
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
    int insert(ArticleReplyPicWithBLOBs record);
    /**
     * �������
     * @param record
     * @return
     */
    int insertSelective(ArticleReplyPicWithBLOBs record);
    /**
     * ��id��ѯ
     * @param id
     * @return
     */
    ArticleReplyPicWithBLOBs selectByPrimaryKey(Integer id);
    /**
     * ��id�������
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(ArticleReplyPicWithBLOBs record);
    /**
     * ��id������£������ֶΣ�
     * @param record
     * @return
     */
    int updateByPrimaryKeyWithBLOBs(ArticleReplyPicWithBLOBs record);
    /**
     * ��idȫ������
     * @param record
     * @return
     */
    int updateByPrimaryKey(ArticleReplyPic record);
    /**
     * ������id��ѯ
     * @param articleId
     * @return
     */
    List<ArticleReplyPicWithBLOBs> selectByArticleId(Integer articleId);
}
