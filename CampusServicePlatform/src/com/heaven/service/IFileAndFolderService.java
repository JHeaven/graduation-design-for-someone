package com.heaven.service;

import java.util.List;

import com.heaven.model.ShareFile;
import com.heaven.model.ShareFolder;
/**
 * ����service�ӿ�
 * @author HEAVEN
 *
 */
public interface IFileAndFolderService {
	
	/**
	 * �����ļ����µ��ļ���
	 * @param folder
	 * @return
	 */
    List<ShareFolder> selectAllFolderByDesc(ShareFolder folder);
    /**
     * ��ȡ�����ļ�����Ϣ
     * @param id
     * @return
     */
    ShareFolder selectFoderByPrimaryKey(Integer id);
    
    /**
     * �½��ļ���
     * @param record
     * @return
     */
    int insertFolder(ShareFolder record);
    /**
     * �ϴ��ļ�
     * @param inFile
     * @return
     */
	int insertFile(ShareFile inFile);
	/**
     * ��ǰ�ļ��������е��ļ�
     * @param record
     * @return
     */
    List<ShareFile> selectAllFile(ShareFile record);

    /**
     * ��id��ȡ�����ļ���Ϣ
     * @param id
     * @return
     */
    ShareFile selectFileByPrimaryKey(Integer id);

    /**
     * �ļ��а������
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(ShareFolder record);
    /**
     * �ļ��������
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(ShareFile record);

    /**
     * �ļ�����Ϣ��������ȡ
     * @param folder
     * @return
     */
    ShareFolder selectByMoreInfo(ShareFolder folder);

}
