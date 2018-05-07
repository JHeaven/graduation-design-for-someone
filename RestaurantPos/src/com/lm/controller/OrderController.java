package com.lm.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lm.constance.Constance;
import com.lm.model.Charts;
import com.lm.model.MenuWithBLOBs;
import com.lm.model.Order;
import com.lm.model.OrderS;
import com.lm.model.Reserve;
import com.lm.model.Staff;
import com.lm.model.Table;
import com.lm.service.IMenuService;
import com.lm.service.IOrderSService;
import com.lm.service.IOrderService;
import com.lm.service.IReserveService;
import com.lm.service.ITableService;

@Controller
@RequestMapping("/order")
public class OrderController {

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
	
    SimpleDateFormat fmt=new SimpleDateFormat("yyyy年MM月dd日");

    
	@RequestMapping("/getTable")
	public ModelAndView getTable() {
		ModelAndView mv = new ModelAndView();
		
		// table
		Order orderFlag = null;
		List<Order> allOrder = orderService.all();
		for (Iterator iterator = allOrder.iterator(); iterator.hasNext();) {
			Order order = (Order) iterator.next();
			if ("等待点餐".equals(order.getStatus())) {
				orderFlag = order;
			}
			
		}
		// --

		if (orderFlag!=null) {
			orderFlag.setInTime(new Date());
			orderService.updateByPrimaryKeySelective(orderFlag);
		}
		
		
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
				Table table = (Table) iterator2.next();
				try {
					if (reserve1.getTableId() == table.getId()) {
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
			Table table = (Table) iterator2.next();
			for (Iterator iterator = allOrder.iterator(); iterator.hasNext();) {
				Order order = (Order) iterator.next();
				
				if (order.getTableId() == table.getId()) {
					Calendar ca1 = Calendar.getInstance();
					ca1.setTime(order.getInTime());
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

	@RequestMapping("/selectTable/{id}")
	public ModelAndView update(@PathVariable("id") Integer id, HttpSession session) {
		Staff staff = (Staff) session.getAttribute(Constance.userLoginFlag);
		ModelAndView mv = new ModelAndView();
		Table table = tableService.selectByPrimaryKey(id);
		Order order = new Order();
		order.setDeleted(0);
		order.setInTime(new Date());
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

	
	

	@RequestMapping("/del/{id}")
	public ModelAndView del(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		if (orderService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}

		// table
		Order orderFlag = null;
		List<Order> allOrder = orderService.all();
		for (Iterator iterator = allOrder.iterator(); iterator.hasNext();) {
			Order order = (Order) iterator.next();
			if ("等待点餐".equals(order.getStatus())) {
				orderFlag = order;
			}
		}
		// --

		if (orderFlag!=null) {
			orderFlag.setInTime(new Date());
			orderService.updateByPrimaryKeySelective(orderFlag);
		}
		
		
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
				Table table = (Table) iterator2.next();
				try {
					if (reserve1.getTableId() == table.getId()) {
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
			Table table = (Table) iterator2.next();
			for (Iterator iterator = allOrder.iterator(); iterator.hasNext();) {
				Order order = (Order) iterator.next();
				
				if (order.getTableId() == table.getId()) {
					Calendar ca1 = Calendar.getInstance();
					ca1.setTime(order.getInTime());
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
	
	
	
	
	//======================================================================================================
	
	@RequestMapping("/getMenu")
	public ModelAndView getMenu() {
		ModelAndView mv = new ModelAndView();
		
		Order orderFlag = null;
		List<Order> allOrder = orderService.all();
		for (Iterator iterator = allOrder.iterator(); iterator.hasNext();) {
			Order order = (Order) iterator.next();
			if ("等待点餐".equals(order.getStatus())) {
				orderFlag = order;
			}
			
		}
		// --

		if (orderFlag!=null) {
			orderFlag.setInTime(new Date());
			orderService.updateByPrimaryKeySelective(orderFlag);
		}
		
		
		
		
		List<MenuWithBLOBs> allMenu = menuService.all();
		mv.addObject("allMenu", allMenu);
		mv.addObject("orderFlag", orderFlag);
		mv.setViewName("/sub/order_getMenu");
		return mv;
	}
	
	
	
	@RequestMapping("/xuan/{id}")
	public ModelAndView xuan(@PathVariable("id")Integer id , HttpSession session) {
		ModelAndView mv = new ModelAndView();
		
		Staff staff = (Staff) session.getAttribute(Constance.userLoginFlag);
		//======simpl
		Order orderFlag = null;
		List<Order> allOrder = orderService.all();
		for (Iterator iterator = allOrder.iterator(); iterator.hasNext();) {
			Order order = (Order) iterator.next();
			if ("等待点餐".equals(order.getStatus())) {
				orderFlag = order;
			}
			
		}
		// --
		if (orderFlag!=null) {
			orderFlag.setInTime(new Date());
			
			orderService.updateByPrimaryKeySelective(orderFlag);
			//----add
			MenuWithBLOBs m = menuService.selectByPrimaryKey(id);
			OrderS s = new OrderS();
			s.setDeleted(0);
			s.setName(m.getName());
			s.setOrderId(orderFlag.getId());
			s.setPhoto(m.getPhoto());
			s.setPrice(m.getPrice());
			s.setStatus("等待下单");
			s.setUserId(staff.getId());
			
			orderFlag.setSumPrice(orderFlag.getSumPrice()+m.getPrice());
			orderService.updateByPrimaryKeySelective(orderFlag);
			
			
			if (orderSService.insertSelective(s)>0) {
				mv.addObject("message", "window.parent.frames.upText(\"操作成功！当前订单总金额：【"+orderFlag.getSumPrice()+"￥】\");");
			}else{
				mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
			}
			
			
			
		}
		List<MenuWithBLOBs> allMenu = menuService.all();
		mv.addObject("allMenu", allMenu);
		mv.addObject("orderFlag", orderFlag);
		mv.setViewName("/sub/order_getMenu");
		//===========
		
		
		
		
		
		
		return mv;
	}
	
	
	//======================================================================================================
	@RequestMapping("/getOrders")
	public ModelAndView getOrders() {
		ModelAndView mv = new ModelAndView();
		
		Order orderFlag = null;
		List<Order> allOrder = orderService.all();
		for (Iterator iterator = allOrder.iterator(); iterator.hasNext();) {
			Order order = (Order) iterator.next();
			if ("等待点餐".equals(order.getStatus())) {
				orderFlag = order;
			}
			
		}
		// --
		
		if (orderFlag != null) {
			List<OrderS> allS = orderSService.all(orderFlag.getId());
			mv.addObject("allS", allS);
		}
		
		
		mv.addObject("orderFlag", orderFlag);
		mv.setViewName("/sub/order_getxia");
		return mv;
	}
	
	
	@RequestMapping("/dels/{id}")
	public ModelAndView dels(@PathVariable("id")Integer id , HttpSession session) {
		
		ModelAndView mv = new ModelAndView();
		
		Order orderFlag = null;
		List<Order> allOrder = orderService.all();
		for (Iterator iterator = allOrder.iterator(); iterator.hasNext();) {
			Order order = (Order) iterator.next();
			if ("等待点餐".equals(order.getStatus())) {
				orderFlag = order;
			}
			
		}
		// --
		
		
		OrderS s = orderSService.selectByPrimaryKey(id);
		if (orderSService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}
		orderFlag.setSumPrice(orderFlag.getSumPrice()-s.getPrice());
		orderService.updateByPrimaryKeySelective(orderFlag);
		
		
		
		List<OrderS> allS = orderSService.all(orderFlag.getId());
		
		mv.addObject("orderFlag", orderFlag);
		mv.addObject("allS", allS);
		mv.setViewName("/sub/order_getxia");
		return mv;
		
		
	}
	
	
	
	@RequestMapping("/action/{id}")
	public ModelAndView action(@PathVariable("id")Integer id , HttpSession session) {
		
		ModelAndView mv = new ModelAndView();
		Order order = orderService.selectByPrimaryKey(id);
		List<OrderS> s = orderSService.all(order.getId());
		
		order.setStatus("等待付账");
		orderService.updateByPrimaryKeySelective(order);
		for (OrderS orderS : s) {
			orderS.setStatus("等待制作");
			orderSService.updateByPrimaryKeySelective(orderS);
		}
		mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		
		
		List<Order> allO = orderService.all();
		for (Order order1 : allO) {
			order1.setOrders( orderSService.all(order1.getId()));
		}
		mv.addObject("allO", allO);
		mv.setViewName("/sub/order_all");
		return mv;
	
	
	}
	
	
	
	

	
	@RequestMapping("/sale/{id}")
	public ModelAndView sale(@PathVariable("id")Integer id , HttpSession session) {
		
		ModelAndView mv = new ModelAndView();
		Order order = orderService.selectByPrimaryKey(id);
		List<OrderS> s = orderSService.all(order.getId());
		
		order.setStatus("已结账");
		orderService.updateByPrimaryKeySelective(order);
		for (OrderS orderS : s) {
			orderS.setStatus("已结账");
			orderSService.updateByPrimaryKeySelective(orderS);
		}
		mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		
		
		List<Order> allO = orderService.all();
		for (Order order1 : allO) {
			order1.setOrders( orderSService.all(order1.getId()));
		}
		mv.addObject("allO", allO);
		mv.setViewName("/sub/order_all");
		return mv;
	
	
	}
	
	
	
	

	
	@RequestMapping("/fei/{id}")
	public ModelAndView fei(@PathVariable("id")Integer id , HttpSession session) {
		
		ModelAndView mv = new ModelAndView();
		Order order = orderService.selectByPrimaryKey(id);
		List<OrderS> s = orderSService.all(order.getId());
		
		order.setStatus("该订单已作废");
		orderService.updateByPrimaryKeySelective(order);
		for (OrderS orderS : s) {
			orderS.setStatus("已作废");
			orderSService.updateByPrimaryKeySelective(orderS);
		}
		mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		
		
		List<Order> allO = orderService.all();
		for (Order order1 : allO) {
			order1.setOrders( orderSService.all(order1.getId()));
		}
		mv.addObject("allO", allO);
		mv.setViewName("/sub/order_all");
		return mv;
	
	
	}
	
	
	
	//========================================================================================
	@RequestMapping("/all")
	public ModelAndView all() {
		ModelAndView mv = new ModelAndView();
		List<Order> allO = orderService.all();
		for (Order order : allO) {
			order.setOrders( orderSService.all(order.getId()));
		}
		mv.addObject("allO", allO);
		mv.setViewName("/sub/order_all");
		return mv;
	}
	
	@RequestMapping("/doAll")
	public ModelAndView doAll() {
		ModelAndView mv = new ModelAndView();
		List<OrderS> allS = orderSService.all(null);
		for (Iterator iterator = allS.iterator(); iterator.hasNext();) {
			OrderS orderS = (OrderS) iterator.next();
			
			orderS.setTableId(orderService.selectByPrimaryKey(orderS.getOrderId()).getTableId());
			orderS.setTableName(orderService.selectByPrimaryKey(orderS.getOrderId()).getTableName());
			
			
			if (orderS.getStatus().equals("等待制作")) {
				
			}else{
				iterator.remove();
			}
		}
		mv.addObject("allS", allS);
		mv.setViewName("/sub/order_Hall");
		return mv;
	}
	
	@RequestMapping("/deal/{id}")
	public ModelAndView deal(@PathVariable("id")Integer id , HttpSession session) {
		ModelAndView mv = new ModelAndView();
		
		OrderS ss = orderSService.selectByPrimaryKey(id);
		ss.setStatus("已上菜");
		if (orderSService.updateByPrimaryKeySelective(ss)>0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}
		
		List<OrderS> allS = orderSService.all(null);
		for (Iterator iterator = allS.iterator(); iterator.hasNext();) {
			OrderS orderS = (OrderS) iterator.next();
			
			orderS.setTableId(orderService.selectByPrimaryKey(orderS.getOrderId()).getTableId());
			orderS.setTableName(orderService.selectByPrimaryKey(orderS.getOrderId()).getTableName());
			
			
			if (orderS.getStatus().equals("等待制作")) {
				
			}else{
				iterator.remove();
			}
		}
		mv.addObject("allS", allS);
		mv.setViewName("/sub/order_Hall");
		return mv;
		
		
		
	}
	
	
	
	//=========================================================================
	/**
	 * {"year": 2009,"income": 23.5,"expenses": 18.1}, 
	 * @return
	 */
	@RequestMapping("/chart")
	public ModelAndView chart() {
		ModelAndView mv = new ModelAndView();
		String charts = "[";
		List<Order> orders = orderService.all();
		
		List<Charts> Str = new ArrayList<Charts>();
		
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(new Date());
		
		//
		for (int i = 0; i < 7; i++) {
			Charts ch = new Charts();
			ch.setYear(fmt.format(calendar.getTime()));
			ch.setNum(0);
			for (Order order : orders) {
				if (fmt.format(calendar.getTime()).equals(fmt.format(order.getInTime()))) {
					ch.setNum(ch.getNum()+1);
				}
			}
			Str.add(ch);
			calendar.add(Calendar.DAY_OF_MONTH, -1);
		}
		
		
		for (Charts charts2 : Str) {
			charts = charts + "{\"year\": \""+charts2.getYear()+"\",\"income\": "+charts2.getNum()+",\"expenses\": "+charts2.getNum()+"}, ";
		}
		
		charts = charts.substring(0,charts.length()-1);
		
		charts = charts + "]";
		
		mv.addObject("charts",charts);
		
		mv.setViewName("/sub/chart");
		return mv;
	}
	
	
	
	
	
	
	
}
