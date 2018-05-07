package com.heaven.dao;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.heaven.biz.Activity_PeopleBiz;
import com.heaven.vo.Activity;

public class ActivityDao extends BaseDao {
	public int add(String title, String author, String content, String outtime, int count, String pic, String begintime,
			String endtime) {
		String sql = "insert into activity (title,author,content,outtime,count,pic,begintime,endtime) values (?,?,?,?,?,?,?,?)";
		Object[] params = { title, author, content, outtime, count, pic, begintime, endtime };
		return excuteUpdate(sql, params);
	}

	public int del(int id) {
		String sql = "delete from activity where rec_id = ?";
		Object[] params = { id };
		return excuteUpdate(sql, params);
	}

	public int update(String title, String author, String content, String outtime, String pic, String begintime,
			String endtime, int id) {
		String sql = "UPDATE activity SET title = ?,author = ?,content = ?,outtime = ?,pic = ?,begintime= ?, endtime= ? WHERE rec_id =?";
		Object[] params = { title, author, content, outtime, pic, begintime, endtime, id };
		return excuteUpdate(sql, params);
	}
	
	
	public List<Activity> getAllArticle( ) {
		Activity_PeopleBiz ap = new Activity_PeopleBiz();
		List<Activity> ActivityList = new ArrayList<Activity>();
		Activity oneArt;
		String sql = "SELECT activity.rec_id, activity.title, activity.author, left(activity.content,300) as content, activity.outtime, activity.count, activity.pic, activity.begintime, activity.endtime FROM activity order by rec_id desc";
		//String sql = "SELECT aiticle.rec_id,aiticle.title,aiticle.author,aiticle.count,aiticle.outtime,left(aiticle.content,300) as content,aiticle.pic FROM aiticle WHERE aiticle.belong=? order by rec_id";
		Object[] params = {  };
		rs = excuteQuery(sql, params);
		try {
			while (rs.next()) {
				oneArt = new Activity();
				oneArt.setId(rs.getInt("rec_id"));
				//获取人数
				oneArt.setRen(ap.getNum(oneArt.getId()));
				
				oneArt.setTitle(rs.getString("title"));
				oneArt.setAuthor(rs.getString("author"));
				oneArt.setCount(rs.getInt("count"));

				String timechuo1 = rs.getString("outtime");
				String timechuo2 = rs.getString("begintime");
				String timechuo3 = rs.getString("endtime");
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
				String sd1 = sdf.format(new Date(Long.parseLong(String.valueOf(timechuo1)))); // 时间戳转换成时间
				String sd2 = sdf.format(new Date(Long.parseLong(String.valueOf(timechuo2)))); 
				String sd3 = sdf.format(new Date(Long.parseLong(String.valueOf(timechuo3)))); 
				oneArt.setOuttime(sd1);
				oneArt.setBegintime(sd2);
				oneArt.setEndtime(sd3);
				
				//oneArt.setContent(rs.getString("content"));
				
				oneArt.setContent("");
				oneArt.setPic(rs.getString("pic"));
				
				ActivityList.add(oneArt);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ActivityList;
	}
	
	
	
	
	
	
	public Activity getOneArticle(int id ) {
		Activity_PeopleBiz ap = new Activity_PeopleBiz();
		Activity oneArt=null;
		String sql = "SELECT activity.rec_id, activity.title, activity.author, activity.content, activity.outtime, activity.count, activity.pic, activity.begintime, activity.endtime FROM activity order by rec_id";
		//String sql = "SELECT aiticle.rec_id,aiticle.title,aiticle.author,aiticle.count,aiticle.outtime,left(aiticle.content,300) as content,aiticle.pic FROM aiticle WHERE aiticle.belong=? order by rec_id";
		Object[] params = {  };
		rs = excuteQuery(sql, params);
		try {
			while (rs.next()) {
				oneArt = new Activity();
				oneArt.setId(rs.getInt("rec_id"));
				//获取人数
				oneArt.setRen(ap.getNum(oneArt.getId()));
				
				oneArt.setTitle(rs.getString("title"));
				oneArt.setAuthor(rs.getString("author"));
				oneArt.setCount(rs.getInt("count"));

				String timechuo1 = rs.getString("outtime");
				String timechuo2 = rs.getString("begintime");
				String timechuo3 = rs.getString("endtime");
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
				String sd1 = sdf.format(new Date(Long.parseLong(String.valueOf(timechuo1)))); // 时间戳转换成时间
				String sd2 = sdf.format(new Date(Long.parseLong(String.valueOf(timechuo2)))); 
				String sd3 = sdf.format(new Date(Long.parseLong(String.valueOf(timechuo3)))); 
				oneArt.setOuttime(sd1);
				oneArt.setBegintime(sd2);
				oneArt.setEndtime(sd3);
				
				oneArt.setContent(rs.getString("content"));
				oneArt.setPic(rs.getString("pic"));
			
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return oneArt;
	}
	
	
	

	public int readCount(int id) {
		String sql = "UPDATE activity SET count = count+1 WHERE rec_id =?";
		Object[] params = { id };
		return excuteUpdate(sql, params);
	}
}
