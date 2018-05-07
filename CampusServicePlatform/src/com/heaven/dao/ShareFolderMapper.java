package com.heaven.dao;

import java.util.List;

import com.heaven.model.ShareFolder;
/**
 * �ļ���dao�ӿ�
 * @author HEAVEN
 *
 */
public interface ShareFolderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ShareFolder record);

    int insertSelective(ShareFolder record);

    ShareFolder selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ShareFolder record);

    int updateByPrimaryKey(ShareFolder record);
    
    List<ShareFolder> selectAllFolder(ShareFolder folder);
    
    ShareFolder selectByMoreInfo(ShareFolder folder);
}