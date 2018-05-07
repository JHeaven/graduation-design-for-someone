package com.heaven.utils;

import java.util.ArrayList;
import java.util.List;

import com.gexin.rp.sdk.base.IPushResult;
import com.gexin.rp.sdk.base.impl.AppMessage;
import com.gexin.rp.sdk.http.IGtPush;
import com.gexin.rp.sdk.template.NotificationTemplate;

public class GeTui {

	public static final String appId = "Pa9vBJvZPI8a0Y9gmO4FO";
	public static final String appKey = "ByO6d22tXd9BneoLsgBav6";
	public static final String masterSecret = "y7VXtFavap9oiMh17bYwt6";
	private static String url = "http://sdk.open.api.igexin.com/apiex.htm";

	public static NotificationTemplate notificationTemplateDemo(String appId, String appkey, String title,
			String text) {
		NotificationTemplate template = new NotificationTemplate();
		// ����APPID��APPKEY
		template.setAppId(appId);
		template.setAppkey(appkey);
		// ����֪ͨ������������
		template.setTitle(title);
		template.setText(text);
		// ����֪ͨ��ͼ��
		template.setLogo("icon.png");
		// ����֪ͨ������ͼ��
		// template.setLogoUrl("");
		// ����֪ͨ�Ƿ����壬�𶯣����߿����
		template.setIsRing(true);
		template.setIsVibrate(true);
		template.setIsClearable(true);
		// ͸����Ϣ���ã�1Ϊǿ������Ӧ�ã��ͻ��˽��յ���Ϣ��ͻ���������Ӧ�ã�2Ϊ�ȴ�Ӧ������
		template.setTransmissionType(1);
		template.setTransmissionContent("");
		// ���ö�ʱչʾʱ��
		// template.setDuration("2015-01-16 11:40:00", "2015-01-16 12:24:00");
		return template;
	}

	public String Push(String title, String text) {

		IGtPush push = new IGtPush(url, appKey, masterSecret);

		List<String> appIds = new ArrayList<String>();
		appIds.add(appId);

		AppMessage message = new AppMessage();
		message.setData(notificationTemplateDemo(appId, appKey, title, text));
		message.setAppIdList(appIds);
		message.setOffline(true);
		message.setOfflineExpireTime(1000 * 600);

		IPushResult ret = push.pushMessageToApp(message);
		System.out.println(ret.getResponse().toString());
		return ret.getResponse().toString();
	}

}
