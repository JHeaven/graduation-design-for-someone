package com.heaven.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.heaven.dao.MicroblogReplyMapper;
import com.heaven.model.MicroblogReply;
import com.heaven.service.IMicroblogReplyService;
@Service
/**
 * ª∞Ã‚
 * @author HEAVEN
 *
 */
public class MicroblogReplyServiceImpl implements IMicroblogReplyService{
	@Resource
	MicroblogReplyMapper microblogReplyMapper = null;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return microblogReplyMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(MicroblogReply record) {
		return microblogReplyMapper.insert(record);
	}

	@Override
	public int insertSelective(MicroblogReply record) {
		return microblogReplyMapper.insertSelective(record);
	}

	@Override
	public MicroblogReply selectByPrimaryKey(Integer id) {
		return microblogReplyMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(MicroblogReply record) {
		return microblogReplyMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(MicroblogReply record) {
		return microblogReplyMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<MicroblogReply> selectAll() {
		return microblogReplyMapper.selectAll();
	}
	
}
