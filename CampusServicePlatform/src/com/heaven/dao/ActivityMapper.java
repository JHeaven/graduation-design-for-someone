package com.heaven.dao;

import java.util.List;

import com.heaven.model.Activity;
/**
 * 活动dao接口
 * @author HEAVEN
 *
 */
public interface ActivityMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Activity record);

    int insertSelective(Activity record);

    Activity selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Activity record);

    int updateByPrimaryKeyWithBLOBs(Activity record);

    int updateByPrimaryKey(Activity record);
    
    List<Activity> selectAll();
}