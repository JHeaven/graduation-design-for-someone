package com.heaven.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.heaven.vo.Admin;

public class AdminDao extends BaseDao{
	
	public List<Admin> get(){
		Admin admin = null;
		List<Admin> AdminInfo = new ArrayList<Admin>();
		String sql  = "select * from admin";
		Object[] params = {};
		rs = excuteQuery(sql, params);
		try {
			while (rs.next()){
				admin = new Admin();
				admin.setName(rs.getString("name"));
				admin.setPwd(rs.getString("pwd"));
				System.out.println("name="+admin.getName());
				System.out.println("pwd="+admin.getPwd());
				AdminInfo.add(admin);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return AdminInfo;
	}
	
	public boolean isLogin(String name,String pwd){
		boolean isOk = false;
		String sql  = "select count(*) as admin_num from admin where name=? and pwd=?";
		Object [] params ={name ,pwd};
		rs = excuteQuery(sql, params);
		try {
			rs.next();
			if(rs.getInt("admin_num")>=1){
				isOk = true; 
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return isOk;
	}
}
