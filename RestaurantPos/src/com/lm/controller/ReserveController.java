package com.lm.controller;

import java.text.ParseException;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lm.constance.Constance;
import com.lm.model.Order;
import com.lm.model.Reserve;
import com.lm.model.Staff;
import com.lm.model.Table;
import com.lm.service.IMenuService;
import com.lm.service.IOrderSService;
import com.lm.service.IOrderService;
import com.lm.service.IReserveService;
import com.lm.service.ITableService;

@Controller
@RequestMapping("/res")
public class ReserveController {

	@Resource
	IReserveService reserveService;
	@Resource
	ITableService tableService;
	@Resource
	IOrderService orderService;
	@Resource
	IOrderSService orderSService;
	@Resource
	IMenuService menuService = null;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
	
	@RequestMapping("/go")
	public ModelAndView go() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/reserve_add");
		return mv;
	}
	
	
	@RequestMapping("/search")
	public ModelAndView search(@RequestParam("fromTime") String fromTime, @RequestParam("toTime") String toTime,
			@RequestParam("people") Integer people){
		ModelAndView mv = new ModelAndView();
		Reserve reserve = new Reserve();
		reserve.setDeleted(people);
		try {
			reserve.setFromTime(sdf.parse(fromTime.replace('T', ' ')));
			reserve.setToTime(sdf.parse(toTime.replace('T', ' ')));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		
		if (reserve.getFromTime().before(new Date())) {
			mv.addObject("message", "window.parent.frames.upText(\"开始时间不可以先于当前时间！\");");
		}else{
			List<Reserve> allRes = reserveService.selectTime();
			
			List<Table> allTable = tableService.all();
			
			
			for (Iterator iterator = allRes.iterator(); iterator.hasNext();) {
				Reserve reserve1 = (Reserve) iterator.next();
				for (Iterator iterator2 = allTable.iterator(); iterator2.hasNext();) {
					Table table = (Table) iterator2.next();
					try {
						if (reserve1.getTableId() == table.getId()) {
							iterator2.remove();
						}
						if (reserve.getDeleted() > table.getPeople()) {
							iterator2.remove();
						}
					} catch (java.lang.IllegalStateException e) {
						/*mv.addObject("message","window.parent.frames.upText(\"搜索条件超出限制\");");
						mv.setViewName("/sub/reserve_add");
						return mv;*/
					}
				}
			}
			mv.addObject("message", "window.parent.frames.upText(\"已搜索到相应的桌位"+allTable.size()+"个！\");");
			mv.addObject("allTable",allTable);
		}
		
		
		mv.addObject("reserve",reserve);
		mv.setViewName("/sub/reserve_add");
		return mv;
	}
	
	
	
	
	@RequestMapping("/dogo")
	public ModelAndView dogo(Reserve res) {
		ModelAndView mv = new ModelAndView();
		res.setStatus("预定成功");//预定完成
		if (reserveService.insertSelective(res)>0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}
		System.out.println(res);
		mv.setViewName("/sub/reserve_add");
		return mv;
	}
	
	
	@RequestMapping("/all")
	public ModelAndView all() {
		ModelAndView mv = new ModelAndView();
		List<Reserve> allRes = reserveService.all();
		mv.addObject("allRes",allRes);
		mv.setViewName("/sub/reserve_all");
		return mv;
	}
	
	@RequestMapping("/come")
	public ModelAndView come() {
		ModelAndView mv = new ModelAndView();
		List<Reserve> allRes = reserveService.all();
		for (Iterator iterator = allRes.iterator(); iterator.hasNext();) {
			Reserve reserve = (Reserve) iterator.next();
			if ("预定成功".equals(reserve.getStatus())) {
				
			}else{
				iterator.remove();
			}
		}
		
		mv.addObject("allRes",allRes);
		mv.setViewName("/sub/reserve_all_come");
		return mv;
	}
	
	
	@RequestMapping("/today")
	public ModelAndView today() {
		ModelAndView mv = new ModelAndView();
		String today = sdf1.format(new Date());
		List<Reserve> allRes = reserveService.all();
		for (Iterator iterator = allRes.iterator(); iterator.hasNext();) {
			Reserve reserve = (Reserve) iterator.next();
			if (today.equals(sdf1.format(reserve.getFromTime()))) {
				
			}else{
				iterator.remove();
			}
		}
		mv.addObject("allRes",allRes);
		mv.setViewName("/sub/reserve_all_come");
		return mv;
	}
	

	@RequestMapping("/update/{id}")
	public ModelAndView update(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		Reserve res = reserveService.selectByPrimaryKey(id);
		mv.addObject("res",res);
		mv.setViewName("/sub/reserve_update");
		return mv;
	}
	
	

	@RequestMapping("/doupdate")
	public ModelAndView doupdate(Reserve res) {
		ModelAndView mv = new ModelAndView();
		
		if (reserveService.updateByPrimaryKeySelective(res)>0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}
		
		List<Reserve> allRes = reserveService.all();
		mv.addObject("allRes",allRes);
		mv.setViewName("/sub/reserve_all");
		
		return mv;
	}
	

	@RequestMapping("/del/{id}")
	public ModelAndView del(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();

		if (reserveService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}
		
		List<Reserve> allRes = reserveService.all();
		mv.addObject("allRes",allRes);
		mv.setViewName("/sub/reserve_all");
		
		
		return mv;
	}
	
	
	
	
	

	@RequestMapping("/xxx/{id}")
	public ModelAndView update(@PathVariable("id") Integer id, HttpSession session) {
		
		Reserve res = reserveService.selectByPrimaryKey(id);
		res.setStatus("客人到店");
		reserveService.updateByPrimaryKeySelective(res);
		
		Staff staff = (Staff) session.getAttribute(Constance.userLoginFlag);
		ModelAndView mv = new ModelAndView();
		Table table = tableService.selectByPrimaryKey(res.getTableId());
		Order order = new Order();
		order.setDeleted(0);
		order.setInTime(res.getFromTime());
		order.setStatus("等待点餐");
		order.setSumPrice(0.0);
		order.setTableId(table.getId());
		order.setTableName(table.getName());
		order.setUserId(staff.getId());
		if (orderService.insertSelective(order) > 0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}

		// table
		Order orderFlag = null;
		List<Order> allOrder = orderService.all();
		for (Iterator iterator = allOrder.iterator(); iterator.hasNext();) {
			Order order1 = (Order) iterator.next();
			if ("等待点餐".equals(order1.getStatus())) {
				orderFlag = order1;
			}
		}
		// --

		Reserve reserve = new Reserve();
		reserve.setFromTime(new Date());

		Calendar ca = Calendar.getInstance();
		ca.setTime(new Date());
		ca.add(Calendar.HOUR_OF_DAY, 3);
		reserve.setToTime(ca.getTime());

		List<Reserve> allRes = reserveService.selectTime();

		List<Table> allTable = tableService.all();

		for (Iterator iterator = allRes.iterator(); iterator.hasNext();) {
			Reserve reserve1 = (Reserve) iterator.next();
			for (Iterator iterator2 = allTable.iterator(); iterator2.hasNext();) {
				Table table1 = (Table) iterator2.next();
				try {
					if (reserve1.getTableId() == table1.getId()) {
						iterator2.remove();
					}
					/*
					 * if (reserve.getDeleted() > table.getPeople()) {
					 * iterator2.remove(); }
					 */
				} catch (java.lang.IllegalStateException e) {
					/*
					 * mv.addObject("message",
					 * "window.parent.frames.upText(\"搜索条件超出限制\");");
					 * mv.setViewName("/sub/reserve_add"); return mv;
					 */
				}
			}
		}


		for (Iterator iterator2 = allTable.iterator(); iterator2.hasNext();) {
			Table table1 = (Table) iterator2.next();
			for (Iterator iterator = allOrder.iterator(); iterator.hasNext();) {
				Order order1 = (Order) iterator.next();
				
				if (order1.getTableId() == table1.getId()) {
					Calendar ca1 = Calendar.getInstance();
					ca1.setTime(order1.getInTime());
					ca1.add(Calendar.HOUR_OF_DAY, 2);
					
					
					if (reserve.getFromTime().before(ca1.getTime()) && reserve.getToTime().after(ca1.getTime())) {
						iterator2.remove();
					}
				}
			}
		}
		mv.addObject("message", "window.parent.frames.upText(\"当前可以入座的桌位" + allTable.size() + "个！\");");
		mv.addObject("allTable", allTable);
		mv.addObject("reserve", reserve);

		mv.addObject("orderFlag", orderFlag);

		mv.setViewName("/sub/order_getTable");
		return mv;
	}

	
	
	
	
	
	
	// At the time of initialization,convert the type "String" to type "date"
		@InitBinder
		public void initBinder(ServletRequestDataBinder binder) {
			binder.registerCustomEditor(Date.class, new CustomDateEditor(
					new SimpleDateFormat("yyyy-MM-dd HH:mm"), true));
		}
}
