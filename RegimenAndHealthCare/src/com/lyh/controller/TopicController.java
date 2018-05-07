package com.lyh.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lyh.model.Remarks;
import com.lyh.model.Topic;
import com.lyh.service.IRemarksService;
import com.lyh.service.ITopicService;
import com.lyh.service.IUserService;

@Controller
@RequestMapping("/topic")
public class TopicController {

	@Resource
	ITopicService topicService = null;
	@Resource
	IRemarksService remarksService =  null;
	@Resource
	IUserService userService = null;
	
	
	/**
	 * 增加页面
	 */
	@RequestMapping("/goToAdd")
	public ModelAndView goToAdd() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/topic_add");
		return mv;
	}

	/**
	 * 选择一个
	 */
	@RequestMapping("/select/{id}")
	public ModelAndView goToAdd(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		List<Remarks> allRe = remarksService.selectByTopic(id);
		for (Remarks remarks : allRe) {
			remarks.setName(userService.selectByPrimaryKey(remarks.getUserId()).getLoginName());
		}
		List<Topic> topTopic = topicService.selectTop5();
		for (Topic topic : topTopic) {
			topic.setContent(stripHtml(topic.getContent()));
			if (topic.getContent().length()>20) {
				topic.setContent(topic.getContent().substring(0,20));
			}
		}
		Topic topic = topicService.selectByPrimaryKey(id);
		topic.setCount(topic.getCount()+1);
		topicService.updateByPrimaryKeySelective(topic);
		String content = topic.getContent();
		int firstIndex = content.indexOf("<img src=\"");
		if (firstIndex < 0) {
			
			topic.setPhoto(null);
			
		}else{
			firstIndex += 10;
			content = content.substring(firstIndex);
			int nextIndex = content.indexOf("\" style=\"width: ");
			content = content.substring(0, nextIndex);
			topic.setPhoto(content);
		}
		
		mv.addObject("topic", topic);
		mv.addObject("allRe", allRe);
		mv.addObject("topTopic", topTopic);
		mv.setViewName("/sub/topic_select");
		return mv;
	}
	
	
	/**
	 * 评论
	 * @param id
	 * @return
	 */
	@RequestMapping("/addRemark")
	public ModelAndView addRemark(Remarks re) {
		ModelAndView mv = new ModelAndView();
		re.setCreateTime(new Date());
		re.setDeleted(0);
		re.setPs("无");
		if (remarksService.insertSelective(re)>0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}
		
		List<Topic> topTopic = topicService.selectTop5();
		for (Topic topic : topTopic) {
			topic.setContent(stripHtml(topic.getContent()));
			if (topic.getContent().length()>20) {
				topic.setContent(topic.getContent().substring(0,20));
			}
		}
		Topic topic = topicService.selectByPrimaryKey(re.getTopicId());
		List<Remarks> allRe = remarksService.selectByTopic(re.getTopicId());
		for (Remarks remarks : allRe) {
			remarks.setName(userService.selectByPrimaryKey(remarks.getUserId()).getLoginName());
		}
		String content = topic.getContent();
		int firstIndex = content.indexOf("<img src=\"") + 10;
		content = content.substring(firstIndex);
		int nextIndex = content.indexOf("\" style=\"width: ");
		content = content.substring(0, nextIndex);
		topic.setPhoto(content);
		mv.addObject("topic", topic);
		mv.addObject("allRe", allRe);
		mv.addObject("topTopic", topTopic);
		mv.setViewName("/sub/topic_select");
		return mv;
	}
	
	
	
	
	/**
	 * 增加
	 */
	@RequestMapping("/addTopic")
	public ModelAndView addTopic(Topic topic) {
		topic.setCount(1);
		topic.setDeleted(0);
		topic.setUpTime(new Date());
		topic.setPs("无");
		ModelAndView mv = new ModelAndView();
		if (topicService.insertSelective(topic) > 0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}
		mv.setViewName("/sub/topic_add");
		return mv;
	}
	
	
	/**
	 * 展示列表
	 */
	@RequestMapping("/showTopic/{pageNo}")
	public ModelAndView index(@PathVariable("pageNo")Integer pageNo) {
		ModelAndView mv = new ModelAndView();
		List<Topic> allTopic = topicService.selectByPage(pageNo);
		int pageSum = topicService.selectAll().size();
		if (pageSum % 5 == 0) {
			pageSum = pageSum/5;
		}else{
			pageSum = pageSum/5 + 1;
		}
		if (pageNo>pageSum) {
			pageNo = pageSum;
		}
		if (pageNo<1) {
			pageNo = 1;
		}
		List<Topic> topTopic = topicService.selectTop5();
		for (Topic topic : allTopic) {
			String content = topic.getContent();
			int firstIndex = content.indexOf("<img src=\"") + 10;
			
			content = content.substring(firstIndex);
			int nextIndex = content.indexOf("\" style=\"width: ");
			content = content.substring(0, nextIndex);
			topic.setPhoto(content);
			topic.setContent(stripHtml(topic.getContent()));
			if (topic.getContent().length()>300) {
				topic.setContent(topic.getContent().substring(0,300));
			}
		}
		for (Topic topic : topTopic) {
			topic.setContent(stripHtml(topic.getContent()));
			if (topic.getContent().length()>20) {
				topic.setContent(topic.getContent().substring(0,20));
			}
		}
		
		
		mv.addObject("allTopic", allTopic);
		mv.addObject("topTopic", topTopic);
		mv.addObject("pageNo", pageNo);
		mv.addObject("pageSum", pageSum);
		mv.setViewName("/sub/topic_show");
		return mv;
	}
	
	
	/**
	 * clear html 
	 */
	public String stripHtml(String content) {
		content = content.replaceAll("<p .*?>", "\r\n");
		content = content.replaceAll("<br\\s*/?>", "\r\n");
		content = content.replaceAll("\\<.*?>", "");
		return content;
	}

}
