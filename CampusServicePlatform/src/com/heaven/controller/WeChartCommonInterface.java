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
 * 微信接口接入
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
	 * 微信端握手交接
	 * 
	 * @param out
	 *            写出对象
	 * @param signature
	 *            微信加密签名
	 * @param timestamp
	 *            时间戳
	 * @param nonce
	 *            随机数
	 * @param echostr
	 *            随机字符串
	 */
	@RequestMapping(method = { RequestMethod.GET }, produces = "application/json;charset=UTF-8", value = "/handle")
	public void commonValidateHandle(PrintWriter out,
			@RequestParam("signature") String signature,
			@RequestParam("timestamp") String timestamp,
			@RequestParam("nonce") String nonce,
			@RequestParam("echostr") String echostr) {
		System.out.println("Get info from weixin server with [GET]");
		//验证握手
		if (CheckUtil.checkSignature(signature, timestamp, nonce, echostr)) {
			out.print(echostr);
		}
		out.flush();
		out.close();
	}

	/**
	 * 微信消息的处理
	 * 
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(method = { RequestMethod.POST }, produces = "application/xml;charset=UTF-8", value = "/handle")
	public void dispose(HttpServletRequest request,
			HttpServletResponse response, PrintWriter out) throws IOException {
		System.out.println("Get info from weixin server with [POST]");
		/* 消息的接收、处理、响应 */

		// 将请求、响应的编码均设置为UTF-8（防止中文乱码）
		request.setCharacterEncoding("UTF-8");
		//response.setCharacterEncoding("UTF-8");

		try {
			// 解析微信服务器发来的用户操作信息
			Map<String, String> map = MessageUtil.xmlToMap(request);
			String toUserName = map.get("ToUserName");
			String fromUserName = map.get("FromUserName");
			String createTime = map.get("CreateTime");
			String msgType = map.get("MsgType");
			String content = map.get("Content");
			String msgId = map.get("MsgId");

			String message = null;

			System.out.println("msgType=" + msgType);

			// 如果用户操作是发送文字消息，则进行业务操作（此处直接返回相同信息给用户）
			if (Constants.MESSAGE_TEXT.equals(msgType)) {
				// 接收到信息保存入sql
				TextMessage text = new TextMessage();
				text.setFromUserName(toUserName);
				text.setToUserName(fromUserName);
				text.setMsgType("text");
				text.setCreateTime("" + new Date().getTime());
				if (content.indexOf("#") >= 0) {
					// 绑定账户 weiXinToApp.bangding(content, fromUserName)
					if (wechartService.insert(content, fromUserName) > 0) {
						content = "恭喜绑定成功！";
					} else {
						content = "绑定失败,请检查用户名密码！";
					}
					text.setContent("Heaven:" + content);
					message = MessageUtil.textmessageToXML(text);
				} else {
					//
					System.out.println("myUserName" + toUserName);

					Wechartwall wall = new Wechartwall();
					wall.setActivityId(0);// 保留处理
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
				wall.setActivityId(0);// 保留处理
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
				text.setContent("Heaven:" + picName + "接收成功");
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
