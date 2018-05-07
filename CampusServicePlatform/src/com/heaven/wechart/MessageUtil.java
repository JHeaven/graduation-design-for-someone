package com.heaven.wechart;

import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.dom4j.*;
import org.dom4j.io.SAXReader;
import org.xmlpull.v1.XmlPullParserException;

import com.heaven.constants.Constants;
import com.thoughtworks.xstream.XStream;

/**
 * 微信消息处理
 * 
 * @author HEAVEN
 * 
 */
public class MessageUtil {

	/**
	 * 消息解析
	 * 
	 * @param request
	 * @return
	 * @throws IOException
	 * @throws DocumentException
	 */
	public static Map<String, String> xmlToMap(HttpServletRequest request)
			throws IOException, DocumentException {
		Map<String, String> map = new HashMap<String, String>();
		SAXReader reader = new SAXReader();
		InputStream ins = request.getInputStream();
		org.dom4j.Document doc = reader.read(ins);
		org.dom4j.Element root = doc.getRootElement();
		List<Element> list = root.elements();
		for (Element e : list) {
			map.put(e.getName(), e.getText());
		}
		ins.close();
		return map;
	}

	/**
	 * 消息格式转换
	 * 
	 * @param textMessage
	 * @return
	 * @throws XmlPullParserException
	 */
	public static String textmessageToXML(TextMessage textMessage)
			throws XmlPullParserException {
		XStream xstream = new XStream();
		xstream.alias("xml", textMessage.getClass());
		return xstream.toXML(textMessage);
	}

	/**
	 * 初始化消息
	 */
	public static String initText(String toUserName, String fromUserName,
			String content) throws XmlPullParserException {
		TextMessage text = new TextMessage();
		text.setFromUserName(toUserName);
		text.setToUserName(fromUserName);
		text.setMsgType(Constants.MESSAGE_TEXT);
		text.setCreateTime("" + new Date().getTime());
		// content = DelBiaoDianUtil.del(content);
		text.setContent("Heaven:" + content);
		return textmessageToXML(text);
	}

	/*
	 * 主菜单
	 */
	public static String menuText() {
		StringBuffer sb = new StringBuffer();
		sb.append("Welcome Home Sir \n");
		sb.append("Let's hava a chart now!");
		return sb.toString();
	}

}
