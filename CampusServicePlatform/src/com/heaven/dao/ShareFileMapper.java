package com.heaven.dao;

import java.util.List;

import com.heaven.model.ShareFile;
/**
 * 文件dao接口
 * @author HEAVEN
 *
 */
public interface ShareFileMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ShareFile record);

    int insertSelective(ShareFile record);

    ShareFile selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ShareFile record);

    int updateByPrimaryKey(ShareFile record);
    
    List<ShareFile> selectAllFile(ShareFile record);
}