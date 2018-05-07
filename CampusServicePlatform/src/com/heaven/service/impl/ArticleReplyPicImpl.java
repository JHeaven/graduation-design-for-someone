package com.heaven.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.heaven.dao.ArticleReplyPicMapper;
import com.heaven.model.ArticleReplyPic;
import com.heaven.model.ArticleReplyPicWithBLOBs;
import com.heaven.service.IArticleReplyPicService;

/**
 * ª∞Ã‚
 * @author HEAVEN
 *
 */
@Service
public class ArticleReplyPicImpl implements IArticleReplyPicService {

	@Resource
	ArticleReplyPicMapper articleReplyPicMapper = null;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return articleReplyPicMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(ArticleReplyPicWithBLOBs record) {
		return articleReplyPicMapper.insert(record);
	}

	@Override
	public int insertSelective(ArticleReplyPicWithBLOBs record) {
		return articleReplyPicMapper.insertSelective(record);
	}

	@Override
	public ArticleReplyPicWithBLOBs selectByPrimaryKey(Integer id) {
		return articleReplyPicMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(ArticleReplyPicWithBLOBs record) {
		return articleReplyPicMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(ArticleReplyPicWithBLOBs record) {
		return updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(ArticleReplyPic record) {
		return articleReplyPicMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<ArticleReplyPicWithBLOBs> selectByArticleId(Integer articleId) {
		return articleReplyPicMapper.selectByArticleId(articleId);
	}

}
