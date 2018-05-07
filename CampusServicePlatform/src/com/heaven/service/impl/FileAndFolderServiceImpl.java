package com.heaven.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.heaven.dao.ShareFileMapper;
import com.heaven.dao.ShareFolderMapper;
import com.heaven.model.ShareFile;
import com.heaven.model.ShareFolder;
import com.heaven.service.IFileAndFolderService;
@Service
/**
 * ª∞Ã‚
 * @author HEAVEN
 *
 */
public class FileAndFolderServiceImpl implements IFileAndFolderService {
	@Resource
	ShareFolderMapper shareFolderMapper = null;
	@Resource
	ShareFileMapper shareFileMapper = null;
	
	@Override
	public List<ShareFolder> selectAllFolderByDesc(ShareFolder folder) {
		return shareFolderMapper.selectAllFolder(folder);
	}


	@Override
	public ShareFolder selectFoderByPrimaryKey(Integer id) {
		return shareFolderMapper.selectByPrimaryKey(id);
	}


	@Override
	public int insertFolder(ShareFolder record) {
		return shareFolderMapper.insert(record);
	}


	@Override
	public int insertFile(ShareFile inFile) {
		return shareFileMapper.insert(inFile);
	}


	@Override
	public List<ShareFile> selectAllFile(ShareFile record) {
		return shareFileMapper.selectAllFile(record);
	}


	@Override
	public ShareFile selectFileByPrimaryKey(Integer id) {
		return shareFileMapper.selectByPrimaryKey(id);
	}


	@Override
	public int updateByPrimaryKeySelective(ShareFolder record) {
		return shareFolderMapper.updateByPrimaryKeySelective(record);
	}


	@Override
	public int updateByPrimaryKeySelective(ShareFile record) {
		return shareFileMapper.updateByPrimaryKeySelective(record);
	}


	@Override
	public ShareFolder selectByMoreInfo(ShareFolder folder) {
		return shareFolderMapper.selectByMoreInfo(folder);
	}
	
}
