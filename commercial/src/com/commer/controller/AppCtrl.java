package com.commer.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ac.util.SessionUtil;
import com.ac.util.jsonresult.JsonResult;
import com.ac.util.jsonresult.JsonResultFactory;
import com.commer.dao.entity.AdminpeopleEty;
import com.commer.dao.entity.UserpeopleEty;
import com.commer.dao.mapper.base.AdminpeopleMapper;
import com.commer.dao.mapper.base.UserpeopleMapper;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;

@Controller
public class AppCtrl {
	
	@Autowired
	private AdminpeopleMapper AdminpeopleMapper;

	@Autowired
	private UserpeopleMapper userpeopleMapper;
	
	@RequestMapping(value="/sys/login")
	public @ResponseBody JsonResult login(@RequestBody Map<String, String> paraMap) {
		String userName = paraMap.get("username");
		String password = paraMap.get("password");
		String loginstatus = paraMap.get("checkbox1");

		if("1".equals(loginstatus)){
			UserpeopleEty userpeopleEty = new UserpeopleEty();
			userpeopleEty.setUserpeopleName(userName);
			userpeopleEty.setUserPeoplePasswrod(password);
			UserpeopleEty userpeopleEty1 = userpeopleMapper.selectByName(userpeopleEty);
			if(userpeopleEty1 != null) {
				SessionUtil.loginstatis(loginstatus);
				SessionUtil.login(userName);
				return JsonResultFactory.success();
				
			}else {
				return JsonResultFactory.error("error");
			}
			
		}else{
			AdminpeopleEty adminpeopleEty = new AdminpeopleEty();
			adminpeopleEty.setAdminPeopleName(userName);
			adminpeopleEty.setAdminPeoplePassword(password);
			AdminpeopleEty AdminpeopleEty1 = AdminpeopleMapper.selectByName(adminpeopleEty);
			if(AdminpeopleEty1 != null) {
				SessionUtil.loginstatis(loginstatus);
				SessionUtil.login(userName);
				return JsonResultFactory.success();
				
			}else { 
				return JsonResultFactory.error("error");
			}
			
		}
	}
	
	@RequestMapping(value="/sys/logout")
	public String login() {
		SessionUtil.logout();
		return "redirect:/login";
	}
	
	@RequestMapping("/sys/route")
	public @ResponseBody List<Map<String, String>> route(HttpServletRequest request) throws Exception {
		List<Map<String, String>> routeList = Lists.newArrayList();
		Map<String, String> route = null;
	
		route = Maps.newHashMap();
		routeList.add(route);
		route.put("name", "客户信息");
		route.put("ctrl", "KehuxinCtrl");
		route.put("path", "/module/kehuxin");
		route.put("templateUrl", request.getContextPath() + "/templates/module/KehuxinListTpl.html?v=");
		route.put("files", request.getContextPath() + "/ctrl/module/KehuxinCtrl.js");
	
		route = Maps.newHashMap();
		routeList.add(route);
		route.put("name", "客户楼房浏览查询");
		route.put("ctrl", "KehuloufangliulanchaxunCtrl");
		route.put("path", "/module/kehuloufangliulanchaxun");
		route.put("templateUrl", request.getContextPath() + "/templates/module/KehuloufangliulanchaxunListTpl.html?v=");
		route.put("files", request.getContextPath() + "/ctrl/module/KehuloufangliulanchaxunCtrl.js");
	
		route = Maps.newHashMap();
		routeList.add(route);
		route.put("name", "客户订单查询");
		route.put("ctrl", "KehudingdanchaxunCtrl");
		route.put("path", "/module/kehudingdanchaxun");
		route.put("templateUrl", request.getContextPath() + "/templates/module/KehudingdanchaxunListTpl.html?v=");
		route.put("files", request.getContextPath() + "/ctrl/module/KehudingdanchaxunCtrl.js");
	
		route = Maps.newHashMap();
		routeList.add(route);
		route.put("name", "客户订单申请");
		route.put("ctrl", "KehudingdanshenqingCtrl");
		route.put("path", "/module/kehudingdanshenqing");
		route.put("templateUrl", request.getContextPath() + "/templates/module/KehudingdanshenqingListTpl.html?v=");
		route.put("files", request.getContextPath() + "/ctrl/module/KehudingdanshenqingCtrl.js");
	
		route = Maps.newHashMap();
		routeList.add(route);
		route.put("name", "预约商品房");
		route.put("ctrl", "KehuyuyueshangpinfangCtrl");
		route.put("path", "/module/kehuyuyueshangpinfang");
		route.put("templateUrl", request.getContextPath() + "/templates/module/KehuyuyueshangpinfangListTpl.html?v=");
		route.put("files", request.getContextPath() + "/ctrl/module/KehuyuyueshangpinfangCtrl.js");
	
		route = Maps.newHashMap();
		routeList.add(route);
		route.put("name", "管理员信息");
		route.put("ctrl", "GuanliyuanxinxiguanliCtrl");
		route.put("path", "/module/guanliyuanxinxiguanli");
		route.put("templateUrl", request.getContextPath() + "/templates/module/GuanliyuanxinxiguanliListTpl.html?v=");
		route.put("files", request.getContextPath() + "/ctrl/module/GuanliyuanxinxiguanliCtrl.js");
	
		route = Maps.newHashMap();
		routeList.add(route);
		route.put("name", "商品房信息");
		route.put("ctrl", "ShangpinfangxinxiCtrl");
		route.put("path", "/module/shangpinfangxinxi");
		route.put("templateUrl", request.getContextPath() + "/templates/module/ShangpinfangxinxiListTpl.html?v=");
		route.put("files", request.getContextPath() + "/ctrl/module/ShangpinfangxinxiCtrl.js");
	
		route = Maps.newHashMap();
		routeList.add(route);
		route.put("name", "用户信息");
		route.put("ctrl", "GuanliyonghuxinxiCtrl");
		route.put("path", "/module/guanliyonghuxinxi");
		route.put("templateUrl", request.getContextPath() + "/templates/module/GuanliyonghuxinxiListTpl.html?v=");
		route.put("files", request.getContextPath() + "/ctrl/module/GuanliyonghuxinxiCtrl.js");
	
		route = Maps.newHashMap();
		routeList.add(route);
		route.put("name", "订单管理");
		route.put("ctrl", "GuanlikehudingdasnCtrl");
		route.put("path", "/module/guanlikehudingdasn");
		route.put("templateUrl", request.getContextPath() + "/templates/module/GuanlikehudingdasnListTpl.html?v=");
		route.put("files", request.getContextPath() + "/ctrl/module/GuanlikehudingdasnCtrl.js");
	
		route = Maps.newHashMap();
		routeList.add(route);
		route.put("name", "登录信息");
		route.put("ctrl", "GuanlidaogoudengluxinxiCtrl");
		route.put("path", "/module/guanlidaogoudengluxinxi");
		route.put("templateUrl", request.getContextPath() + "/templates/module/GuanlidaogoudengluxinxiListTpl.html?v=");
		route.put("files", request.getContextPath() + "/ctrl/module/GuanlidaogoudengluxinxiCtrl.js");
	
		route = Maps.newHashMap();
		routeList.add(route);
		route.put("name", "安排导购员");
		route.put("ctrl", "GuanlianpaidaogouyaunCtrl");
		route.put("path", "/module/guanlianpaidaogouyaun");
		route.put("templateUrl", request.getContextPath() + "/templates/module/GuanlianpaidaogouyaunListTpl.html?v=");
		route.put("files", request.getContextPath() + "/ctrl/module/GuanlianpaidaogouyaunCtrl.js");
		return routeList;
	}
	
	@RequestMapping("/sys/menus")
	public @ResponseBody List<Map<String, Object>> ngMenus() throws Exception {
		List<Map<String, Object>> menuList = Lists.newArrayList();
		Map<String, Object> menu = null;
		Map<String, String> subMenu = null;
		List<Map<String, String>> subMenuList = null;
	
		
		String loginstatus = (String) SessionUtil.getLoginstatis();
		if("1".equals(loginstatus)){
		
		
			menu = Maps.newHashMap();
			menuList.add(menu);
			menu.put("name", "客户信息管理");
			menu.put("type", "toggle");
			menu.put("showTip", "false");
			menu.put("icon", "fa-folder");
			
			subMenuList = Lists.newArrayList();
			menu.put("subMenus", subMenuList);
				
			subMenu = Maps.newHashMap();
			subMenu.put("name", "客户信息");
			subMenu.put("type", "link");
			subMenu.put("showTip", "false");
			subMenu.put("icon", "fa-file-o");
			subMenu.put("path", "/module/kehuxin");
			subMenuList.add(subMenu);
			
		
			menu = Maps.newHashMap();
			menuList.add(menu);
			menu.put("name", "楼房信息查询预约");
			menu.put("type", "toggle");
			menu.put("showTip", "false");
			menu.put("icon", "fa-folder");
			
			subMenuList = Lists.newArrayList();
			menu.put("subMenus", subMenuList);
				
			subMenu = Maps.newHashMap();
			subMenu.put("name", "查询预约");
			subMenu.put("type", "link");
			subMenu.put("showTip", "false");
			subMenu.put("icon", "fa-file-o");
			subMenu.put("path", "/module/kehuloufangliulanchaxun");
			subMenuList.add(subMenu);
			
		
			menu = Maps.newHashMap();
			menuList.add(menu);
			menu.put("name", "客户订单");
			menu.put("type", "toggle");
			menu.put("showTip", "false");
			menu.put("icon", "fa-folder");
			
			subMenuList = Lists.newArrayList();
			menu.put("subMenus", subMenuList);
				
			subMenu = Maps.newHashMap();
			subMenu.put("name", "客户订单查询");
			subMenu.put("type", "link");
			subMenu.put("showTip", "false");
			subMenu.put("icon", "fa-file-o");
			subMenu.put("path", "/module/kehudingdanchaxun");
			subMenuList.add(subMenu);
				
			subMenu = Maps.newHashMap();
			subMenu.put("name", "客户订单申请");
			subMenu.put("type", "link");
			subMenu.put("showTip", "false");
			subMenu.put("icon", "fa-file-o");
			subMenu.put("path", "/module/kehudingdanshenqing");
			subMenuList.add(subMenu);
			
		
			menu = Maps.newHashMap();
			menuList.add(menu);
			menu.put("name", "客户预约");
			menu.put("type", "toggle");
			menu.put("showTip", "false");
			menu.put("icon", "fa-folder");
			
			subMenuList = Lists.newArrayList();
			menu.put("subMenus", subMenuList);
				
			subMenu = Maps.newHashMap();
			subMenu.put("name", "我的预约");
			subMenu.put("type", "link");
			subMenu.put("showTip", "false");
			subMenu.put("icon", "fa-file-o");
			subMenu.put("path", "/module/kehuyuyueshangpinfang");
			subMenuList.add(subMenu);
		
		
		
		}else {
			
				menu = Maps.newHashMap();
				menuList.add(menu);
				menu.put("name", "管理员信息管理");
				menu.put("type", "toggle");
				menu.put("showTip", "false");
				menu.put("icon", "fa-folder");
				
				subMenuList = Lists.newArrayList();
				menu.put("subMenus", subMenuList);
					
				subMenu = Maps.newHashMap();
				subMenu.put("name", "管理员信息");
				subMenu.put("type", "link");
				subMenu.put("showTip", "false");
				subMenu.put("icon", "fa-file-o");
				subMenu.put("path", "/module/guanliyuanxinxiguanli");
				subMenuList.add(subMenu);
				
			
				menu = Maps.newHashMap();
				menuList.add(menu);
				menu.put("name", "管理商品房");
				menu.put("type", "toggle");
				menu.put("showTip", "false");
				menu.put("icon", "fa-folder");
				
				subMenuList = Lists.newArrayList();
				menu.put("subMenus", subMenuList);
					
				subMenu = Maps.newHashMap();
				subMenu.put("name", "商品房信息");
				subMenu.put("type", "link");
				subMenu.put("showTip", "false");
				subMenu.put("icon", "fa-file-o");
				subMenu.put("path", "/module/shangpinfangxinxi");
				subMenuList.add(subMenu);
				
			
				menu = Maps.newHashMap();
				menuList.add(menu);
				menu.put("name", "管理客户信息");
				menu.put("type", "toggle");
				menu.put("showTip", "false");
				menu.put("icon", "fa-folder");
				
				subMenuList = Lists.newArrayList();
				menu.put("subMenus", subMenuList);
					
				subMenu = Maps.newHashMap();
				subMenu.put("name", "用户信息");
				subMenu.put("type", "link");
				subMenu.put("showTip", "false");
				subMenu.put("icon", "fa-file-o");
				subMenu.put("path", "/module/guanliyonghuxinxi");
				subMenuList.add(subMenu);
				
			
				menu = Maps.newHashMap();
				menuList.add(menu);
				menu.put("name", "管理客户订单");
				menu.put("type", "toggle");
				menu.put("showTip", "false");
				menu.put("icon", "fa-folder");
				
				subMenuList = Lists.newArrayList();
				menu.put("subMenus", subMenuList);
					
				subMenu = Maps.newHashMap();
				subMenu.put("name", "订单管理");
				subMenu.put("type", "link");
				subMenu.put("showTip", "false");
				subMenu.put("icon", "fa-file-o");
				subMenu.put("path", "/module/guanlikehudingdasn");
				subMenuList.add(subMenu);
				
			
				menu = Maps.newHashMap();
				menuList.add(menu);
				menu.put("name", "管理导购员");
				menu.put("type", "toggle");
				menu.put("showTip", "false");
				menu.put("icon", "fa-folder");
				
				subMenuList = Lists.newArrayList();
				menu.put("subMenus", subMenuList);
					
				subMenu = Maps.newHashMap();
				subMenu.put("name", "登录信息");
				subMenu.put("type", "link");
				subMenu.put("showTip", "false");
				subMenu.put("icon", "fa-file-o");
				subMenu.put("path", "/module/guanlidaogoudengluxinxi");
				subMenuList.add(subMenu);
				
			
				menu = Maps.newHashMap();
				menuList.add(menu);
				menu.put("name", "管理预定信息");
				menu.put("type", "toggle");
				menu.put("showTip", "false");
				menu.put("icon", "fa-folder");
				
				subMenuList = Lists.newArrayList();
				menu.put("subMenus", subMenuList);
					
				subMenu = Maps.newHashMap();
				subMenu.put("name", "安排导购员");
				subMenu.put("type", "link");
				subMenu.put("showTip", "false");
				subMenu.put("icon", "fa-file-o");
				subMenu.put("path", "/module/guanlianpaidaogouyaun");
				subMenuList.add(subMenu);
		
		}
		return menuList;
	}
}
