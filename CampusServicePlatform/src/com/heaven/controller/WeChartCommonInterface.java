package com.heaven.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.heaven.constants.Constants;
import com.heaven.model.Wechartwall;
import com.heaven.service.IMessageService;
import com.heaven.service.IWechartService;
import com.heaven.service.IWechartwall;
import com.heaven.utils.DownloadImage;
import com.heaven.wechart.CheckUtil;
import com.heaven.wechart.MessageUtil;
import com.heaven.wechart.TextMessage;

/**
 * ΢�Žӿڽ���
 * 
 * @author HEAVEN
 * 
 */
@Controller
@RequestMapping("/wechart")
public class WeChartCommonInterface {

	@Resource
	IMessageService messageService = null;
	@Resource
	IWechartService wechartService = null;
	@Resource
	IWechartwall wechartwall = null;

	/**
	 * ΢�Ŷ����ֽ���
	 * 
	 * @param out
	 *            д������
	 * @param signature
	 *            ΢�ż���ǩ��
	 * @param timestamp
	 *            ʱ���
	 * @param nonce
	 *            �����
	 * @param echostr
	 *            ����ַ���
	 */
	@RequestMapping(method = { RequestMethod.GET }, produces = "application/json;charset=UTF-8", value = "/handle")
	public void commonValidateHandle(PrintWriter out,
			@RequestParam("signature") String signature,
			@RequestParam("timestamp") String timestamp,
			@RequestParam("nonce") String nonce,
			@RequestParam("echostr") String echostr) {
		System.out.println("Get info from weixin server with [GET]");
		//��֤����
		if (CheckUtil.checkSignature(signature, timestamp, nonce, echostr)) {
			out.print(echostr);
		}
		out.flush();
		out.close();
	}

	/**
	 * ΢����Ϣ�Ĵ���
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(method = { RequestMethod.POST }, produces = "application/xml;charset=UTF-8", value = "/handle")
	public void dispose(HttpServletRequest request,
			HttpServletResponse response, PrintWriter out) throws IOException {
		System.out.println("Get info from weixin server with [POST]");
		/* ��Ϣ�Ľ��ա�������Ӧ */

		// ��������Ӧ�ı��������ΪUTF-8����ֹ�������룩
		request.setCharacterEncoding("UTF-8");
		//response.setCharacterEncoding("UTF-8");

		try {
			// ����΢�ŷ������������û�������Ϣ
			Map<String, String> map = MessageUtil.xmlToMap(request);
			String toUserName = map.get("ToUserName");
			String fromUserName = map.get("FromUserName");
			String createTime = map.get("CreateTime");
			String msgType = map.get("MsgType");
			String content = map.get("Content");
			String msgId = map.get("MsgId");

			String message = null;

			System.out.println("msgType=" + msgType);

			// ����û������Ƿ���������Ϣ�������ҵ��������˴�ֱ�ӷ�����ͬ��Ϣ���û���
			if (Constants.MESSAGE_TEXT.equals(msgType)) {
				// ���յ���Ϣ������sql
				TextMessage text = new TextMessage();
				text.setFromUserName(toUserName);
				text.setToUserName(fromUserName);
				text.setMsgType("text");
				text.setCreateTime("" + new Date().getTime());
				if (content.indexOf("#") >= 0) {
					// ���˻� weiXinToApp.bangding(content, fromUserName)
					if (wechartService.insert(content, fromUserName) > 0) {
						content = "��ϲ�󶨳ɹ���";
					} else {
						content = "��ʧ��,�����û������룡";
					}
					text.setContent("Heaven:" + content);
					message = MessageUtil.textmessageToXML(text);
				} else {
					//
					System.out.println("myUserName" + toUserName);

					Wechartwall wall = new Wechartwall();
					wall.setActivityId(0);// ��������
					wall.setContent(content);
					wall.setIsdelete(0);
					wall.setOpenId(fromUserName);
					wall.setOutTime(new Date());
					wechartwall.insert(wall);

					text.setContent("Heaven:" + content);
					message = MessageUtil.textmessageToXML(text);
				}

			} else if (Constants.MESSAGE_IMAGE.equals(msgType)) {
				String PicUrl = map.get("PicUrl");
				String picName = msgId + ".jpeg";
				DownloadImage.download(PicUrl, picName,
						"C:\\web\\tomcat7\\webapps\\CampusUpload\\weixin");
				String picSurl = "<img width='700' src='"
						+ "/CampusServicePlatform/../CampusUpload/weixin/" + picName
						+ "'>";

				Wechartwall wall = new Wechartwall();
				wall.setActivityId(0);// ��������
				wall.setContent(picSurl);
				wall.setIsdelete(0);
				wall.setOpenId(fromUserName);
				wall.setOutTime(new Date());
				wechartwall.insert(wall);

				TextMessage text = new TextMessage();
				text.setFromUserName(toUserName);
				text.setToUserName(fromUserName);
				text.setMsgType("text");
				text.setCreateTime("" + new Date().getTime());
				text.setContent("Heaven:" + picName + "���ճɹ�");
				message = MessageUtil.textmessageToXML(text);
			}

			System.out.println(message);
			out.print(message);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			out.close();
		}
	}
}
