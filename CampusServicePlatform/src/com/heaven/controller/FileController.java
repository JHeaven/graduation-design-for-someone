package com.heaven.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.mail.internet.MimeUtility;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.heaven.model.ShareFile;
import com.heaven.model.ShareFolder;
import com.heaven.model.User;
import com.heaven.service.IFileAndFolderService;
import com.heaven.utils.FileManager;


/**
 * 校园网盘
 * @author HEAVEN
 *
 */
@Controller
@RequestMapping("/file")
public class FileController {
	@Resource
	IFileAndFolderService fileAndFolderService = null;
	
	/**
	 * 初始跟文件夹内容
	 * @return
	 */
	@RequestMapping("/fileSelect")
	public ModelAndView fileSelect(){
		String folderMessage = "当前为顶级目录";
		String [] colors = {"default","success","primary","danger","info","gold","blue","orange","red"};
		Random ra =new Random();
		ModelAndView mv = new ModelAndView();
		ShareFolder condition = new ShareFolder();
		condition.setSharefolderDesc("/");
		List<ShareFolder> folders = fileAndFolderService.selectAllFolderByDesc(condition);
		Iterator<ShareFolder> folder = folders.iterator();
		while (folder.hasNext()) {
			folder.next().setColor("entypo-folder");
		}
		mv.addObject("folders",folders);
		mv.addObject("folderMessage",folderMessage);
		mv.setViewName("page/fileSelect");
		return mv;
	}
	
	/**
	 * 进入文件夹
	 * @return
	 */
	@RequestMapping("/goToNextFolder/{folderId}")
	public ModelAndView goToNextFolder(@PathVariable("folderId")Integer folderId){
		//获取当前文件夹的信息
		ShareFolder folder = fileAndFolderService.selectFoderByPrimaryKey(folderId);
		String folderMessage = "当前路径："+folder.getSharefolderDesc()+folder.getSharefolderName()+" , 该文件夹由【"+folder.getUser().getNickName()+"】创建于"+folder.getOutTime();
		
		//获取此文件夹中的文件夹
		ShareFolder conditionFolder = new ShareFolder();
		conditionFolder.setIsdelete(0);
		conditionFolder.setSharefolderDesc(folder.getSharefolderDesc()+folder.getSharefolderName()+"/");
		List<ShareFolder> folders = fileAndFolderService.selectAllFolderByDesc(conditionFolder);
		for (Iterator<ShareFolder> iterator = folders.iterator(); iterator.hasNext();) {
			ShareFolder shareFolder = iterator.next();
			shareFolder.setColor("entypo-folder");
		}
		
		//获取此文件夹中的文件
		ShareFile conditionFile = new ShareFile();
		conditionFile.setSharefolderId(folderId);
		conditionFile.setIsdelete(0);
		List<ShareFile> files = fileAndFolderService.selectAllFile(conditionFile);
		for (Iterator<ShareFile> iterator = files.iterator(); iterator.hasNext();) {
			ShareFile shareFile = iterator.next();
			if (shareFile.getSharefileType().contains("application")) {
				shareFile.setColor("entypo-newspaper");
			}else if(shareFile.getSharefileType().contains("image")){
				shareFile.setColor("entypo-picture");
			}else{
				shareFile.setColor("entypo-tag");
			}
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("folders",folders);
		mv.addObject("files",files);
		mv.addObject("folder",folder);
		mv.addObject("folderMessage",folderMessage);
		mv.setViewName("page/fileSelect");
		return mv;
	}
	
	/**
	 * 新建文件夹(待完善)
	 * @param folder
	 * @return
	 */
	@RequestMapping("/insertFolder")
	public ModelAndView insertFolder(ShareFolder newfolder,HttpSession session){
		ModelAndView mv = new ModelAndView();
		ShareFolder folder = fileAndFolderService.selectFoderByPrimaryKey(newfolder.getId());
		String folderMessage = "当前路径："+folder.getSharefolderDesc()+folder.getSharefolderName()+" , 该文件夹由【"+folder.getUser().getNickName()+"】创建于"+folder.getOutTime();
		//存储新的文件夹
		newfolder.setOutTime(new Date());
		newfolder.setIsdelete(0);
		newfolder.setSharefolderDesc(folder.getSharefolderDesc()+folder.getSharefolderName()+"/");
		User user = (User) session.getAttribute("usersession");
		newfolder.setUserId(user.getId());
		fileAndFolderService.insertFolder(newfolder);
		
		mv.addObject("folder",folder);
		mv.addObject("folderMessage",folderMessage);
		mv.setViewName("page/fileSelect");
		return mv;
	}
	
	
	
	/**
	 * 接受文件
	 * @return
	 */
	@RequestMapping("/receiveFile/{folderId}")
	@ResponseBody
	public String receiveFile(@PathVariable("folderId") Integer folderId,
			HttpServletRequest request, HttpSession session) {
		// 组建路径
		String savePath = request.getRealPath("../CampusUpload/disk/");
		String filename = System.currentTimeMillis() + "";
		// 判断上传文件的保存目录是否存在
		File filefolder = new File(savePath);
		if (!filefolder.exists() && !filefolder.isDirectory()) {
			System.out.println(savePath + "目录不存在，需要创建");
			// 创建目录
			filefolder.mkdir();
		}

		MultipartHttpServletRequest mRequest = (MultipartHttpServletRequest) request;

		try {
			MultipartFile file = mRequest.getFile("file");
			String fileName = file.getOriginalFilename();
			long fileSize = file.getSize();
			String title = mRequest.getParameter("title");
			System.out.println("title = " + title);
			if (StringUtils.isNotBlank(fileName))// 确保前天提交来的表单中有file
			{
				String serverPhotoSrc = FileManager.fileSaveSrc(file, filename,
						savePath);// 将文件保存，并返回文件名
				System.out.println("serverPhotoSrc=" + serverPhotoSrc);
				// 写入数据库
				User user = (User) session.getAttribute("usersession");
				ShareFile inFile = new ShareFile();
				inFile.setOutTime(new Date());
				inFile.setSharefileName(title);
				inFile.setSharefilePath(serverPhotoSrc);
				inFile.setSharefileType(file.getContentType());
				inFile.setSharefolderId(folderId);
				inFile.setUserId(user.getId());
				inFile.setIsdelete(0);
				inFile.setShatefileSize(fileSize+"");
				fileAndFolderService.insertFile(inFile);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "success";
	}
	
	
	
	
	/**
	 * 下载文件
	 * 
	 * @param fileId
	 * @return
	 */
	@RequestMapping("/downloadFile/{fileId}")
	public ResponseEntity<byte[]> downloadFile(@PathVariable("fileId") int fileId, HttpServletRequest request) {
		String savePath = request.getRealPath("../CampusUpload/disk/");
		ShareFile fileName = fileAndFolderService.selectFileByPrimaryKey(fileId);
		System.out.println("savePath:"+savePath);
		// 指定文件,必须是绝对路径
		File file = new File(savePath+"/"+fileName.getSharefilePath());
		// 下载浏览器响应的那个文件名
		String dfileName = fileName.getSharefileName()+fileName.getSharefilePath().substring(fileName.getSharefilePath().lastIndexOf("."));
		//解决中文名称乱码（Base64转码。chrome浏览器已适配，需要mail.jar）
		try {
			dfileName= MimeUtility.encodeText(dfileName, "UTF8", "B");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		// 下面开始设置HttpHeaders,使得浏览器响应下载
		HttpHeaders headers = new HttpHeaders();
		// 设置响应方式
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		// 设置响应文件
		headers.setContentDispositionFormData("attachment", dfileName);
		// 把文件以二进制形式写回
		ResponseEntity<byte[]> rb = null;
		try {
			rb = new ResponseEntity<byte[]>(
					FileUtils.readFileToByteArray(file), headers,
					HttpStatus.CREATED);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rb;
	}
	
	/**
	 * 删除文件夹
	 * @param upFolderId
	 * @param thisFolderId
	 * @return
	 */
	@RequestMapping("/deleteFolder/{upFolderId}/{thisFolderId}")
	@ResponseBody
	public String deleteFolder(@PathVariable("upFolderId")Integer upFolderId ,@PathVariable("thisFolderId")Integer thisFolderId){
		String result = "success";
		ShareFolder folder = new ShareFolder();
		folder.setId(thisFolderId);
		folder.setIsdelete(1);
		if (fileAndFolderService.updateByPrimaryKeySelective(folder)<=0) {
			result = "failure";
		};
		return result;
	}
	
	
	/**
	 * 删除文件夹
	 * @param upFolderId
	 * @param thisFolderId
	 * @return
	 */
	@RequestMapping("/deleteFile/{upFolderId}/{thisFileId}")
	@ResponseBody
	public String deleteFile(@PathVariable("upFolderId")Integer upFolderId ,@PathVariable("thisFileId")Integer thisFileId){
		String result = "success";
		ShareFile file = new ShareFile();
		file.setId(thisFileId);
		file.setIsdelete(1);
		if (fileAndFolderService.updateByPrimaryKeySelective(file)<=0) {
			result = "failure";
		};
		return result;
	}
	

	/**
	 * 修改文件夹名字
	 * @param upfolderId
	 * @param thisfolderId
	 * @param folderName
	 * @return
	 */
	@RequestMapping("/updateFolder")
	@ResponseBody
	public String updateFolder(@RequestParam("upfolderId")Integer upfolderId,@RequestParam("thisfolderId")Integer thisfolderId,@RequestParam("folderName")String folderName){
		ShareFolder folder = new ShareFolder();
		folder.setId(thisfolderId);
		folder.setSharefolderName(folderName);
		String result = "success";
		if (fileAndFolderService.updateByPrimaryKeySelective(folder)<=0) {
			result="failure";
		}
		return result ;
	}
	
	/**
	 * 修改文件名字
	 * @param upfolderId
	 * @param thisfolderId
	 * @param folderName
	 * @return
	 */
	@RequestMapping("/updateFile")
	@ResponseBody
	public String updateFile(@RequestParam("upfolderId")Integer upfolderId,@RequestParam("thisfileId")Integer thisfileId,@RequestParam("fileName")String fileName){
		ShareFile file = new ShareFile();
		file.setId(thisfileId);
		file.setSharefileName(fileName);
		String result = "success";
		if (fileAndFolderService.updateByPrimaryKeySelective(file)<=0) {
			result="failure";
		}
		return result ;
	}
	
	
	
	/**
	 * 进入我的私人文件夹
	 * @return
	 */
	@RequestMapping("/goToMyNextFolder/{folderId}")
	public ModelAndView goToMyNextFolder(@PathVariable("folderId")Integer folderId,HttpSession session){
		//获取当前文件夹的信息
		ShareFolder folder = fileAndFolderService.selectFoderByPrimaryKey(folderId);
		String folderMessage = "当前路径："+folder.getSharefolderDesc()+folder.getSharefolderName()+" , 该文件夹由【"+folder.getUser().getNickName()+"】创建于"+folder.getOutTime();

		//获取此文件夹中的文件夹
		ShareFolder conditionFolder = new ShareFolder();
		User user = (User) session.getAttribute("usersession");
		conditionFolder.setIsdelete(0);
		conditionFolder.setUserId(user.getId());
		conditionFolder.setSharefolderDesc(folder.getSharefolderDesc()+folder.getSharefolderName()+"/");
		List<ShareFolder> folders = fileAndFolderService.selectAllFolderByDesc(conditionFolder);
		for (Iterator<ShareFolder> iterator = folders.iterator(); iterator.hasNext();) {
			ShareFolder shareFolder = iterator.next();
			shareFolder.setColor("entypo-folder");
		}
		
		//获取此文件夹中的文件
		ShareFile conditionFile = new ShareFile();
		conditionFile.setSharefolderId(folderId);
		conditionFile.setUserId(user.getId());
		conditionFile.setIsdelete(0);
		List<ShareFile> files = fileAndFolderService.selectAllFile(conditionFile);
		for (Iterator<ShareFile> iterator = files.iterator(); iterator.hasNext();) {
			ShareFile shareFile = iterator.next();
			if (shareFile.getSharefileType().contains("application")) {
				shareFile.setColor("entypo-newspaper");
			}else if(shareFile.getSharefileType().contains("image")){
				shareFile.setColor("entypo-picture");
			}else{
				shareFile.setColor("entypo-tag");
			}
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("folders",folders);
		mv.addObject("files",files);
		mv.addObject("folder",folder);
		mv.addObject("folderMessage",folderMessage);
		mv.setViewName("page/fileSelect");
		return mv;
	}
	
	@RequestMapping("/tempFileView/{folderId}")
	public ModelAndView tempFileView(@PathVariable("folderId")Integer folderId,HttpSession session){
		ShareFile sharefile = new ShareFile();
		ShareFolder sharefolder = new ShareFolder();
		sharefolder.setId(folderId);
		sharefile.setSharefolderId(folderId);
		List<ShareFile> fileList = fileAndFolderService.selectAllFile(sharefile);
		//图标
		for (Iterator iterator = fileList.iterator(); iterator.hasNext();) {
			ShareFile shareFile = (ShareFile) iterator.next();
			if (shareFile.getSharefileType().contains("application")) {
				shareFile.setColor("entypo-newspaper");
			}else if(shareFile.getSharefileType().contains("image")){
				shareFile.setColor("entypo-picture");
			}else{
				shareFile.setColor("entypo-tag");
			}
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("folder",sharefolder);
		mv.addObject("fileList",fileList);
		mv.setViewName("page/articleInsertPart");
		return mv;
	}
	
}
