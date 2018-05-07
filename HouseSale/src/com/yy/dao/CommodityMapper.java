package com.yy.dao;

import java.util.List;

import com.yy.model.Commodity;
import com.yy.model.CommodityWithBLOBs;

public interface CommodityMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CommodityWithBLOBs record);

    int insertSelective(CommodityWithBLOBs record);

    CommodityWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CommodityWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(CommodityWithBLOBs record);

    int updateByPrimaryKey(Commodity record);
    
    List<CommodityWithBLOBs> selectAll();
}