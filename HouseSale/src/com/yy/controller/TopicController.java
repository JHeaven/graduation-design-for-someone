package com.yy.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yy.model.Remarks;
import com.yy.model.Topic;
import com.yy.service.IRemarksService;
import com.yy.service.ITopicService;
import com.yy.service.IUserService;

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
	 * ����ҳ��
	 */
	@RequestMapping("/goToAdd")
	public ModelAndView goToAdd() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/topic_add");
		return mv;
	}

	/**
	 * ѡ��һ��
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
	 * ����
	 * @param id
	 * @return
	 */
	@RequestMapping("/addRemark")
	public ModelAndView addRemark(Remarks re) {
		ModelAndView mv = new ModelAndView();
		re.setCreateTime(new Date());
		re.setDeleted(0);
		re.setPs("��");
		if (remarksService.insertSelective(re)>0) {
			mv.addObject("message", "window.parent.frames.upText(\"�����ɹ���\");");
		} else {
			mv.addObject("message", "window.parent.frames.upText(\"����ʧ�ܣ�\");");
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
	 * ����
	 */
	@RequestMapping("/addTopic")
	public ModelAndView addTopic(Topic topic) {
		topic.setCount(1);
		topic.setDeleted(0);
		topic.setUpTime(new Date());
		topic.setPs("��");
		ModelAndView mv = new ModelAndView();
		
		//for (int i = 11; i < 50; i++) {
		//	topic.setTitle(topic.getTitle()+i);
			if (topicService.insertSelective(topic) > 0) {
				mv.addObject("message", "window.parent.frames.upText(\"�����ɹ���\");");
			} else {
				mv.addObject("message", "window.parent.frames.upText(\"����ʧ�ܣ�\");");
			}
		//	topic.setTitle(topic.getTitle().substring(0,topic.getTitle().length()-2));
		//}
		
		
		mv.setViewName("/sub/topic_add");
		return mv;
	}
	
	
	/**
	 * չʾ�б�
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
