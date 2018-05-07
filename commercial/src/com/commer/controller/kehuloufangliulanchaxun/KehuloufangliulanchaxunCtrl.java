package com.commer.controller.kehuloufangliulanchaxun;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestBody;

import com.ac.util.Constant;
import com.ac.util.SendEmail;
import com.ac.util.SessionUtil;
import com.ac.util.jsonresult.JsonResult;
import com.ac.util.jsonresult.JsonResultFactory;
import com.commer.dao.entity.BookingEty;
import com.commer.dao.entity.CommercialEty;
import com.commer.dao.mapper.base.BookingMapper;
import com.commer.dao.mapper.base.CommercialMapper;

/**
 * 客户楼房浏览查询
 */
@Controller
@RequestMapping("/kehuloufangliulanchaxun/KehuloufangliulanchaxunCtrl/")
public class KehuloufangliulanchaxunCtrl {

	@Autowired
	private CommercialMapper commercialMapper;
	
	@Autowired
	private BookingMapper bookingMapper;
	
	
	/**
	 * 查询
	 */
	@RequestMapping(value="search")
	public @ResponseBody JsonResult search(@RequestBody CommercialEty commercialEty) throws Exception {
		int count = commercialMapper.selectLimitCount(commercialEty);
		List<CommercialEty> list = commercialMapper.selectByLimit(commercialEty);
		return JsonResultFactory.extgrid(list, count);
	}
	
	/**
	 * 保存
	 */
	@RequestMapping(value="save")
	public @ResponseBody JsonResult save(@RequestBody CommercialEty commercialEty) throws Exception {
		if(commercialEty.getCommercialID() == null) {
			commercialMapper.insert(commercialEty);
		}
		else {
			
			String loginstatus = (String) SessionUtil.getLoginstatis();
			if("1".equals(loginstatus)){
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
		        		           +commercialEty.getCommercialtype() 
		        		           +commercialEty.getCommercialfloorUnitnumber()
		        		         ); 
		        //粘贴附件
		       sendMail.send();
		       
		       BookingEty bookingEty = new BookingEty();
		       bookingEty.setBookingName(SessionUtil.getLoginUser());
		       bookingEty.setBookingDate(commercialEty.getBookingDate());		       
		       bookingEty.setBookinginformation(commercialEty.getBookinginformation());
		       bookingEty.setBookingfloorUnitnumber(commercialEty.getCommercialfloorUnitnumber());
		       bookingEty.setBookingTel(commercialEty.getBookingTel());
		       bookingEty.setBookingtype(commercialEty.getCommercialtype() );
		       bookingMapper.insert(bookingEty);
			}else {
				commercialMapper.updateById(commercialEty);
			}
			
			 
			
		}
		return JsonResultFactory.success();
	}
	
	/**
	 * 删除
	 */
	@RequestMapping(value="delete")
	public @ResponseBody JsonResult delete(@RequestParam("commercialID") int commercialID) {
		commercialMapper.deleteById(commercialID);
		return JsonResultFactory.success();
	}
	
	/**
	 * 得到详细信息
	 */
	@RequestMapping(value="getDetailInfo")
	public @ResponseBody JsonResult getDetailInfo(@RequestParam("commercialID") int commercialID) throws Exception {
		CommercialEty commercialEty = commercialMapper.selectById(commercialID);
		return JsonResultFactory.success(commercialEty);
	}
	
}