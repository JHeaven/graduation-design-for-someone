package com.heaven.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.heaven.dao.ArticleReplyMapper;
import com.heaven.dao.ArticleReplyReplyMapper;
import com.heaven.model.ArticleReply;
import com.heaven.model.ArticleReplyReply;
import com.heaven.service.IArticleReplyService;
/**
 * ª∞Ã‚
 * @author HEAVEN
 *
 */
@Service
public class ArticleReplyServiceImpl implements IArticleReplyService {
	@Resource
	ArticleReplyMapper articleReplyMapper = null;
	@Resource
	ArticleReplyReplyMapper articleReplyReplyMapper = null;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return articleReplyMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(ArticleReply record) {
		return articleReplyMapper.insert(record);
	}

	@Override
	public int insertSelective(ArticleReply record) {
		return articleReplyMapper.insertSelective(record);
	}

	@Override
	public ArticleReply selectByPrimaryKey(Integer id) {
		return articleReplyMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(ArticleReply record) {
		return articleReplyMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(ArticleReply record) {
		return articleReplyMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(ArticleReply record) {
		return articleReplyMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<ArticleReply> selectByArticleId(Integer articleId) {
		List<ArticleReply> thisComment = articleReplyMapper.selectByArticleId(articleId);
		List<ArticleReplyReply> articleReplyReply = articleReplyReplyMapper.selectByArticleId(articleId);
		for (int i = 0; i < thisComment.size(); i++) {
			for (int j = 0; j < articleReplyReply.size(); j++) {
				if (thisComment.get(i).getId() == articleReplyReply.get(j).getReplyId()) {
					if (thisComment.get(i).getArticleReplyReply() == null) {
						thisComment.get(i).setArticleReplyReply(new ArrayList<ArticleReplyReply>());
					}
					thisComment.get(i).getArticleReplyReply().add(articleReplyReply.get(j));
				}
			}
		}
		return thisComment;
	}
	
}
