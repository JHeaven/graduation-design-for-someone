package com.mebx.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mebx.dao.FilmMapper;
import com.mebx.model.Film;
import com.mebx.model.FilmWithBLOBs;
import com.mebx.service.IFilmService;
@Service
public class FilmServiceImpl implements IFilmService {

	@Resource
	FilmMapper filmMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return filmMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(FilmWithBLOBs record) {
		// TODO Auto-generated method stub
		return filmMapper.insert(record);
	}

	@Override
	public int insertSelective(FilmWithBLOBs record) {
		// TODO Auto-generated method stub
		return filmMapper.insertSelective(record);
	}

	@Override
	public FilmWithBLOBs selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return filmMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(FilmWithBLOBs record) {
		// TODO Auto-generated method stub
		return filmMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(FilmWithBLOBs record) {
		// TODO Auto-generated method stub
		return filmMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(Film record) {
		// TODO Auto-generated method stub
		return filmMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<FilmWithBLOBs> selectall() {
		// TODO Auto-generated method stub
		return filmMapper.selectall();
	}

	@Override
	public List<FilmWithBLOBs> selectPage(FilmWithBLOBs record) {
		// TODO Auto-generated method stub
		return filmMapper.selectPage(record);
	}

	@Override
	public List<FilmWithBLOBs> selectHot() {
		// TODO Auto-generated method stub
		return filmMapper.selectHot();
	}

}
