package com.commer.controller.kehudingdanshenqing;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestBody;

import com.ac.util.SessionUtil;
import com.ac.util.jsonresult.JsonResult;
import com.ac.util.jsonresult.JsonResultFactory;


import com.commer.dao.entity.OrderEty;
import com.commer.dao.mapper.base.OrderMapper;

/**
 * 客户订单申请
 */
@Controller
@RequestMapping("/kehudingdanshenqing/KehudingdanshenqingCtrl/")
public class KehudingdanshenqingCtrl {

	@Autowired
	private OrderMapper orderMapper;
	
	
	/**
	 * 查询
	 */
	@RequestMapping(value="search")
	public @ResponseBody JsonResult search(@RequestBody OrderEty orderEty) throws Exception {
		int count = orderMapper.selectLimitCount(orderEty);
		/*orderEty.setOrderName(SessionUtil.getLoginUser());*/
		List<OrderEty> list = orderMapper.selectByLimit(orderEty);
		return JsonResultFactory.extgrid(list, count);
	}
	
	/**
	 * 保存
	 */
	@RequestMapping(value="save")
	public @ResponseBody JsonResult save(@RequestBody OrderEty orderEty) throws Exception {
		if(orderEty.getOrderID() == null) {
			orderMapper.insert(orderEty);
		}
		else {
			orderMapper.updateById(orderEty);
		}
		return JsonResultFactory.success();
	}
	
	/**
	 * 删除
	 */
	@RequestMapping(value="delete")
	public @ResponseBody JsonResult delete(@RequestParam("orderID") int orderID) {
		orderMapper.deleteById(orderID);
		return JsonResultFactory.success();
	}
	
	/**
	 * 得到详细信息
	 */
	@RequestMapping(value="getDetailInfo")
	public @ResponseBody JsonResult getDetailInfo(@RequestParam("orderID") int orderID) throws Exception {
		OrderEty orderEty = orderMapper.selectById(orderID);
		return JsonResultFactory.success(orderEty);
	}
	
}