package com.heaven.utils;

import java.io.File;
import java.io.IOException;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.multipart.MultipartFile;
/**
 * 文件上传类
 * @author HEAVEN
 *
 */
public class FileManager {

	public static String fileSaveSrc( MultipartFile file, String fileName,  
	           String fileSrc ) throws IOException  
	   {  
	       String fileOriginalName = file.getOriginalFilename();  
	       if ( StringUtils.isNotBlank( fileOriginalName ) )//确保传入file不是null  
	       {  
	           String fileType = fileOriginalName  
	                   .substring( fileOriginalName.lastIndexOf( "." ) );//得到文件后缀名  
	             
	           String tempName = fileName + fileType;// 使用传入名称替换图片原本名称，防止乱码以及覆盖其他文件问题  
	  
	           File uploadfile = new File( fileSrc +"/"+ tempName );//将文件重新组装起来
	           if ( !uploadfile.exists() )  
	           {  
	               uploadfile.mkdirs();//创建文件  
	           }
	           file.transferTo( uploadfile );//将文件上传保存  
	           return tempName;//成功返回文件名  
	       } else  
	       {  
	           return "";  
	       }  
	  
	   }  
	
}
