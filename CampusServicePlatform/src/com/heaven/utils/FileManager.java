package com.heaven.utils;

import java.io.File;
import java.io.IOException;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.multipart.MultipartFile;
/**
 * �ļ��ϴ���
 * @author HEAVEN
 *
 */
public class FileManager {

	public static String fileSaveSrc( MultipartFile file, String fileName,  
	           String fileSrc ) throws IOException  
	   {  
	       String fileOriginalName = file.getOriginalFilename();  
	       if ( StringUtils.isNotBlank( fileOriginalName ) )//ȷ������file����null  
	       {  
	           String fileType = fileOriginalName  
	                   .substring( fileOriginalName.lastIndexOf( "." ) );//�õ��ļ���׺��  
	             
	           String tempName = fileName + fileType;// ʹ�ô��������滻ͼƬԭ�����ƣ���ֹ�����Լ����������ļ�����  
	  
	           File uploadfile = new File( fileSrc +"/"+ tempName );//���ļ�������װ����
	           if ( !uploadfile.exists() )  
	           {  
	               uploadfile.mkdirs();//�����ļ�  
	           }
	           file.transferTo( uploadfile );//���ļ��ϴ�����  
	           return tempName;//�ɹ������ļ���  
	       } else  
	       {  
	           return "";  
	       }  
	  
	   }  
	
}
