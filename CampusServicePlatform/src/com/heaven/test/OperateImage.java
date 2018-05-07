package com.heaven.test;

import java.awt.Rectangle;  
import java.awt.image.BufferedImage;  
import java.io.File;  
import java.io.FileInputStream;  
import java.io.IOException;  
import java.util.Iterator;  
  
import javax.imageio.ImageIO;  
import javax.imageio.ImageReadParam;  
import javax.imageio.ImageReader;  
import javax.imageio.stream.ImageInputStream;  
  
public class OperateImage {  
  
    // ===ԴͼƬ·�������磺c:\1.jpg  
    private String srcpath;  
  
    // ===����ͼƬ���·�����ơ��磺c:\2.jpg  
    private String subpath;  
    public void setSrcpath(String srcpath) {  
        this.srcpath = srcpath;  
    }  
    public void setSubpath(String subpath) {  
        this.subpath = subpath;  
    }  
    // ===���е�x����  
    private int x;  
  
    private int y;  
  
    // ===���е���  
    private int width;  
    private int height;  
  
    public OperateImage() {  
    }  
  
    public OperateImage(int x, int y, int width, int height) {  
        this.x = x;  
        this.y = y;  
        this.width = width;  
        this.height = height;  
    }  
  
    /** 
     *  
     * ��ͼƬ�ü������Ѳü��군��ͼƬ���� �� 
     */  
  
    public void cut() throws IOException {  
        FileInputStream is = null;  
        ImageInputStream iis = null;  
        try {  
            // ��ȡͼƬ�ļ�  
            is = new FileInputStream(srcpath);  
  
            /** 
             *  
             * ���ذ������е�ǰ��ע�� ImageReader �� Iterator����Щ ImageReader 
             *  
             * �����ܹ�����ָ����ʽ�� ������formatName - ��������ʽ��ʽ���� . 
             *  
             * (���� "jpeg" �� "tiff")�� �� 
             */  
            Iterator<ImageReader> it = ImageIO  
                    .getImageReadersByFormatName("jpg");  
  
            ImageReader reader = it.next();  
  
            // ��ȡͼƬ��  
            iis = ImageIO.createImageInputStream(is);  
  
            /** 
             *  
             * <p> 
             * iis:��ȡԴ��true:ֻ��ǰ���� 
             * </p> 
             * .�������Ϊ ��ֻ��ǰ�������� 
             *  
             * ��������ζ�Ű���������Դ�е�ͼ��ֻ��˳���ȡ���������� reader 
             *  
             * ���⻺���������ǰ�Ѿ���ȡ��ͼ����������ݵ���Щ���벿�֡� 
             */  
            reader.setInput(iis, true);  
  
            /** 
             *  
             * <p> 
             * ������ζ������н������ 
             * <p> 
             * .����ָ�����������ʱ�� Java Image I/O 
             *  
             * ��ܵ��������е���ת��һ��ͼ���һ��ͼ�������ض�ͼ���ʽ�Ĳ�� 
             *  
             * ������ ImageReader ʵ�ֵ� getDefaultReadParam �����з��� 
             *  
             * ImageReadParam ��ʵ���� 
             */  
            ImageReadParam param = reader.getDefaultReadParam();  
  
            /** 
             *  
             * ͼƬ�ü�����Rectangle ָ��������ռ��е�һ������ͨ�� Rectangle ���� 
             *  
             * �����϶��������(x��y)����Ⱥ͸߶ȿ��Զ���������� 
             */  
            Rectangle rect = new Rectangle(x, y, width, height);  
  
            // �ṩһ�� BufferedImage���������������������ݵ�Ŀ�ꡣ  
            param.setSourceRegion(rect);  
  
            /** 
             *  
             * ʹ�����ṩ�� ImageReadParam ��ȡͨ������ imageIndex ָ���Ķ��󣬲��� 
             *  
             * ����Ϊһ�������� BufferedImage ���ء� 
             */  
            BufferedImage bi = reader.read(0, param);  
  
            // ������ͼƬ  
            ImageIO.write(bi, "jpg", new File(subpath));  
        } finally {  
            if (is != null)  
                is.close();  
            if (iis != null)  
                iis.close();  
        }  
  
    }  
      
    public static void main(String[] args) throws Exception {  
        String name = "d:\\1.jpg";  
        OperateImage o = new OperateImage(20, 20, 100, 100);  
        o.setSrcpath(name);  
        o.setSubpath("D:\\11.jpg");  
        o.cut();  
    }  
  
}  