package com.zys.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zys.dao.ComExMapper;
import com.zys.dao.CompetionMapper;
import com.zys.dao.SignExMapper;
import com.zys.dao.SignMapper;
import com.zys.model.ComEx;
import com.zys.model.Competion;
import com.zys.model.Sign;
import com.zys.model.SignEx;
import com.zys.service.IGameService;

@Service
public class GameServiceImpl implements IGameService {

	// 考试项目
	@Resource
	CompetionMapper competionMapper = null;

	// 考试项目详细题目
	@Resource
	ComExMapper comExMapper = null;

	// 考试报名
	@Resource
	SignMapper signMapper = null;

	// 考试选手答题详细
	@Resource
	SignExMapper signExMapper = null;

	@Override
	public int addGame(Competion com) {
		return competionMapper.insertSelective(com);
	}

	@Override
	public List<Competion> allGame() {
		// TODO Auto-generated method stub
		return competionMapper.selectAll();
	}

	@Override
	public Competion selectGameById(Integer id) {
		return competionMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateGameSelective(Competion com) {
		// TODO Auto-generated method stub
		return competionMapper.updateByPrimaryKeySelective(com);
	}

	@Override
	public int delGame(Integer id) {
		// TODO Auto-generated method stub
		return competionMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int addEx(ComEx ex) {
		// TODO Auto-generated method stub
		return comExMapper.insertSelective(ex);
	}

	@Override
	public List<ComEx> allExOfCom(Integer belong) {
		// TODO Auto-generated method stub
		return comExMapper.selectByBelong(belong);
	}

	@Override
	public ComEx selectExById(Integer id) {
		// TODO Auto-generated method stub
		return comExMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateEx(ComEx ex) {
		// TODO Auto-generated method stub
		return comExMapper.updateByPrimaryKeySelective(ex);
	}

	@Override
	public int delEx(Integer id) {
		// TODO Auto-generated method stub
		return comExMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int addSign(Sign sign) {
		// TODO Auto-generated method stub
		return signMapper.insertSelective(sign);
	}

	@Override
	public List<Sign> selectAllRegByUserId(Integer stuId) {
		// TODO Auto-generated method stub
		return signMapper.selectAllByUserId(stuId);
	}

	@Override
	public Sign check(Sign sign) {
		// TODO Auto-generated method stub
		return signMapper.check(sign);
	}

	@Override
	public int delSign(Integer id) {
		// TODO Auto-generated method stub
		return signMapper.deleteByPrimaryKey(id);
	}

	@Override
	public Sign selectSignById(Integer id) {
		// TODO Auto-generated method stub
		return signMapper.selectByPrimaryKey(id);
	}

	@Override
	public int addSignEx(SignEx signEx) {
		// TODO Auto-generated method stub
		return signExMapper.insertSelective(signEx);
	}

	@Override
	public List<SignEx> getExam(Integer stuId,Integer belong) {
		SignEx signEx = new SignEx();
		signEx.setStuId(stuId);
		signEx.setBelong(belong);
		return signExMapper.selectByUserIdAndBelong(signEx);
	}

	@Override
	public int updateSignEx(SignEx signEx) {
		// TODO Auto-generated method stub
		return signExMapper.updateByPrimaryKeySelective(signEx);
	}

	@Override
	public List<Sign> selectAllByBelong(Integer belong) {
		// TODO Auto-generated method stub
		return signMapper.selectAllByBelong(belong);
	}

	@Override
	public List<ComEx> allComEx() {
		// TODO Auto-generated method stub
		return comExMapper.all();
	}

}
