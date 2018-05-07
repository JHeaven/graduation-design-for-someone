package com.lm.service;

import java.util.List;

import com.lm.model.Menu;
import com.lm.model.MenuWithBLOBs;

public interface IMenuService {
	int deleteByPrimaryKey(Integer id);

    int insert(MenuWithBLOBs record);

    int insertSelective(MenuWithBLOBs record);

    MenuWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MenuWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(MenuWithBLOBs record);

    int updateByPrimaryKey(Menu record);
    
    List<MenuWithBLOBs> all();
}
