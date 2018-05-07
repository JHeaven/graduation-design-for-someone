package com.commer.controller.shangpinfangxinxi;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestBody;

import com.ac.util.jsonresult.JsonResult;
import com.ac.util.jsonresult.JsonResultFactory;


import com.commer.dao.entity.CommercialEty;
import com.commer.dao.mapper.base.CommercialMapper;

/**
 * 商品房信息
 */
@Controller
@RequestMapping("/shangpinfangxinxi/ShangpinfangxinxiCtrl/")
public class ShangpinfangxinxiCtrl {

	@Autowired
	private CommercialMapper commercialMapper;
	
	
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
			commercialMapper.updateById(commercialEty);
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