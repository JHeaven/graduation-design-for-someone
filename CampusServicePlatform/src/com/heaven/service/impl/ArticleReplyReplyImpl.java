package com.heaven.service.impl;

import java.util.List;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.heaven.dao.ArticleReplyReplyMapper;
import com.heaven.model.ArticleReplyReply;
import com.heaven.service.IArticleReplyReplyService;
/**
 * ª∞Ã‚
 * @author HEAVEN
 *
 */
@Service
public class ArticleReplyReplyImpl implements IArticleReplyReplyService {

	@Resource
	ArticleReplyReplyMapper articleReplyReplyMapper = null;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return articleReplyReplyMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(ArticleReplyReply record) {
		return articleReplyReplyMapper.insert(record);
	}

	@Override
	public int insertSelective(ArticleReplyReply record) {
		return articleReplyReplyMapper.insertSelective(record);
	}

	@Override
	public ArticleReplyReply selectByPrimaryKey(Integer id) {
		return articleReplyReplyMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(ArticleReplyReply record) {
		return articleReplyReplyMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(ArticleReplyReply record) {
		return articleReplyReplyMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(ArticleReplyReply record) {
		return articleReplyReplyMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<ArticleReplyReply> selectByArticleId(Integer articleId) {
		return articleReplyReplyMapper.selectByArticleId(articleId);
	}

}
