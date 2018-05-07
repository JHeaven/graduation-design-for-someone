package com.heaven.dao;


public class Activity_PepoleDao extends BaseDao {
	public int add(String stu_no, int activity_no) {
		String sql = "insert into activity_people (stu_no,activity_no) VALUES (?,?)";
		Object[] params = { stu_no, activity_no };
		return excuteUpdate(sql, params);
	}

	public int del(String stu_no) {
		String sql = "delete from activity_people where stu_no = ?";
		Object[] params = { stu_no };
		return excuteUpdate(sql, params);
	}

	public int getNum(int activity_no) {
		int num = 0;
		String sql = "SELECT COUNT(*) as num FROM activity_people WHERE activity_people.activity_no = ?";
		Object[] params = { activity_no };
		rs = excuteQuery(sql, params);
		try {
			while (rs.next()) {
				num = rs.getInt(1);
			}
		} catch (Exception e) {
		}
		
		return num;
	}
	
	
	public int isok(String stu_no, int activity_no){
		int num = 0;
		String sql = "SELECT COUNT(*) as num FROM activity_people WHERE activity_no = ? and stu_no=?";
		Object[] params = { activity_no ,stu_no};
		rs = excuteQuery(sql, params);
		try {
			while (rs.next()) {
				num = rs.getInt(1);
			}
		} catch (Exception e) {
		}
		
		return num;
	}
}
