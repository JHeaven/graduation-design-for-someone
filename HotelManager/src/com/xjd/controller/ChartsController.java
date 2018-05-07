package com.xjd.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.xjd.model.Charts;
import com.xjd.model.Order;
import com.xjd.service.IOrderService;
import com.xjd.service.IRoomService;

@Controller
@RequestMapping("/charts")
public class ChartsController {
	@Resource
	IOrderService orderService;
	@Resource
	IRoomService roomService;

	@RequestMapping("/all")
	public ModelAndView all() {
		java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd");
		List<Order> allOrder = orderService.all();
		String str1 = "";
		String str2 = "";
		
		
		
		Calendar cal = Calendar.getInstance();
		List<Charts> allC = new ArrayList<Charts>();
		for (int i = 0; i < 12; i++) {
			Charts c = new Charts();
			int ii = 0;
			int iii = 0;
			c.setDate(format.format(cal.getTime()));
			for (Order order : allOrder) {
				if (format.format(cal.getTime()).equals(format.format(order.getOrderTime()))) {
					ii++;
				}
				
				if (cal.getTime().equals(order.getFromTime())) {
					iii++;
				}else if(cal.getTime().after(order.getFromTime()) && cal.getTime().before(order.getToTime())){
					iii++;
				}
			}
			str1 += (ii+", ");
			str2 += ("{device: \""+c.getDate()+"\", geekbench: "+iii+" }, ");
			
			
			allC.add(c);
			cal.add(Calendar.DAY_OF_MONTH, -1);
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("allOrder",allOrder);
		mv.addObject("allC",allC);
		mv.addObject("str1",str1.substring(0,str1.length()-2));
		mv.addObject("str2",str2.substring(0,str2.length()-2));
		mv.setViewName("/sub/charts");
		return mv;
		
	}
	
	
	@RequestMapping("/alll")
	public ModelAndView alll() {
		java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd");
		ModelAndView mv = new ModelAndView();
		List<Order> allOrder = orderService.all();
		Integer age1 = 0 ;
		Integer age2 = 0 ;
		Integer age3 = 0 ;
		Integer age4 = 0 ;
		Integer age5 = 0 ;
		
		String str2 = "";
		
		for (Iterator iterator = allOrder.iterator(); iterator.hasNext();) {
			Order order = (Order) iterator.next();
			Integer temp1 = null;
			Integer temp2 = null;
			Integer temp3 = null;
			try {
				temp1 = 2017 - Integer.parseInt(order.getSfz1().substring(6,10));
				temp2 = 2017 - Integer.parseInt(order.getSfz2().substring(6,10));
				temp3 = 2017 - Integer.parseInt(order.getSfz3().substring(6,10));
			} catch (Exception e) {
			}
			
			if (temp1!=null && !"".equals(temp1)) {
				if (temp1>=0 && temp1<=15) {
					age1++;
				}
				if (temp1>=16 && temp1<=20) {
					age2++;
				}
				if (temp1>=21 && temp1<=30) {
					age3++;
				}
				if (temp1>=31 && temp1<=50) {
					age4++;
				}
				if (temp1>=51 && temp1<=180) {
					age5++;
				}
			}
			
			
			
			
			
			
			if (temp2!=null && !"".equals(temp2)) {
				if (temp2>=0 && temp2<=15) {
					age1++;
				}
				if (temp2>=16 && temp2<=20) {
					age2++;
				}
				if (temp2>=21 && temp2<=30) {
					age3++;
				}
				if (temp2>=31 && temp2<=50) {
					age4++;
				}
				if (temp2>=51 && temp2<=180) {
					age5++;
				}
			}
			
			
			
			if (temp3!=null && !"".equals(temp3)) {
				if (temp3>=0 && temp3<=15) {
					age1++;
				}
				if (temp3>=16 && temp3<=20) {
					age2++;
				}
				if (temp3>=21 && temp3<=30) {
					age3++;
				}
				if (temp3>=31 && temp3<=50) {
					age4++;
				}
				if (temp3>=51 && temp3<=180) {
					age5++;
				}
			}
			
		}
		
		mv.addObject("age1",age1);
		mv.addObject("age2",age2);
		mv.addObject("age3",age3);
		mv.addObject("age4",age4);
		mv.addObject("age5",age5);
		mv.setViewName("/sub/charts2");
		return mv;
		
	}
	
}
