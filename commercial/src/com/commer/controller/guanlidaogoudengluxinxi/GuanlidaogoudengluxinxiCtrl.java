package com.commer.controller.guanlidaogoudengluxinxi;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestBody;

import com.ac.util.jsonresult.JsonResult;
import com.ac.util.jsonresult.JsonResultFactory;


import com.commer.dao.entity.ShoppingguideEty;
import com.commer.dao.mapper.base.ShoppingguideMapper;

/**
 * 登录信息
 */
@Controller
@RequestMapping("/guanlidaogoudengluxinxi/GuanlidaogoudengluxinxiCtrl/")
public class GuanlidaogoudengluxinxiCtrl {

	@Autowired
	private ShoppingguideMapper shoppingguideMapper;
	
	
	/**
	 * 查询
	 */
	@RequestMapping(value="search")
	public @ResponseBody JsonResult search(@RequestBody ShoppingguideEty shoppingguideEty) throws Exception {
		int count = shoppingguideMapper.selectLimitCount(shoppingguideEty);
		List<ShoppingguideEty> list = shoppingguideMapper.selectByLimit(shoppingguideEty);
		return JsonResultFactory.extgrid(list, count);
	}
	
	/**
	 * 保存
	 */
	@RequestMapping(value="save")
	public @ResponseBody JsonResult save(@RequestBody ShoppingguideEty shoppingguideEty) throws Exception {
		if(shoppingguideEty.getShoppingID() == null) {
			shoppingguideMapper.insert(shoppingguideEty);
		}
		else {
			shoppingguideMapper.updateById(shoppingguideEty);
		}
		return JsonResultFactory.success();
	}
	
	/**
	 * 删除
	 */
	@RequestMapping(value="delete")
	public @ResponseBody JsonResult delete(@RequestParam("shoppingID") int shoppingID) {
		shoppingguideMapper.deleteById(shoppingID);
		return JsonResultFactory.success();
	}
	
	/**
	 * 得到详细信息
	 */
	@RequestMapping(value="getDetailInfo")
	public @ResponseBody JsonResult getDetailInfo(@RequestParam("shoppingID") int shoppingID) throws Exception {
		ShoppingguideEty shoppingguideEty = shoppingguideMapper.selectById(shoppingID);
		return JsonResultFactory.success(shoppingguideEty);
	}
	
}