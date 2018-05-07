package com.lm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lm.dao.MenuMapper;
import com.lm.model.Menu;
import com.lm.model.MenuWithBLOBs;
import com.lm.service.IMenuService;
@Service
public class MenuServiceImpl implements IMenuService {

	
	@Resource
	MenuMapper menuMapper;
	
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return menuMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(MenuWithBLOBs record) {
		// TODO Auto-generated method stub
		return menuMapper.insert(record);
	}

	@Override
	public int insertSelective(MenuWithBLOBs record) {
		// TODO Auto-generated method stub
		return menuMapper.insertSelective(record);
	}

	@Override
	public MenuWithBLOBs selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return menuMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(MenuWithBLOBs record) {
		// TODO Auto-generated method stub
		return menuMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(MenuWithBLOBs record) {
		// TODO Auto-generated method stub
		return menuMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(Menu record) {
		// TODO Auto-generated method stub
		return menuMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<MenuWithBLOBs> all() {
		// TODO Auto-generated method stub
		return menuMapper.all();
	}

}
