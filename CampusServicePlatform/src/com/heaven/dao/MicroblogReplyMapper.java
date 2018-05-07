package com.heaven.dao;

import java.util.List;

import com.heaven.model.MicroblogReply;
/**
 * 动态回复dao接口
 * @author HEAVEN
 *
 */
public interface MicroblogReplyMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MicroblogReply record);

    int insertSelective(MicroblogReply record);

    MicroblogReply selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MicroblogReply record);

    int updateByPrimaryKey(MicroblogReply record);
    
    List<MicroblogReply> selectAll();
}