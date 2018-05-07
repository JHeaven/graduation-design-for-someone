package com.yy.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yy.dao.CommodityMapper;
import com.yy.model.Commodity;
import com.yy.model.CommodityWithBLOBs;
import com.yy.service.ICommodityService;

@Service
public class CommodityServiceImpl implements ICommodityService {

	@Resource
	CommodityMapper commodityMapper= null;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return commodityMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(CommodityWithBLOBs record) {
		// TODO Auto-generated method stub
		return commodityMapper.insert(record);
	}

	@Override
	public int insertSelective(CommodityWithBLOBs record) {
		// TODO Auto-generated method stub
		return commodityMapper.insertSelective(record);
	}

	@Override
	public CommodityWithBLOBs selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return commodityMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(CommodityWithBLOBs record) {
		// TODO Auto-generated method stub
		return commodityMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(CommodityWithBLOBs record) {
		// TODO Auto-generated method stub
		return commodityMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(Commodity record) {
		// TODO Auto-generated method stub
		return commodityMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<CommodityWithBLOBs> selectAll() {
		// TODO Auto-generated method stub
		return commodityMapper.selectAll();
	}

}
