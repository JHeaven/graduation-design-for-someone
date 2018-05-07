package com.yy.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yy.dao.NewsMapper;
import com.yy.model.News;
import com.yy.service.INewsService;


@Service
public class NewsServiceImpl implements INewsService {

	@Resource
	NewsMapper newsMapper = null;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return newsMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(News record) {
		// TODO Auto-generated method stub
		return newsMapper.insert(record);
	}

	@Override
	public int insertSelective(News record) {
		// TODO Auto-generated method stub
		return newsMapper.insertSelective(record);
	}

	@Override
	public News selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return newsMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(News record) {
		// TODO Auto-generated method stub
		return newsMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(News record) {
		// TODO Auto-generated method stub
		return newsMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(News record) {
		// TODO Auto-generated method stub
		return newsMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<News> selectAll() {
		// TODO Auto-generated method stub
		return newsMapper.selectAll();
	}

}
