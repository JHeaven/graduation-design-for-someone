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
 * 创建websocket处理类
 * 
 * 服务端编写 这个类处理来之浏览器（客户端）的WebSocket请求。
 * 在这个例子中，我们创建一个叫WebSocketEndPoint的类，并让它集成TextWebsocketHandler类。
 * 然后重写父类方法handlerTextMessage(),每当客户端发送信息过来，都会由这个函数接收并处理。
 * 当然这里还可以重写其他方法，如afterConnectionEstablished
 * 、afterConnectionClosed、handleTransportError 等等
 * 扩展：这里可以将登录用户保存到对象中，然后可以实现点对点消息发送、发送所有用户等功能。
 * 
 * @author HEAVEN
 */
public class WebsocketEndPoint extends TextWebSocketHandler {

	private static List<WebSocketSession> users = new ArrayList<WebSocketSession>();;

	/**
	 * 处理消息
	 */
	@Override
	protected void handleTextMessage(WebSocketSession session,
			TextMessage message) throws Exception {
		super.handleTextMessage(session, message);
		User user = (User) session.getAttributes().get(Constants.USERNAME);
		
		//转发给目标对象
		String msg = message.getPayload();
		int toUserId = Integer.valueOf(msg.substring(0,msg.indexOf("$")));
		TextMessage toUserMessage = new TextMessage(user.getId()+"$"+user.getNickName()+":"+msg.substring(msg.indexOf("$")+1));
		String sesponseMessage = "【" + user.getNickName()+ "】我说:" + message.getPayload();
		System.out.println("toUserId="+toUserId);
		System.out.println("toUserMessage="+toUserMessage.getPayload());
		
		sendMessageToUsers(toUserMessage);
		if (sendMessageToUser(toUserId, toUserMessage)) {
			sesponseMessage = "发送成功！"+sesponseMessage;
		}else{
			sesponseMessage = "发送失败，您的好友不在线奥！"+sesponseMessage;
		}
		//反馈信息
		TextMessage returnMessage = new TextMessage(sesponseMessage);
		session.sendMessage(returnMessage);
		// this.sendMessageToUsers(returnMessage);//广播消息
	}

	/**
	 * 连接关闭之后
	 */
	@Override
	public void afterConnectionClosed(WebSocketSession session,
			CloseStatus status) throws Exception {
		System.out.println("afterConnectionClosed called!");
		super.afterConnectionClosed(session, status);
	}

	/**
	 * 建立连接之后
	 */
	@Override
	public void afterConnectionEstablished(WebSocketSession session)
			throws Exception {
		User user = (User) session.getAttributes().get(Constants.USERNAME);
		System.out.println("afterConnectionEstablished called!" + user.getId());
		users.add(session);
		TextMessage returnMessage = new TextMessage("welcome！" + user.getId());
		session.sendMessage(returnMessage);
		super.afterConnectionEstablished(session);
	}

	/**
	 * 出错事件
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
	 * 给所有在线用户发送消息
	 * 
	 * @param message
	 */
	public void sendMessageToUsers(TextMessage message) {
		for (WebSocketSession user : users) {
			try {
				if (user.isOpen()) {
					user.sendMessage(message);
					System.out.println("发送了!");
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 给某个用户发送消息
	 * 
	 * @param userName
	 * @param message
	 */
	public boolean sendMessageToUser(int id, TextMessage message) {
		int i = 0;
		for (WebSocketSession user : users) {
			//判断是否在线
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
