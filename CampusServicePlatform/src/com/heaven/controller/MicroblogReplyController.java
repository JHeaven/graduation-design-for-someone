package com.heaven.controller;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.heaven.constants.Constants;
import com.heaven.model.MicroblogReply;
import com.heaven.model.User;
import com.heaven.service.IMicroblogReplyService;

/**
 * ��̬�ظ�������
 * @author HEAVEN
 *
 */
@RequestMapping("/microblogReply")
@Controller
public class MicroblogReplyController {
	
	@Resource
	IMicroblogReplyService microblogReplyService = null;
	
	/**
	 * ����ظ�
	 * @param microblogReply
	 * @param session
	 * @return
	 */
	@RequestMapping("/insertMicReply")
	@ResponseBody
	public String insertMicReply(MicroblogReply microblogReply,HttpSession session){
		microblogReply.setIsdelete(0);
		microblogReply.setOutTime(new Date());
		microblogReply.setPushCount(0);
		User user = (User) session.getAttribute(Constants.USERNAME);
		microblogReply.setUserId(user.getId());
		microblogReplyService.insert(microblogReply);
		String result = "success";
		return result;
	}
	
}
