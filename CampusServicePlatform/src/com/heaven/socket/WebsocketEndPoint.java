package com.heaven.socket;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.heaven.constants.Constants;
import com.heaven.model.User;

/**
 * ����websocket������
 * 
 * ����˱�д ����ദ����֮��������ͻ��ˣ���WebSocket����
 * ����������У����Ǵ���һ����WebSocketEndPoint���࣬����������TextWebsocketHandler�ࡣ
 * Ȼ����д���෽��handlerTextMessage(),ÿ���ͻ��˷�����Ϣ����������������������ղ�����
 * ��Ȼ���ﻹ������д������������afterConnectionEstablished
 * ��afterConnectionClosed��handleTransportError �ȵ�
 * ��չ��������Խ���¼�û����浽�����У�Ȼ�����ʵ�ֵ�Ե���Ϣ���͡����������û��ȹ��ܡ�
 * 
 * @author HEAVEN
 */
public class WebsocketEndPoint extends TextWebSocketHandler {

	private static List<WebSocketSession> users = new ArrayList<WebSocketSession>();;

	/**
	 * ������Ϣ
	 */
	@Override
	protected void handleTextMessage(WebSocketSession session,
			TextMessage message) throws Exception {
		super.handleTextMessage(session, message);
		User user = (User) session.getAttributes().get(Constants.USERNAME);
		
		//ת����Ŀ�����
		String msg = message.getPayload();
		int toUserId = Integer.valueOf(msg.substring(0,msg.indexOf("$")));
		TextMessage toUserMessage = new TextMessage(user.getId()+"$"+user.getNickName()+":"+msg.substring(msg.indexOf("$")+1));
		String sesponseMessage = "��" + user.getNickName()+ "����˵:" + message.getPayload();
		System.out.println("toUserId="+toUserId);
		System.out.println("toUserMessage="+toUserMessage.getPayload());
		
		sendMessageToUsers(toUserMessage);
		if (sendMessageToUser(toUserId, toUserMessage)) {
			sesponseMessage = "���ͳɹ���"+sesponseMessage;
		}else{
			sesponseMessage = "����ʧ�ܣ����ĺ��Ѳ����߰£�"+sesponseMessage;
		}
		//������Ϣ
		TextMessage returnMessage = new TextMessage(sesponseMessage);
		session.sendMessage(returnMessage);
		// this.sendMessageToUsers(returnMessage);//�㲥��Ϣ
	}

	/**
	 * ���ӹر�֮��
	 */
	@Override
	public void afterConnectionClosed(WebSocketSession session,
			CloseStatus status) throws Exception {
		System.out.println("afterConnectionClosed called!");
		super.afterConnectionClosed(session, status);
	}

	/**
	 * ��������֮��
	 */
	@Override
	public void afterConnectionEstablished(WebSocketSession session)
			throws Exception {
		User user = (User) session.getAttributes().get(Constants.USERNAME);
		System.out.println("afterConnectionEstablished called!" + user.getId());
		users.add(session);
		TextMessage returnMessage = new TextMessage("welcome��" + user.getId());
		session.sendMessage(returnMessage);
		super.afterConnectionEstablished(session);
	}

	/**
	 * �����¼�
	 */
	@Override
	public void handleTransportError(WebSocketSession session,
			Throwable exception) throws Exception {
		System.out.println("handleTransportError called!");
		if (session.isOpen()) {
			session.close();
		}
		System.out.println("websocket connection closed......");
	}

	/**
	 * �����������û�������Ϣ
	 * 
	 * @param message
	 */
	public void sendMessageToUsers(TextMessage message) {
		for (WebSocketSession user : users) {
			try {
				if (user.isOpen()) {
					user.sendMessage(message);
					System.out.println("������!");
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * ��ĳ���û�������Ϣ
	 * 
	 * @param userName
	 * @param message
	 */
	public boolean sendMessageToUser(int id, TextMessage message) {
		int i = 0;
		for (WebSocketSession user : users) {
			//�ж��Ƿ�����
			if (((User)user.getAttributes().get(Constants.USERNAME)).getId() == id) {
				i++;
				try {
					if (user.isOpen()) {
						user.sendMessage(message);
					}
				} catch (IOException e) {
					e.printStackTrace();
					return false;
				}
				break;
			}
		}
		if (i == 0) {
			return false;
		}else{
			return true;
		}
	}
	
}
