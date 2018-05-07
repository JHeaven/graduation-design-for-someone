package com.commer.dao.mapper.base;

import com.ac.base.dao.BaseMapper;
import com.commer.dao.entity.AdminpeopleEty;

public interface AdminpeopleMapper extends BaseMapper<AdminpeopleEty> {
	public AdminpeopleEty selectByName(AdminpeopleEty adminpeopleEty);

}