package com.commer.dao.mapper.base;

import com.ac.base.dao.BaseMapper;
import com.commer.dao.entity.UserpeopleEty;

public interface UserpeopleMapper extends BaseMapper<UserpeopleEty> {
	public UserpeopleEty selectByName(UserpeopleEty userpeopleEty);

}