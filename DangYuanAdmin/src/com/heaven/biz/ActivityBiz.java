package com.heaven.biz;

import java.util.List;

import com.heaven.dao.ActivityDao;
import com.heaven.vo.Activity;

public class ActivityBiz {
	ActivityDao ad = new ActivityDao();
	public int add(String title, String author, String content, String outtime, int count, String pic, String begintime,
			String endtime) {
		return ad.add(title, author, content, outtime, count, pic, begintime, endtime);
	}
	public int del(int id) {
		return ad.del(id);
	}
	public int update(String title, String author, String content, String outtime, String pic, String begintime,
			String endtime, int id) {
		return ad.update(title, author, content, outtime, pic, begintime, endtime, id);
	}
	public List<Activity> getAllActivity( ) {
		return ad.getAllArticle();
	}
	public int readCount(int id) {
		return ad.readCount(id);
	}
	public Activity getOneArticle(int id ) {
		return ad.getOneArticle(id);
	}
}
