package com.smx.service;

import java.util.List;

import com.smx.model.ComEx;
import com.smx.model.Competion;
import com.smx.model.Sign;
import com.smx.model.SignEx;

public interface IGameService {
	// ����
	public int addGame(Competion com);

	public List<Competion> allGame();

	public Competion selectGameById(Integer id);

	public int updateGameSelective(Competion com);

	public int delGame(Integer id);

	// ������Ŀ
	public int addEx(ComEx ex);

	public List<ComEx> allExOfCom(Integer belong);

	public ComEx selectExById(Integer id);

	public int updateEx(ComEx ex);

	public int delEx(Integer id);

	// ����
	public int addSign(Sign sign);

	public List<Sign> selectAllRegByUserId(Integer stuId);

	public Sign check(Sign record);
	
	public int delSign(Integer id);
	
	public Sign selectSignById(Integer id);
	
	//ѧ����Ŀ
	public int addSignEx(SignEx signEx);
	
	public List<SignEx> getExam(Integer stuId,Integer belong);
	
	public int updateSignEx(SignEx signEx);

	//�ɿ�
	public List<Sign> selectAllByBelong(Integer belong);
	
}
