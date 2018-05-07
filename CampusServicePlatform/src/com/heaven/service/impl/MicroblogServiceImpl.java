package com.heaven.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.heaven.dao.MicroblogMapper;
import com.heaven.model.Microblog;
import com.heaven.service.IMicroblogService;
/**
 * 
 * @author HEAVEN
 *
 */
@Service
public class MicroblogServiceImpl implements IMicroblogService{
	@Resource
	MicroblogMapper microblogMapper = null;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return microblogMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Microblog record) {
		return microblogMapper.insert(record);
	}

	@Override
	public int insertSelective(Microblog record) {
		return microblogMapper.insertSelective(record);
	}

	@Override
	public Microblog selectByPrimaryKey(Integer id) {
		return microblogMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Microblog record) {
		return microblogMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(Microblog record) {
		return microblogMapper.updateByPrimaryKeyWithBLOBs(record);
	}

	@Override
	public int updateByPrimaryKey(Microblog record) {
		return microblogMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Microblog> selectLatest(Integer pageNo) {
		return microblogMapper.selectLatest((pageNo-1)*10);
	}

	@Override
	public int dianzan(Integer id) {
		return microblogMapper.dianzan(id);
	}

	@Override
	public List<Microblog> selectOfMy(Integer id) {
		return microblogMapper.selectOfMy(id);
	}

	@Override
	public List<Microblog> selectPop10() {
		return microblogMapper.selectPop10();
	}

}
