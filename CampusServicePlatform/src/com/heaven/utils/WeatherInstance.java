package com.heaven.utils;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
/**
 * 中国气象局天气抓取
 * @author HEAVEN
 */
public class WeatherInstance {

	private static WeatherInstance instance = null;  
    private WeatherInstance(){}  
    public static WeatherInstance getInstance(){  
        if (instance == null) {  
            instance = new WeatherInstance();  
        }  
        return instance;  
    }  
    
	public List<Weatherinfo> HttpURLConnection_GET(String cityCode)
			throws Exception {

		List<Weatherinfo> list = new ArrayList<Weatherinfo>();

		String path = "http://www.weather.com.cn/data/sk/101190801.html";
		URL url = new URL(path);
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setConnectTimeout(5000);
		if (conn.getResponseCode() == 200) { // 200表示请求成功
			InputStream is = conn.getInputStream(); // 以输入流的形式返回
			// 将输入流转换成字符串
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			byte[] buffer = new byte[1024];
			int len = 0;
			while ((len = is.read(buffer)) != -1) {
				baos.write(buffer, 0, len);
			}
			byte[] lens = baos.toByteArray();
			String jsonString = new String(lens, "UTF-8");
			jsonString = "[" + jsonString + "]";
			baos.close();
			is.close();
			// 转换成json数据处理
			JSONArray jsonArray = new JSONArray(jsonString);
			for (int i = 0; i < jsonArray.length(); i++) { // 一个循环代表一个headnews对象
				JSONObject jsonObject0 = jsonArray.getJSONObject(i);
				JSONObject jsonObject = jsonObject0
						.getJSONObject("weatherinfo");
				Weatherinfo weatherinfo = new Weatherinfo();
				weatherinfo.setCity(jsonObject.getString("city"));
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
