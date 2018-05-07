package com.mebx.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.mebx.dao.ReviewMapper;
import com.mebx.model.Review;
import com.mebx.model.ReviewWithBLOBs;
import com.mebx.service.IReviewService;

@Service
public class ReviewServiceImpl implements IReviewService{

	@Resource
	ReviewMapper reviewMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return reviewMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(ReviewWithBLOBs record) {
		// TODO Auto-generated method stub
		return reviewMapper.insert(record);
	}

	@Override
	public int insertSelective(ReviewWithBLOBs record) {
		// TODO Auto-generated method stub
		return reviewMapper.insertSelective(record);
	}

	@Override
	public ReviewWithBLOBs selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return reviewMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(ReviewWithBLOBs record) {
		// TODO Auto-generated method stub
		return reviewMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(ReviewWithBLOBs record) {
		// TODO Auto-generated method stub
		return reviewMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(Review record) {
		// TODO Auto-generated method stub
		return reviewMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<ReviewWithBLOBs> selectall(Integer id) {
		// TODO Auto-generated method stub
		return reviewMapper.selectall(id);
	}

	@Override
	public List<ReviewWithBLOBs> selecthot() {
		// TODO Auto-generated method stub
		return reviewMapper.selecthot();
	}

}
