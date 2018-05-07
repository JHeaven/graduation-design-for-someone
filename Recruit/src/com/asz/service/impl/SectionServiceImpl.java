package com.asz.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.asz.dao.SectionMapper;
import com.asz.model.Section;
import com.asz.service.ISectionService;

@Service
public class SectionServiceImpl implements ISectionService {

	
	@Resource
	SectionMapper sectionMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return sectionMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Section record) {
		// TODO Auto-generated method stub
		return sectionMapper.insert(record);
	}

	@Override
	public int insertSelective(Section record) {
		// TODO Auto-generated method stub
		return sectionMapper.insertSelective(record);
	}

	@Override
	public Section selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return sectionMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Section record) {
		// TODO Auto-generated method stub
		return sectionMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Section record) {
		// TODO Auto-generated method stub
		return sectionMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Section> selectByUser(Integer id) {
		// TODO Auto-generated method stub
		return sectionMapper.selectByUser(id);
	}

	@Override
	public List<Section> selectByEn(String enId) {
		// TODO Auto-generated method stub
		return sectionMapper.selectByEn(enId);
	}

}
