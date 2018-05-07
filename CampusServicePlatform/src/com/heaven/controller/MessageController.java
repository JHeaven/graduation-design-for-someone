package com.heaven.controller;


import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.heaven.model.Message;
import com.heaven.model.User;
import com.heaven.service.IMessageService;
/**
 * 留言消息控制类
 * @author HEAVEN
 *
 */
@Controller
@RequestMapping("/message")
public class MessageController {
	@Resource
	IMessageService messageService = null;
	
	/**
	 * 发送消息
	 * @param message
	 * @param session
	 * @return
	 */
	@RequestMapping("/sendMessage")
	@ResponseBody
	public String sendMessage(Message message,HttpSession session){
		String success = "success";
		User user = (User) session.getAttribute("usersession");
		message.setFromId(user.getId());
		message.setIsdelete(0);
		message.setOutTime(new Date());
		message.setState(0);
		if (messageService.insert(message)<=0) {
			success = "failure";
		}
		return success;
	}
}
