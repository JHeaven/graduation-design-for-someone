package com.heaven.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;

/**
 * ͼƬ����
 * 
 * @author HEAVEN
 * 
 */
public class DownloadImage {

	/**
	 * @param args
	 * @throws Exception
	 */
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		// String picName = "1.jpg";
		// String picSurl = "<img src='"+"c:\\weixinimage\\"+picName+"'>";
		// System.out.println(picSurl);
		download("http://ui.51bi.com/opt/siteimg/images/fanbei0923/Mid_07.jpg",
				"51bi.gif",
				"C:\\WEBTOOLS\\apache-tomcat-7.0.68\\webapps\\weixinwallimage");
	}

	public static void download(String urlString, String filename,
			String savePath) throws Exception {
		// ����URL
		URL url = new URL(urlString);
		// ������
		URLConnection con = url.openConnection();
		// ��������ʱΪ5s
		con.setConnectTimeout(5 * 1000);
		// ������
		InputStream is = con.getInputStream();

		// 1K�����ݻ���
		byte[] bs = new byte[1024];
		// ��ȡ�������ݳ���
		int len;
		// ������ļ���
		File sf = new File(savePath);
		if (!sf.exists()) {
			sf.mkdirs();
		}
		OutputStream os = new FileOutputStream(sf.getPath() + "\\" + filename);
		// System.out.println("pic===="+sf.getPath()+"\\"+filename);
		// ��ʼ��ȡ
		while ((len = is.read(bs)) != -1) {
			os.write(bs, 0, len);
		}
		// ��ϣ��ر���������
		os.close();
		is.close();
	}

}