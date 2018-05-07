package com.xjd.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.xjd.constance.Constance;
import com.xjd.model.Order;
import com.xjd.model.RoomWithBLOBs;
import com.xjd.model.Users;
import com.xjd.service.IOrderService;
import com.xjd.service.IRoomService;

@Controller
@RequestMapping("/room")
public class RoomController {
	@Resource
	IRoomService roomService;
	@Resource
	IOrderService orderService;
	
	@RequestMapping("/add")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/room_add");
		return mv;
	}
	

	@RequestMapping("/all")
	public ModelAndView all() {
		ModelAndView mv = new ModelAndView();
		List<RoomWithBLOBs> allRoom = roomService.all();
		mv.addObject("allRoom",allRoom);
		mv.setViewName("/sub/room_all");
		return mv;
	}
	
	

	@RequestMapping("/allSection")
	public ModelAndView allSection() {
		Date now = new Date();
		ModelAndView mv = new ModelAndView();
		List<RoomWithBLOBs> allRoom = roomService.all();
		
		List<Order> allOrder = orderService.all();
		
		for (RoomWithBLOBs roomWithBLOBs : allRoom) {
			roomWithBLOBs.setPs("房间空闲可以预定");
			for (Order order : allOrder) {
				if (roomWithBLOBs.getName().equals(order.getName())) {
					if (now.after(order.getFromTime()) && now.before(order.getToTime())) {
						if ("等待审核".equals(order.getPs())) {
							roomWithBLOBs.setPs("今天有涉及预定，但还未处理");
						}
						if ("预定成功".equals(order.getPs())) {
							roomWithBLOBs.setPs("今天有预定，客人未到");
						}
						if ("客人入住".equals(order.getPs())) {
							roomWithBLOBs.setPs("有客在住");
						}
						if ("客人退房".equals(order.getPs())) {
							roomWithBLOBs.setPs("客人已经退房");
						}
					}
					
					
					
					if (now.compareTo(order.getFromTime())==0 && now.before(order.getToTime())) {
						if ("等待审核".equals(order.getPs())) {
							roomWithBLOBs.setPs("今天有涉及预定，但还未处理");
						}
						if ("预定成功".equals(order.getPs())) {
							roomWithBLOBs.setPs("今天有预定，客人未到");
						}
						if ("客人入住".equals(order.getPs())) {
							roomWithBLOBs.setPs("有客在住");
						}
						if ("客人退房".equals(order.getPs())) {
							roomWithBLOBs.setPs("客人已经退房");
						}
					}
					
					
					
					if (now.after(order.getFromTime()) && now.compareTo(order.getToTime())==0) {
						if ("等待审核".equals(order.getPs())) {
							roomWithBLOBs.setPs("今天有涉及预定，但还未处理");
						}
						if ("预定成功".equals(order.getPs())) {
							roomWithBLOBs.setPs("今天有预定，客人未到");
						}
						if ("客人入住".equals(order.getPs())) {
							roomWithBLOBs.setPs("有客在住");
						}
						if ("客人退房".equals(order.getPs())) {
							roomWithBLOBs.setPs("客人已经退房");
						}
					}
					
					
					
					
				}
				
				
				
			}
		}
		
		
		
		mv.addObject("allRoom",allRoom);
		mv.setViewName("/sub/room_all_section");
		return mv;
	}
	
	
	@RequestMapping("/show")
	public ModelAndView show(HttpSession session) {
		session.setAttribute(Constance.timeFlag, null);
		ModelAndView mv = new ModelAndView();
		List<RoomWithBLOBs> allRoom = roomService.all();
		mv.addObject("allRoom",allRoom);
		mv.setViewName("/sub/room_show");
		return mv;
	}
	
	@RequestMapping("/update/{id}")
	public ModelAndView update(@PathVariable("id")Integer id) {
		RoomWithBLOBs room = roomService.selectByPrimaryKey(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("room",room);
		mv.setViewName("/sub/room_update");
		return mv;
	}
	
	

	@RequestMapping("/select/{id}")
	public ModelAndView select(@PathVariable("id")Integer id) {
		RoomWithBLOBs room = roomService.selectByPrimaryKey(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("room",room);
		mv.setViewName("/sub/room_select");
		return mv;
	}
	
	

	@RequestMapping("/del/{id}")
	public ModelAndView del(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();

		if (roomService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message", "window.parent.frames.toastrInfo(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.toastrInfo(\"操作失败！\");");
		}
		List<RoomWithBLOBs> allRoom = roomService.all();
		mv.addObject("allRoom",allRoom);
		mv.setViewName("/sub/room_all");
		return mv;
	}
	
	
	
	@RequestMapping("/doadd")
	public ModelAndView doadd(RoomWithBLOBs room) {
		room.setServiceTime(new Date());
		
		String content = room.getContent();
		int firstIndex = content.indexOf("<img src=\"") + 10;
		if (firstIndex>=10) {
			content = content.substring(firstIndex);
			int nextIndex = content.indexOf("\" style=\"width: ");
			content = content.substring(0, nextIndex);
			room.setPhoto(content);
		}
		
		
		ModelAndView mv = new ModelAndView();
		
		if (roomService.insertSelective(room)>0) {
			mv.addObject("message", "window.parent.frames.toastrInfo(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.toastrInfo(\"操作失败！\");");
		}
		
		
		mv.setViewName("/sub/room_add");
		return mv;
	}

	
	
	@RequestMapping("/doupdate")
	public ModelAndView doupdate(RoomWithBLOBs room) {
		room.setServiceTime(new Date());
		
		String content = room.getContent();
		int firstIndex = content.indexOf("<img src=\"") + 10;
		if (firstIndex>=10) {
			content = content.substring(firstIndex);
			int nextIndex = content.indexOf("\" style=\"width: ");
			content = content.substring(0, nextIndex);
			room.setPhoto(content);
		}
		
		
		ModelAndView mv = new ModelAndView();
		
		if (roomService.updateByPrimaryKeySelective(room)>0) {
			mv.addObject("message", "window.parent.frames.toastrInfo(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.toastrInfo(\"操作失败！\");");
		}
		
		
		List<RoomWithBLOBs> allRoom = roomService.all();
		mv.addObject("allRoom",allRoom);
		mv.setViewName("/sub/room_all");
		return mv;
	}
}
