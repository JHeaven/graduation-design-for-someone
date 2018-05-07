package com.heaven.dao;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.heaven.vo.Student;

public class StudentDao extends BaseDao {
	public List<Student> getAll() {
		Student student = null;
		List<Student> StudentInfo = new ArrayList<Student>();
		String sql = "select * from student";
		Object[] params = {};
		rs = excuteQuery(sql, params);
		try {
			while (rs.next()) {
				student = new Student();
				student.setId(rs.getString("id"));
				student.setName(rs.getString("name"));
				student.setPwd(rs.getString("pwd"));
				student.setBanji(rs.getString("banji"));
				student.setSex(rs.getString("sex"));
				student.setAge(rs.getInt("age"));
				student.setXi(rs.getString("xi"));
				student.setZhuanye(rs.getString("zhuanye"));
				student.setLasttime(rs.getString("lasttime"));
				StudentInfo.add(student);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return StudentInfo;
	}

	public int addQuick(String id) {
		String sql = "insert into student (id,pwd) values (?,?)";
		Object[] params = { id, id };
		return excuteUpdate(sql, params);

	}

	public int del(String id) {
		String sql = "delete from student where id = ?";
		Object[] params = { id };
		return excuteUpdate(sql, params);
	}

	public int LoginCheck(String id, String pwd) {
		String sql = "select count(*) as com from student where id=? and pwd=?";
		Object[] params = { id, pwd };
		rs = excuteQuery(sql, params);
		int com = 0;
		try {
			while (rs.next()) {
				com = rs.getInt("com");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return com;
	}

	public Student getOneById(String id) {
		Student student = null;

		String sql = "select * from student where id=?";
		Object[] params = { id };
		rs = excuteQuery(sql, params);
		try {
			while (rs.next()) {
				student = new Student();
				student.setId(rs.getString("id"));
				student.setName(rs.getString("name"));
				student.setPwd(rs.getString("pwd"));
				student.setBanji(rs.getString("banji"));
				student.setSex(rs.getString("sex"));
				student.setAge(rs.getInt("age"));
				student.setXi(rs.getString("xi"));
				student.setZhuanye(rs.getString("zhuanye"));
				student.setLasttime(rs.getString("lasttime"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return student;
	}

	public int changeOne(String id, String name, String pwd, String banji, String sex, int age, String xi,
			String zhuanye) {
		String sql = "UPDATE student SET name=?,pwd=?,banji=?,sex=?,age=?,xi=?,zhuanye=? where id=?";
		Object params[] = { name, pwd, banji, sex, age, xi, zhuanye, id };
		return excuteUpdate(sql, params);

	}
	
	
	public int LoginFlag(String id){
		//获取当前时间
		SimpleDateFormat dateFormater = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		Date date=new Date();
		String time = dateFormater.format(date);
		String sql = "UPDATE student SET lasttime = ? where id=?";
		Object [] params = {time,id};
		return excuteUpdate(sql, params);
	}
	
}
