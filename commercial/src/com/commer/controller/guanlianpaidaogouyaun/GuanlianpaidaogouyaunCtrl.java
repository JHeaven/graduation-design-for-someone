package com.commer.controller.guanlianpaidaogouyaun;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestBody;

import com.ac.util.jsonresult.JsonResult;
import com.ac.util.jsonresult.JsonResultFactory;


import com.commer.dao.entity.BookingEty;
import com.commer.dao.mapper.base.BookingMapper;

/**
 * 安排导购员
 */
@Controller
@RequestMapping("/guanlianpaidaogouyaun/GuanlianpaidaogouyaunCtrl/")
public class GuanlianpaidaogouyaunCtrl {

	@Autowired
	private BookingMapper bookingMapper;
	
	
	/**
	 * 查询
	 */
	@RequestMapping(value="search")
	public @ResponseBody JsonResult search(@RequestBody BookingEty bookingEty) throws Exception {
		int count = bookingMapper.selectLimitCount(bookingEty);
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