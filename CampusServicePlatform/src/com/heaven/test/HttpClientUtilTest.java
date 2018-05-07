package com.heaven.test;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.apache.http.client.ClientProtocolException;
import org.json.JSONArray;
import org.json.JSONObject;

import com.heaven.utils.HttpClientUtil;
import com.heaven.utils.Weatherinfo;



public class HttpClientUtilTest {


	public static void main(String[] args) throws Exception {
		List<Weatherinfo> list = HttpURLConnection_GET();
		for (Weatherinfo weatherinfo : list) {
			System.out.println(weatherinfo.getCity());
		}
	}
	
	public static List<Weatherinfo> HttpURLConnection_GET()throws Exception{  
		  
        List<Weatherinfo> list=new ArrayList<Weatherinfo>();  
  
        String path="http://www.weather.com.cn/data/sk/101190801.html";
        URL url=new URL(path);  
        HttpURLConnection conn=(HttpURLConnection) url.openConnection();  
        conn.setRequestMethod("GET");  
        conn.setConnectTimeout(5000);  
        if(conn.getResponseCode()==200){                //200表示请求成功  
            InputStream is=conn.getInputStream();       //以输入流的形式返回  
            //将输入流转换成字符串
            ByteArrayOutputStream baos=new ByteArrayOutputStream();  
            byte [] buffer=new byte[1024];  
            int len=0;  
            while((len=is.read(buffer))!=-1){  
                baos.write(buffer, 0, len);  
            }
            byte[] lens = baos.toByteArray();
            String jsonString=new String(lens,"UTF-8");
            jsonString = "["+jsonString+"]";
            baos.close();  
            is.close();  
            //转换成json数据处理  
            JSONArray jsonArray=new JSONArray(jsonString);  
            for(int i=0;i<jsonArray.length();i++){       //一个循环代表一个headnews对象 
                JSONObject jsonObject0 = jsonArray.getJSONObject(i);
                JSONObject jsonObject = jsonObject0.getJSONObject("weatherinfo");
                Weatherinfo weatherinfo = new Weatherinfo();
				weatherinfo .setCity(jsonObject.getString("city"));
                weatherinfo.setCityid(jsonObject.getString("cityid"));
                weatherinfo.setIsRadar(jsonObject.getString("isRadar"));
                weatherinfo.setNjd(jsonObject.getString("njd"));
                weatherinfo.setQy(jsonObject.getString("qy"));
                weatherinfo.setRadar(jsonObject.getString("Radar"));
                weatherinfo.setRain(jsonObject.getString("rain"));
                weatherinfo.setSD(jsonObject.getString("SD"));
                weatherinfo.setTemp(jsonObject.getString("temp"));
                weatherinfo.setTime(jsonObject.getString("time"));
                weatherinfo.setWD(jsonObject.getString("WD"));
                weatherinfo.setWS(jsonObject.getString("WS"));
                weatherinfo.setWSE(jsonObject.getString("WSE"));
                list.add(weatherinfo);
            }  
              
        }  
        return list;  
    }  

}
