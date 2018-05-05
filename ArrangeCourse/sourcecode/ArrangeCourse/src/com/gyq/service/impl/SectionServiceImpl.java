package com.gyq.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gyq.dao.SectionMapper;
import com.gyq.model.Section;
import com.gyq.service.ISectionService;

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
	public List<Section> selectall() {
		// TODO Auto-generated method stub
		return sectionMapper.selectall();
	}

}
