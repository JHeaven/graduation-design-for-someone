package com.heaven.service;

import java.util.List;

import com.heaven.model.ShareFile;
import com.heaven.model.ShareFolder;
/**
 * 网盘service接口
 * @author HEAVEN
 *
 */
public interface IFileAndFolderService {
	
	/**
	 * 检索文件夹下的文件夹
	 * @param folder
	 * @return
	 */
    List<ShareFolder> selectAllFolderByDesc(ShareFolder folder);
    /**
     * 获取单个文件夹信息
     * @param id
     * @return
     */
    ShareFolder selectFoderByPrimaryKey(Integer id);
    
    /**
     * 新建文件夹
     * @param record
     * @return
     */
    int insertFolder(ShareFolder record);
    /**
     * 上传文件
     * @param inFile
     * @return
     */
	int insertFile(ShareFile inFile);
	/**
     * 当前文件夹下所有的文件
     * @param record
     * @return
     */
    List<ShareFile> selectAllFile(ShareFile record);

    /**
     * 按id获取单个文件信息
     * @param id
     * @return
     */
    ShareFile selectFileByPrimaryKey(Integer id);

    /**
     * 文件夹按需更新
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(ShareFolder record);
    /**
     * 文件按需更新
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(ShareFile record);

    /**
     * 文件夹信息多条件获取
     * @param folder
     * @return
     */
    ShareFolder selectByMoreInfo(ShareFolder folder);

}
