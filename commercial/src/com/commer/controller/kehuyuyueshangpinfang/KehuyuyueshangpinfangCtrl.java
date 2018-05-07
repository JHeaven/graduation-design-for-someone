package com.commer.controller.kehuyuyueshangpinfang;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ac.util.Constant;
import com.ac.util.SendEmail;
import com.ac.util.SessionUtil;
import com.ac.util.jsonresult.JsonResult;
import com.ac.util.jsonresult.JsonResultFactory;
import com.commer.dao.entity.BookingEty;
import com.commer.dao.mapper.base.BookingMapper;


/**
 * 预约商品房
 */
@Controller
@RequestMapping("/kehuyuyueshangpinfang/KehuyuyueshangpinfangCtrl/")
public class KehuyuyueshangpinfangCtrl {

	@Autowired
	private BookingMapper bookingMapper;
	
	
	/**
	 * 查询
	 */
	@RequestMapping(value="search")
	public @ResponseBody JsonResult search(@RequestBody BookingEty bookingEty) throws Exception {
		int count = bookingMapper.selectLimitCount(bookingEty);
		bookingEty.setBookingName(SessionUtil.getLoginUser());
		
		List<BookingEty> list = bookingMapper.selectByLimit(bookingEty);
		return JsonResultFactory.extgrid(list, count);
	}
	
	/**
	 * 保存
	 */
	@RequestMapping(value="save")
	public @ResponseBody JsonResult save(@RequestBody BookingEty bookingEty) throws Exception {
		if(bookingEty.getBookingID() == null) {
			bookingMapper.insert(bookingEty);
		}
		else {
			    BookingEty bookingEtyResult = bookingMapper.selectById(bookingEty.getBookingID());
	   
			    SendEmail sendMail = new SendEmail();
		        sendMail.setSmtpServer(Constant.smtp);
		        //此处设置登录的用户名
		        sendMail.setUsername(Constant.Sendmail);
		        //此处设置登录的密码,这个密码非常重要，它不是邮箱账户的登录密码，而是应用密码，需要登录邮箱，在设置中开启此应用
		        //否则很可能出现如下错误：
		        //javax.mail.AuthenticationFailedException: 550 User has no permission
		        sendMail.setPassword(Constant.Sendpassword);
		        //设置收件人的地址
		        sendMail.setTo(Constant.acceptmail);
		        //设置发送人地址
		        sendMail.setFrom(Constant.Sendmail);
		        //设置标题
		        sendMail.setSubject("welcome");
		        //设置内容
		        sendMail.setContent(Constant.SendText
		        		           +SessionUtil.getLoginUser()
		        		           +Constant.SendText2
		        		           +bookingEtyResult.getBookingtype()
		        		           +bookingEtyResult.getBookingfloorUnitnumber()
		        		         ); 
		        //粘贴附件
		       sendMail.send();
			   bookingMapper.updateById(bookingEty);
			   
		}
		return JsonResultFactory.success();
	}
	
	/**
	 * 删除
	 */
	@RequestMapping(value="delete")
	public @ResponseBody JsonResult delete(@RequestParam("bookingID") int bookingID) {
		bookingMapper.deleteById(bookingID);
		return JsonResultFactory.success();
	}
	
	/**
	 * 得到详细信息
	 */
	@RequestMapping(value="getDetailInfo")
	public @ResponseBody JsonResult getDetailInfo(@RequestParam("bookingID") int bookingID) throws Exception {
		BookingEty bookingEty = bookingMapper.selectById(bookingID);
		return JsonResultFactory.success(bookingEty);
	}
	
}