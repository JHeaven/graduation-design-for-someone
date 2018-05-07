package com.heaven.dao;

import com.heaven.model.Wechart;
import com.heaven.model.WechartKey;
/**
 * 微信互联dao接口
 * @author HEAVEN
 *
 */
public interface WechartMapper {
    int deleteByPrimaryKey(WechartKey key);

    int insert(Wechart record);

    int insertSelective(Wechart record);

    Wechart selectByPrimaryKey(WechartKey key);

    int updateByPrimaryKeySelective(Wechart record);

    int updateByPrimaryKey(Wechart record);
}