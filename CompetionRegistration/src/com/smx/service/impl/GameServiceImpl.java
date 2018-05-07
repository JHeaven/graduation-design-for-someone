package com.smx.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.smx.dao.ComExMapper;
import com.smx.dao.CompetionMapper;
import com.smx.dao.SignExMapper;
import com.smx.dao.SignMapper;
import com.smx.model.ComEx;
import com.smx.model.Competion;
import com.smx.model.Sign;
import com.smx.model.SignEx;
import com.smx.service.IGameService;

@Service
public class GameServiceImpl implements IGameService {

	// ������Ŀ
	@Resource
	CompetionMapper competionMapper = null;

	// ������Ŀ��ϸ��Ŀ
	@Resource
	ComExMapper comExMapper = null;

	// ��������
	@Resource
	SignMapper signMapper = null;

	// ����ѡ�ִ�����ϸ
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

}