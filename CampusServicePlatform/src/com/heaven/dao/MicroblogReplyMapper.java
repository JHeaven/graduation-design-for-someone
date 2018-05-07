package com.heaven.dao;

import java.util.List;

import com.heaven.model.MicroblogReply;
/**
 * ��̬�ظ�dao�ӿ�
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