package com.heaven.biz;

import com.heaven.dao.AdminDao;

public class AdminBiz {
	AdminDao ad = new AdminDao();
	
	public boolean isLogin(String name,String pwd){
		return ad.isLogin(name, pwd);
	}
}
