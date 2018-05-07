package com.mebx.dao;

import java.util.List;

import com.mebx.model.Review;
import com.mebx.model.ReviewWithBLOBs;

public interface ReviewMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ReviewWithBLOBs record);

    int insertSelective(ReviewWithBLOBs record);

    ReviewWithBLOBs selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ReviewWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(ReviewWithBLOBs record);

    int updateByPrimaryKey(Review record);
    
    List<ReviewWithBLOBs> selectall(Integer id);
    
    List<ReviewWithBLOBs> selecthot();
}