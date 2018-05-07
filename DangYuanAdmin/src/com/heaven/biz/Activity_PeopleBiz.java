package com.heaven.biz;

import com.heaven.dao.Activity_PepoleDao;

public class Activity_PeopleBiz {
	
	Activity_PepoleDao ap = new Activity_PepoleDao();
	public int add(String stu_no, int activity_no) {
		return ap.add(stu_no, activity_no);
	}
	
	public int del(String stu_no) {
		return ap.del(stu_no);
	}
	
	public int getNum(int activity_no) {
		return ap.getNum(activity_no);
	}
	
	public int isok(String stu_no, int activity_no){
		return ap.isok(stu_no, activity_no);
	}
}
