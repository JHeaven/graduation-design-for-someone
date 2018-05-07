package com.asz.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.asz.dao.ResumeMapper;
import com.asz.model.Resume;
import com.asz.service.IResumeService;
@Service
public class ResumeServiceImpl implements IResumeService {

	@Resource
	ResumeMapper resumeMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return resumeMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Resume record) {
		// TODO Auto-generated method stub
		return resumeMapper.insert(record);
	}

	@Override
	public int insertSelective(Resume record) {
		// TODO Auto-generated method stub
		return resumeMapper.insertSelective(record);
	}

	@Override
	public Resume selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return resumeMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Resume record) {
		// TODO Auto-generated method stub
		return resumeMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(Resume record) {
		// TODO Auto-generated method stub
		return resumeMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(Resume record) {
		// TODO Auto-generated method stub
		return resumeMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Resume> all() {
		// TODO Auto-generated method stub
		return resumeMapper.all();
	}

}
