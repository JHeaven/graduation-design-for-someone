package com.heaven.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.heaven.constants.Constants;
import com.heaven.model.Classroom;
import com.heaven.model.Department;
import com.heaven.model.Friend;
import com.heaven.model.Major;
import com.heaven.model.Message;
import com.heaven.model.User;
import com.heaven.service.IFriendService;
import com.heaven.service.IMessageService;
import com.heaven.service.IUserService;
import com.heaven.utils.MD5;

/**
 * 用户操作控制类
 * 
 * @author HEAVEN
 * 
 */
@Controller
@RequestMapping("/user")
public class UserController {

	/**
	 * 注入列表
	 */
	@Resource
	IUserService userService = null;
	@Resource
	IMessageService messageService = null;
	@Resource
	IFriendService friendService = null;

	/**
	 * ajax登陆验证
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
	@RequestMapping("/userCheckLogin")
	@ResponseBody
	public String userCheckLogin(
			@RequestParam(value = "username", required = true) String username,
			@RequestParam(value = "password", required = true) String password,
			HttpSession session) {
		System.out.println("username=" + username + ",password=" + password);
		User user = new User();
		user.setLoginName(username);
		//对密码进行MD5加密处理
		user.setLoginPass(MD5.encryption(password));
		user = userService.checkLogin(user);
		List<Friend> allOfMyfriend = friendService.selectAllMyFriend(user.getId());
		// 初始化json字串（默认登陆失败）
		String success = "{\"login_status\": \"invalid\",\"redirect_url\": \"index\"}";
		if (user != null) {
			session.setAttribute("usersession", user);
			session.setAttribute("allOfMyfriend", allOfMyfriend);
			success = "{\"login_status\": \"success\",\"redirect_url\": \"index\"}";
		}
		//返回json字串，页面验证
		return success;
	}

	/**
	 * ajax注册
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping("/doregister")
	@ResponseBody
	public String doRegister(User user) {
		System.out.println(user);
		user.setImage("assets/images/head/3.jpg");
		if (userService.insertSelective(user) > 0) {
			return "{\"login_status\": \"success\",\"redirect_url\": \"index\"}";
		} else {
			return "{\"login_status\": \"invalid\",\"redirect_url\": \"index\"}";
		}

	}

	/**
	 * 注销
	 * 
	 * @param session
	 * @return
	 */
	@RequestMapping("/unLogin")
	public String unLogin(HttpSession session) {
		session.setAttribute(Constants.USERNAME, "");
		return "redirect:/index";
	}

	/**
	 * 我的资料
	 * 
	 * @param session
	 * @return
	 */
	@RequestMapping("/userProfile")
	public ModelAndView userProfile(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		User user = (User) session.getAttribute("usersession");
		//我的资料
		user = userService.selectByPrimaryKey(user.getId());
		//我的消息
		List<Message> messages = messageService.selectMyMessage(user.getId());
		//我的朋友请求
		List<Friend> allMeetMyFriend = friendService.selectMeetMyFriend(user.getId());
		mv.addObject("user", user);
		mv.addObject("allMeetMyFriend", allMeetMyFriend);
		mv.addObject("messages", messages);
		mv.setViewName("page/userProfile");
		return mv;
	}

	/**
	 * 别人的资料
	 * 
	 * @param userId
	 * @return
	 */
	@RequestMapping("/userOtherProfile/{userId}")
	//用RESTful风格实现userId的传入
	public ModelAndView userOtherProfile(@PathVariable("userId") int userId) {
		ModelAndView mv = new ModelAndView();
		User user = userService.selectByPrimaryKey(userId);
		mv.addObject("user", user);
		mv.setViewName("page/userOtherProfile");
		return mv;
	}

	/**
	 * 发起好友申请
	 * 
	 * @param userId
	 * @return
	 */
	@RequestMapping("/userMeetFrient")
	@ResponseBody
	public String userMeetFrient(@RequestParam("userId") int userId,
			HttpSession session) {
		String success = "success";
		//先判断是不是好友
		User user = (User) session.getAttribute("usersession");
		//给对方发起消息请求
		Message message = new Message();
		message.setContent(user.getNickName() + "请求加为好友。");
		message.setFromId(user.getId());
		message.setIsdelete(0);
		message.setOutTime(new Date());
		message.setState(0);
		message.setToId(userId);
		if (messageService.insert(message) <= 0) {
			success = "failure";
			return success;
		}
		// 更新好友表操作
		Friend friend = new Friend();
		friend.setFromId(user.getId());
		friend.setIsdelete(0);
		friend.setStatus(0);
		friend.setToId(userId);
		if (friendService.insert(friend) <= 0) {
			success = "failure";
		}
		//返回结果
		return success;
	}

	/**
	 * 跳转我的资料更新界面
	 * 
	 * @param session
	 * @return
	 */
	@RequestMapping("/userProfileEdit")
	public ModelAndView userProfileEdit(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		User user = (User) session.getAttribute("usersession");
		user = userService.selectByPrimaryKey(user.getId());
		List<Classroom> allClassroom = userService.selectAllClassroom();
		List<Department> allDepartment = userService.selectAllDepartment();
		List<Major> allMajor = userService.selectAllMajor();
		List<Message> messages = messageService.selectMyMessage(user.getId());
		List<Friend> allMeetMyFriend = friendService.selectMeetMyFriend(user
				.getId());
		mv.addObject("user", user);
		mv.addObject("allClassroom", allClassroom);
		mv.addObject("allDepartment", allDepartment);
		mv.addObject("allMajor", allMajor);
		mv.addObject("allMeetMyFriend", allMeetMyFriend);
		mv.addObject("messages", messages);
		mv.setViewName("page/userProfileUpdate");
		return mv;
	}
	
	/**
	 * 更新
	 * @param user
	 * @param session
	 * @return
	 */
	@RequestMapping("/douserProfileEdit")
	@ResponseBody
	public String douserProfileEdit(User user,HttpSession session){
		System.out.println(user);
		String success = "success";
		User user1 = (User) session.getAttribute("usersession");
		user.setId(user1.getId());
		if (userService.updateByPrimaryKeySelective(user)<=0) {
			success = "failure";
		}
		return success;
	}
	
	
	/**
	 * 跳转图片裁剪页面
	 * @return
	 */
	@RequestMapping("/cropimage")
	public ModelAndView cropimage(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("page/userImage");
		return mv;
	}
	
	/**
	 * base64转码头像上传
	 * @return
	 */
	@RequestMapping("/cropimageaction")
	@ResponseBody
	public String cropimageaction(@RequestParam("image")String image,HttpSession session){
		String success = "success";
		User user = (User) session.getAttribute("usersession");
		User user1 = new User();
		user1.setId(user.getId());
		user1.setImage(image);
		if (userService.updateByPrimaryKeySelective(user1)<=0) {
			success = "failure";
		}
		return success;
	}
	
	
	/**
	 * At the time of initialization,convert the type "String" to type "date"
	 * 
	 * @param binder
	 */
	@InitBinder
	public void initBinder(ServletRequestDataBinder binder) {
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				new SimpleDateFormat("yyyy-MM-dd"), true));
	}
}
