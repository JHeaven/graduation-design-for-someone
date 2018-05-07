package com.xjd.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
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
@RequestMapping("/order")
public class OrderController {
	
	@Resource
	IOrderService orderService;
	@Resource
	IRoomService roomService;
	
	@RequestMapping("/selectTime")
	public ModelAndView selectTime(Order order,HttpSession session) {
		
		session.setAttribute(Constance.timeFlag,order);
		
		List<Order> allOrder = orderService.selectTime(order);
		
		List<RoomWithBLOBs> allRoom = roomService.all();
		for (Iterator iterator = allRoom.iterator(); iterator.hasNext();) {
			RoomWithBLOBs roomWithBLOBs = (RoomWithBLOBs) iterator.next();
			for (Order order2 : allOrder) {
				if (roomWithBLOBs.getName().equals(order2.getName())) {
					iterator.remove();
				}
			}
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("allRoom",allRoom);
		mv.addObject("order",order);
		mv.setViewName("/sub/room_show");
		return mv;
	}
	
	
	@RequestMapping("/do")
	public ModelAndView doit(Order order,HttpSession session) {
		session.setAttribute(Constance.timeFlag, null);
		order.setOrderTime(new Date());
		order.setPs("等待审核");
		ModelAndView mv = new ModelAndView();
		if (orderService.insertSelective(order)>0) {
			mv.addObject("message", "window.parent.frames.toastrInfo(\"预定成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.toastrInfo(\"预定失败！\");");
		}
		
		List<RoomWithBLOBs> allRoom = roomService.all();
		mv.addObject("allRoom",allRoom);
		mv.setViewName("/sub/room_show");
		return mv;
	}
	
	
	
	
	@RequestMapping("/my/{id}")
	public ModelAndView my(@PathVariable("id")Integer id) {
		
		List<Order> allOrder = orderService.selectByUser(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("allOrder",allOrder);
		mv.setViewName("/sub/order_my");
		return mv;
	}
	
	

	@RequestMapping("/toHotel/{id}")
	public ModelAndView toHotel(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();

		Order order = orderService.selectByPrimaryKey(id);
		
		order.setPs("客人入住");
		if (orderService.updateByPrimaryKeySelective(order)>0) {
			mv.addObject("message", "window.parent.frames.toastrInfo(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.toastrInfo(\"操作失败！\");");
		}
		
		List<Order> allOrder = orderService.all();
		mv.addObject("allOrder",allOrder);
		mv.setViewName("/sub/order_all");
		return mv;
	}
	
	

	@RequestMapping("/leaveHotel/{id}")
	public ModelAndView leaveHotel(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();

		Order order = orderService.selectByPrimaryKey(id);
		
		order.setPs("客人退房");
		if (orderService.updateByPrimaryKeySelective(order)>0) {
			mv.addObject("message", "window.parent.frames.toastrInfo(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.toastrInfo(\"操作失败！\");");
		}
		
		List<Order> allOrder = orderService.all();
		mv.addObject("allOrder",allOrder);
		mv.setViewName("/sub/order_all");
		return mv;
	}
	
	
	
	
	@RequestMapping("/pass/{id}")
	public ModelAndView pass(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		Order order = orderService.selectByPrimaryKey(id);
		order.setPs("预定成功");
		if (orderService.updateByPrimaryKeySelective(order)>0) {
			mv.addObject("message", "window.parent.frames.toastrInfo(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.toastrInfo(\"操作失败！\");");
		}
		
		List<Order> allOrder = orderService.all();
		mv.addObject("allOrder",allOrder);
		mv.setViewName("/sub/order_all");
		return mv;
	}
	
	
	
	
	@RequestMapping("/deladmin/{id}")
	public ModelAndView deladmin(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		
		if (orderService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message", "window.parent.frames.toastrInfo(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.toastrInfo(\"操作失败！\");");
		}
		
		List<Order> allOrder = orderService.all();
		mv.addObject("allOrder",allOrder);
		mv.setViewName("/sub/order_all");
		return mv;
	}
	
	
	
	@RequestMapping("/all")
	public ModelAndView all() {
		
		List<Order> allOrder = orderService.all();
		ModelAndView mv = new ModelAndView();
		mv.addObject("allOrder",allOrder);
		mv.setViewName("/sub/order_all");
		return mv;
	}
	
	

	
	@RequestMapping("/allToday")
	public ModelAndView allToday() {
		List<Order> allOrder = orderService.all();
		Calendar cal = Calendar.getInstance();
		for (Iterator iterator = allOrder.iterator(); iterator.hasNext();) {
			Order order = (Order) iterator.next();
			if (cal.getTime().before(order.getToTime())) {
				
			}else if(cal.getTime().after(order.getFromTime()) && cal.getTime().before(order.getToTime())){
				
			}else{
				iterator.remove();
			}
		}
		
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("allOrder",allOrder);
		mv.setViewName("/sub/order_all_t");
		return mv;
	}
	
	
	

	@RequestMapping("/del/{id}")
	public ModelAndView del(@PathVariable("id")Integer id,HttpSession session) {
		ModelAndView mv = new ModelAndView();
		Users user = (Users) session.getAttribute(Constance.userLoginFlag);
		if (orderService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message", "window.parent.frames.toastrInfo(\"撤销成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.toastrInfo(\"撤销失败！\");");
		}
		
		List<Order> allOrder = orderService.selectByUser(user.getUserId());
		mv.addObject("allOrder",allOrder);
		mv.setViewName("/sub/order_my");
		return mv;
	}
	
	
	
	
	// At the time of initialization,convert the type "String" to type "date"
		@InitBinder
		public void initBinder(ServletRequestDataBinder binder) {
			binder.registerCustomEditor(Date.class, new CustomDateEditor(
					new SimpleDateFormat("dd-MM-yyyy"), true));
		}
		
		
}
