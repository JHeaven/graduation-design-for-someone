package com.heaven.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.heaven.model.Friend;
import com.heaven.model.User;
import com.heaven.service.IFriendService;

/**
 * ����ģ�������
 * @author HEAVEN
 *
 */
@Controller
@RequestMapping("/friend")
public class FriendController {
	@Resource
	IFriendService friendService =null;
	
	/**
	 * ���ܺ�������
	 * @param meetId
	 * @param userId
	 * @return
	 */
	@RequestMapping("/meetFriendAccept/{meetId}/{userId}")
	@ResponseBody
	public String meetFriendAccept(@PathVariable("meetId") int meetId,@PathVariable("userId") int userId){
		String success = "sucess";
		Friend fri = new Friend();
		fri.setId(meetId);
		fri.setStatus(1);//���ܺ���
		if (friendService.updateState(fri)<=0) {
			success = "failure";
		}
		return success;
	}
	
	
	/**
	 * �ܾ���������
	 * @param meetId
	 * @param userId
	 * @return
	 */
	@RequestMapping("/meetFriendfuckyou/{meetId}/{userId}")
	@ResponseBody
	public String meetFriendfuckyou(@PathVariable("meetId") int meetId,@PathVariable("userId") int userId){
		String success = "sucess";
		Friend fri = new Friend();
		fri.setId(meetId);
		fri.setStatus(2);//�ܾ�����
		if (friendService.updateState(fri)<=0) {
			success = "failure";
		}
		return success;
	}
	
	/**
	 * �ҵĺ����б�
	 * @param session
	 * @return
	 */
	@RequestMapping("/friendSelectofMy")
	public ModelAndView friendSelectofMy(HttpSession session){
		ModelAndView mv = new ModelAndView();
		User user = (User) session.getAttribute("usersession");
		List<Friend> allfriend = friendService.selectAllMyFriend(user.getId());
		mv.addObject("allfriend",allfriend);
		mv.setViewName("page/friendSelect");
		return mv;
	}
}
