package com.heaven.service.impl;
/**
 * »î¶¯
 */
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.heaven.dao.ActivityMapper;
import com.heaven.model.Activity;
import com.heaven.service.IActivityService;
@Service
public class ActivityServiceImpl implements IActivityService {
	
	@Resource
	ActivityMapper activityMapper= null;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return activityMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Activity record) {
		return activityMapper.insert(record);
	}

	@Override
	public int insertSelective(Activity record) {
		return activityMapper.insertSelective(record);
	}

	@Override
	public Activity selectByPrimaryKey(Integer id) {
		return activityMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Activity record) {
		return activityMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(Activity record) {
		return activityMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(Activity record) {
		return activityMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Activity> selectAll() {
		return activityMapper.selectAll();
	}

}
