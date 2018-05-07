package com.heaven.socket;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.server.support.HttpSessionHandshakeInterceptor;

import com.heaven.constants.Constants;
import com.heaven.model.User;

/**
 * �������֣�handshake���ӿ�
 * 
 * @author HEAVEN5
 * 
 */
public class HandshakeInterceptor extends HttpSessionHandshakeInterceptor {

	/**
	 * ����ǰ�¼�
	 */
	@Override
	public boolean beforeHandshake(ServerHttpRequest request,
			ServerHttpResponse response, WebSocketHandler wsHandler,
			Map<String, Object> attributes) throws Exception {
		if (request instanceof ServletServerHttpRequest) {
			ServletServerHttpRequest servletRequest = (ServletServerHttpRequest) request;
			HttpSession session = servletRequest.getServletRequest().getSession(false);
			if (session != null) {
				// ʹ��userName����WebSocketHandler���Ա㶨������Ϣ
				User user = null;
				try {
					user = (User) session.getAttribute(Constants.USERNAME);
					System.out.println(user.getNickName()+":���ڽ�������");
					attributes.put(Constants.USERNAME, user);
				} catch (Exception e) {
					System.out.println("�ο͵�½������socket�ӿ�,EX:"+e.getMessage());
				}
			}
		}
		System.out.println("Before Handshake");
		return super.beforeHandshake(request, response, wsHandler, attributes);
	}

	/**
	 * ���ֺ��¼�
	 */
	@Override
	public void afterHandshake(ServerHttpRequest request,
			ServerHttpResponse response, WebSocketHandler wsHandler,
			Exception ex) {
		System.out.println("After Handshake");
		super.afterHandshake(request, response, wsHandler, ex);
	}

}