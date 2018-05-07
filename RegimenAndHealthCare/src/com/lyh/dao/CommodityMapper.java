package com.lyh.dao;

import java.util.List;

import com.lyh.model.Commodity;
import com.lyh.model.CommodityWithBLOBs;

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