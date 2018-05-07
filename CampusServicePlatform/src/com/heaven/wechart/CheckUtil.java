package com.heaven.wechart;

import java.util.Arrays;

import com.heaven.utils.SHA1Util;

/**
 * 身份验证
 * @author HEAVEN
 *
 */
public class CheckUtil {
	
	private static final String token ="heaven";
	
	public static boolean checkSignature(String signature,String timestamp,String nonce,String echostr)
	{
		String[] arr =new String[]{token,timestamp,nonce};
		//排序
		Arrays.sort(arr);
		//生成字符串
		StringBuffer content=new StringBuffer();
		for(int i=0;i<arr.length;i++)
		{
			content.append(arr[i]);
		}
		//sha1
		String digist=new SHA1Util().getDigestOfString(content.toString().getBytes()).toLowerCase();
		
		return digist.equals(signature);
	}
}
