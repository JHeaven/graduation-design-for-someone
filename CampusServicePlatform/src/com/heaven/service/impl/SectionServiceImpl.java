package com.heaven.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.heaven.dao.SectionMapper;
import com.heaven.model.Section;
import com.heaven.service.ISectionService;
@Service
/**
 * ª∞Ã‚
 * @author HEAVEN
 *
 */
public class SectionServiceImpl implements ISectionService {
	@Resource
	SectionMapper sectionMapper  = null;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return sectionMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Section record) {
		return sectionMapper.insert(record);
	}

	@Override
	public int insertSelective(Section record) {
		return sectionMapper.insertSelective(record);
	}

	@Override
	public Section selectByPrimaryKey(Integer id) {
		return sectionMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Section record) {
		return sectionMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Section record) {
		return sectionMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Section> selectAllByParent(Integer parentId) {
		return sectionMapper.selectAllByParent(parentId);
	}
	
}
