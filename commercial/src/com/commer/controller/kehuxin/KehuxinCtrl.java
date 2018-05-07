package com.commer.controller.kehuxin;

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


import com.commer.dao.entity.UserpeopleEty;
import com.commer.dao.mapper.base.UserpeopleMapper;

/**
 * 客户信息
 */
@Controller
@RequestMapping("/kehuxin/KehuxinCtrl/")
public class KehuxinCtrl {

	@Autowired
	private UserpeopleMapper userpeopleMapper;
	
	
	/**
	 * 查询
	 */
	@RequestMapping(value="search")
	public @ResponseBody JsonResult search(@RequestBody UserpeopleEty userpeopleEty) throws Exception {
		int count = userpeopleMapper.selectLimitCount(userpeopleEty);
		
		userpeopleEty.setUserpeopleName(SessionUtil.getLoginUser());
		List<UserpeopleEty> list = userpeopleMapper.selectByLimit(userpeopleEty);
		return JsonResultFactory.extgrid(list, count);
	}
	
	/**
	 * 保存
	 */
	@RequestMapping(value="save")
	public @ResponseBody JsonResult save(@RequestBody UserpeopleEty userpeopleEty) throws Exception {
		if(userpeopleEty.getUserPeopleID() == null) {
			userpeopleMapper.insert(userpeopleEty);
		}
		else {
			userpeopleMapper.updateById(userpeopleEty);
		}
		return JsonResultFactory.success();
	}
	
	/**
	 * 删除
	 */
	@RequestMapping(value="delete")
	public @ResponseBody JsonResult delete(@RequestParam("userPeopleID") int userPeopleID) {
		userpeopleMapper.deleteById(userPeopleID);
		return JsonResultFactory.success();
	}
	
	/**
	 * 得到详细信息
	 */
	@RequestMapping(value="getDetailInfo")
	public @ResponseBody JsonResult getDetailInfo(@RequestParam("userPeopleID") int userPeopleID) throws Exception {
		UserpeopleEty userpeopleEty = userpeopleMapper.selectById(userPeopleID);
		return JsonResultFactory.success(userpeopleEty);
	}
	
}