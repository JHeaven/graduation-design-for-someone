package com.heaven.dao;

import com.heaven.model.MicroblogReplyReply;
/**
 * ��̬�ظ��Ļظ�dao�ӿ�
 * @author HEAVEN
 *
 */
public interface MicroblogReplyReplyMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MicroblogReplyReply record);

    int insertSelective(MicroblogReplyReply record);

    MicroblogReplyReply selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MicroblogReplyReply record);

    int updateByPrimaryKey(MicroblogReplyReply record);
}