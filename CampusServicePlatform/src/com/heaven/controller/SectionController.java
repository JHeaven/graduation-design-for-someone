package com.heaven.controller;

import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.heaven.model.Section;
import com.heaven.service.ISectionService;
@Controller
@RequestMapping("/section")
/**
 * 板块分类控制器
 * @author HEAVEN
 *
 */
public class SectionController {
	@Resource
	ISectionService sectionService = null;
	
	/**
	 * 展示分类
	 * @param parentId
	 * @return
	 */
	@RequestMapping("/sectionSelectByParentid")
	public ModelAndView sectionSelectByParentid(@RequestParam("parentId") int parentId,HttpSession session){
		//清空session查询
		session.setAttribute("searchTitle", null);
		session.setAttribute("searchCon", null);
		//随机获取颜色
		String [] colors = {"plum","brown","green","primary","orange","pink","purple","cyan","blue","aqua","red"};
		Random ra =new Random();
		ModelAndView mv = new ModelAndView();
		List<Section> sectionAll = sectionService.selectAllByParent(parentId);
		Iterator<Section> it = sectionAll.iterator();
		Section tempSection = null;
		while(it.hasNext()){
			tempSection = it.next();
			tempSection.setSectionColor(colors[ra.nextInt(11)]);
		}
		mv.addObject("sectionAll",sectionAll);
		mv.setViewName("page/articleSection");
		return mv;
	}
}
