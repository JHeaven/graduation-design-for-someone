package com.lm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lm.dao.TableMapper;
import com.lm.model.Table;
import com.lm.service.ITableService;

@Service
public class TableServiceImpl implements ITableService {

	@Resource
	TableMapper tableMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return tableMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Table record) {
		// TODO Auto-generated method stub
		return tableMapper.insert(record);
	}

	@Override
	public int insertSelective(Table record) {
		// TODO Auto-generated method stub
		return tableMapper.insertSelective(record);
	}

	@Override
	public Table selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return tableMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Table record) {
		// TODO Auto-generated method stub
		return tableMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Table record) {
		// TODO Auto-generated method stub
		return tableMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Table> all() {
		// TODO Auto-generated method stub
		return tableMapper.all();
	}

}
