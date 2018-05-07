package com.heaven.dao;

import com.heaven.model.MicroblogReplyReply;
/**
 * 动态回复的回复dao接口
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