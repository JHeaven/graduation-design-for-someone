package com.heaven.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.heaven.dao.ArticleMapper;
import com.heaven.model.Article;
import com.heaven.service.IArticleService;
@Service
/**
 * ª∞Ã‚
 * @author HEAVEN
 *
 */
public class ArticleServiceImpl implements IArticleService {
	
	@Resource
	ArticleMapper articleMapper = null;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return articleMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Article record) {
		return articleMapper.insert(record);
	}

	@Override
	public int insertSelective(Article record) {
		return articleMapper.insertSelective(record);
	}

	@Override
	public Article selectByPrimaryKey(Integer id) {
		return articleMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Article record) {
		return articleMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(Article record) {
		return articleMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(Article record) {
		return articleMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Article> selectAll() {
		return articleMapper.selectAll();
	}

	@Override
	public List<Article> selectAllByCondition(Article condition,Integer PageNo,Integer pageSize) {
		Map paramMap=new HashMap();
		paramMap.put("condition", condition);
		paramMap.put("PageNo", (PageNo-1)*pageSize);
		paramMap.put("pageSize", pageSize);
		return articleMapper.selectAllByCondition(paramMap);
	}

	@Override
	public int selectCountByCondition(Article record){
		return articleMapper.selectCountByCondition(record);
	}
	
}
