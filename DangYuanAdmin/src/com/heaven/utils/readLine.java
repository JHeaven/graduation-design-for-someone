package com.heaven.utils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Date;

import com.heaven.biz.ArticleBiz;

public class readLine {

    
    public static void main(String[] args) {
        // TODO Auto-generated method stub
    File file = new File("D://0.txt");
    BufferedReader reader = null;
    String tempString = null;
    int line =1;
    InputStreamReader isr; 
    int n,y,r;
    String sn,sy,sr = "";
    int tempno=0;
    
    try {
        System.out.println("����Ϊ��λ��ȡ�ļ����ݣ�һ�ζ�һ���У�");
        isr = new InputStreamReader(new FileInputStream(file), "utf-8"); 
        reader = new BufferedReader(isr);
        while ((tempString = reader.readLine()) != null) {
            //System.out.println("Line"+ line + ":" +tempString);
            //ÿ��ҵ�����
        	String biaoti ="";
        	System.out.print("Line"+ line + ":");
        	n= tempString.indexOf("��");
        	y= tempString.indexOf("��");
        	r= tempString.indexOf("��");
            
        	sn = tempString.substring(n-4, n);
        	if((y-n)==2){
        		sy = tempString.substring(y-1, y);
        	}else{
        		sy = tempString.substring(y-2, y);
        	}
        	
        	if((r-y)>0&&(r-y)<=3){
        		
        		if((r-y)==2){
            		sr = tempString.substring(r-1, r);
            	}else{
            		sr = tempString.substring(r-2, r);
            	}
        		
        		
        		
        	}
        	
        	
        	
        	
        	if((y-n)>0&&(y-n)<=3){
        		biaoti = sn+"��"+sy+"��";
        		
        		
        		if((r-y)>0&&(r-y)<=3){
        			biaoti=  biaoti+ sr+"��";
        		}
        	}
            
        	
        	tempString = tempString.substring(tempString.indexOf(".")+1);
        	
        	tempString = "<p><span style=\"font-size: 18px; font-family: ΢���ź�, &#39;Microsoft YaHei&#39;;\">&nbsp; &nbsp;"+tempString+"</span></p>";
        	
        	//xie
        	String img = "pic/dh2.jpg";
        	String title = biaoti;
    		String author = "����ѧԺ";
    		String lanmuxuanze ="3";
    		String outtime ="" + new Date().getTime();
    		String editor = tempString;
    		ArticleBiz ab = new ArticleBiz();
    		if(ab.add(lanmuxuanze, title, author, editor, outtime, 1,img)>0){
    			System.out.println("ok");
    		}else {
    			System.out.println("no");
    		}
    		
    		
    		
    		
            line ++ ;
        }
        reader.close();
    } catch (FileNotFoundException e) {
        e.printStackTrace();
    } catch (IOException e) {
        e.printStackTrace();
    }finally{
        if(reader != null){
            try {
                reader.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
    }
}