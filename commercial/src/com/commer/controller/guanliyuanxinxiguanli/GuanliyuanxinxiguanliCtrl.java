package com.commer.controller.guanliyuanxinxiguanli;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestBody;

import com.ac.util.jsonresult.JsonResult;
import com.ac.util.jsonresult.JsonResultFactory;


import com.commer.dao.entity.AdminpeopleEty;
import com.commer.dao.mapper.base.AdminpeopleMapper;

/**
 * 管理员信息
 */
@Controller
@RequestMapping("/guanliyuanxinxiguanli/GuanliyuanxinxiguanliCtrl/")
public class GuanliyuanxinxiguanliCtrl {

	@Autowired
	private AdminpeopleMapper adminpeopleMapper;
	
	
	/**
	 * 查询
	 */
	@RequestMapping(value="search")
	public @ResponseBody JsonResult search(@RequestBody AdminpeopleEty adminpeopleEty) throws Exception {
		int count = adminpeopleMapper.selectLimitCount(adminpeopleEty);
		List<AdminpeopleEty> list = adminpeopleMapper.selectByLimit(adminpeopleEty);
		return JsonResultFactory.extgrid(list, count);
	}
	
	/**
	 * 保存
	 */
	@RequestMapping(value="save")
	public @ResponseBody JsonResult save(@RequestBody AdminpeopleEty adminpeopleEty) throws Exception {
		if(adminpeopleEty.getAdminPeopleID() == null) {
			adminpeopleMapper.insert(adminpeopleEty);
		}
		else {
			adminpeopleMapper.updateById(adminpeopleEty);
		}
		return JsonResultFactory.success();
	}
	
	/**
	 * 删除
	 */
	@RequestMapping(value="delete")
	public @ResponseBody JsonResult delete(@RequestParam("adminPeopleID") int adminPeopleID) {
		adminpeopleMapper.deleteById(adminPeopleID);
		return JsonResultFactory.success();
	}
	
	/**
	 * 得到详细信息
	 */
	@RequestMapping(value="getDetailInfo")
	public @ResponseBody JsonResult getDetailInfo(@RequestParam("adminPeopleID") int adminPeopleID) throws Exception {
		AdminpeopleEty adminpeopleEty = adminpeopleMapper.selectById(adminPeopleID);
		return JsonResultFactory.success(adminpeopleEty);
	}
	
}