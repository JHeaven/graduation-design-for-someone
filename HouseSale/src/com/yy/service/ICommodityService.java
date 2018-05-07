package com.yy.service;

import java.util.List;

import com.yy.model.Commodity;
import com.yy.model.CommodityWithBLOBs;

public interface ICommodityService {
	int deleteByPrimaryKey(Integer id);

    int insert(CommodityWithBLOBs record);

    int insertSelective(CommodityWithBLOBs record);

    CommodityWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CommodityWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(CommodityWithBLOBs record);

    int updateByPrimaryKey(Commodity record);

    List<CommodityWithBLOBs> selectAll();

}
