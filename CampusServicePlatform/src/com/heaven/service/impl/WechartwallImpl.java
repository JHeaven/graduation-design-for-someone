package com.heaven.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.heaven.dao.WechartwallMapper;
import com.heaven.model.Wechartwall;
import com.heaven.service.IWechartwall;
/**
 * ª∞Ã‚
 * @author HEAVEN
 *
 */
@Service
public class WechartwallImpl implements IWechartwall{
	@Resource
	WechartwallMapper wechartwallMapper = null;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return wechartwallMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Wechartwall record) {
		return wechartwallMapper.insert(record);
	}

	@Override
	public int insertSelective(Wechartwall record) {
		return wechartwallMapper.insertSelective(record);
	}

	@Override
	public Wechartwall selectByPrimaryKey(Integer id) {
		return wechartwallMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Wechartwall record) {
		return wechartwallMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Wechartwall record) {
		return wechartwallMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Wechartwall> selectByFirst() {
		return wechartwallMapper.selectByFirst();
	}

	@Override
	public List<Wechartwall> selectByNext(Integer id) {
		return wechartwallMapper.selectByNext(id);
	}

}
