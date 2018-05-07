package com.heaven.utils;

import java.util.TreeMap;

import org.junit.Test;
import org.wechat.common.conn.Connection;
/**
 * ªÒ»°AccessToken
 * @author HEAVEN
 *
 */
public class AccessToken {
	String key = "wx132c904fda19dcc5";
	String secret = "97422ef6be60cb22902caffa3d451067";
	String path = "https://api.weixin.qq.com/cgi-bin/token?";

	@Test
	public String getAccessToken() {
		TreeMap<String, String> map = new TreeMap<String, String>();
		map.put("grant_type", "client_credential");
		map.put("appid", key);
		map.put("secret", secret);
		Connection conn = new Connection();
		String result = conn.HttpDefaultExecute("GET", path, map, "");
		System.out.println("result------>" + result);
		String token = result;
		int i = token.indexOf("\"", 30);
		token = token.substring(17,i);
		System.out.println("token------>"+token);
		return token;
	}
}