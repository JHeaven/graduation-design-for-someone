package com.lyh.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lyh.dao.CommodityMapper;
import com.lyh.model.Commodity;
import com.lyh.model.CommodityWithBLOBs;
import com.lyh.service.ICommodityService;

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
