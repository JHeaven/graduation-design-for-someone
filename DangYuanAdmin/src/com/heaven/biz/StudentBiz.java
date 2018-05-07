package com.heaven.biz;

import java.util.List;

import com.heaven.dao.StudentDao;
import com.heaven.vo.Student;

public class StudentBiz {
	StudentDao sd = new StudentDao();
	
	public List<Student> getAll(){
		return sd.getAll();
	}
	
	public int  addQuick(String id){
		
		return sd.addQuick(id);
	}
	
	public int  del(String id){
		
		return sd.del(id);
	}
	
	public int LoginCheck(String id,String pwd){
		return sd.LoginCheck(id, pwd);
	}
	
	public Student getOneById(String id){
		return sd.getOneById(id);
	}
	
	public int changeOne(String id, String name, String pwd, String banji, String sex, int age, String xi,
			String zhuanye) {
		return sd.changeOne(id, name, pwd, banji, sex, age, xi, zhuanye);
	}
	public int LoginFlag(String id){
		return sd.LoginFlag(id);
	}
}
