package com.lyh.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lyh.constance.Constance;
import com.lyh.model.Cast;
import com.lyh.model.CommodityWithBLOBs;
import com.lyh.model.Order;
import com.lyh.model.OrderDetail;
import com.lyh.model.Topic;
import com.lyh.model.Users;
import com.lyh.service.ICastService;
import com.lyh.service.ICommodityService;
import com.lyh.service.IOrderDetailService;
import com.lyh.service.IOrderService;
import com.lyh.service.ITopicService;

@Controller
@RequestMapping("/com")
public class CommodityController {

	@Resource
	ICommodityService commodityService = null;
	@Resource
	ITopicService topicService = null;
	@Resource
	ICastService castService = null;
	@Resource
	IOrderDetailService orderDetailService = null;
	@Resource
	IOrderService orderService = null;

	@RequestMapping("/gotoAddCom")
	public ModelAndView gotoAddCom() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/com_add");
		return mv;
	}

	@RequestMapping("/comShow")
	public ModelAndView comShow() {
		ModelAndView mv = new ModelAndView();
		List<CommodityWithBLOBs> allCom = commodityService.selectAll();
		mv.addObject("allCom", allCom);
		mv.setViewName("/sub/com_show");
		return mv;
	}

	@RequestMapping("/showComList")
	public ModelAndView showComList() {
		ModelAndView mv = new ModelAndView();
		List<CommodityWithBLOBs> allCom = commodityService.selectAll();
		mv.addObject("allCom", allCom);
		mv.setViewName("/sub/com_showList");
		return mv;
	}

	@RequestMapping("/deltail/{id}")
	public ModelAndView deltail(@PathVariable("id") Integer id) {
		ModelAndView mv = new ModelAndView();
		CommodityWithBLOBs com = commodityService.selectByPrimaryKey(id);
		mv.addObject("com", com);
		List<Topic> topTopic = topicService.selectTop5();
		for (Topic topic : topTopic) {
			topic.setContent(stripHtml(topic.getContent()));
			if (topic.getContent().length() > 20) {
				topic.setContent(topic.getContent().substring(0, 20));
			}
		}
		mv.addObject("topTopic", topTopic);
		mv.setViewName("/sub/com_detail");
		return mv;
	}

	@RequestMapping("/del/{id}")
	public ModelAndView del(@PathVariable("id") Integer id) {
		ModelAndView mv = new ModelAndView();
		if (commodityService.deleteByPrimaryKey(id) > 0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}
		List<CommodityWithBLOBs> allCom = commodityService.selectAll();
		mv.addObject("allCom", allCom);
		mv.setViewName("/sub/com_show");
		return mv;
	}

	@RequestMapping("/update/{id}")
	public ModelAndView update(@PathVariable("id") Integer id) {
		ModelAndView mv = new ModelAndView();
		CommodityWithBLOBs com = commodityService.selectByPrimaryKey(id);
		mv.addObject("com", com);
		mv.setViewName("/sub/com_update");
		return mv;
	}

	@RequestMapping("/addToCast/{id}")
	public ModelAndView addToCast(@PathVariable("id") Integer id, HttpSession session) {
		Users user = (Users) session.getAttribute(Constance.userLoginFlag);
		CommodityWithBLOBs com = commodityService.selectByPrimaryKey(id);
		ModelAndView mv = new ModelAndView();

		Cast cast = new Cast();
		cast.setComId(id);
		cast.setCreateTime(new Date());
		cast.setDeleted(0);
		cast.setNum(1);
		cast.setPrice(com.getPrice());
		cast.setStatus("正在购物");
		cast.setUserId(user.getUserId());

		Cast temp = castService.selectXXX(cast);
		if (temp != null) {
			temp.setNum(temp.getNum() + 1);
			if (castService.updateByPrimaryKeySelective(temp) > 0) {
				mv.addObject("message", "window.parent.frames.upText(\"操作成功,合并购物车！\");");
			} else {
				mv.addObject("message", "window.parent.frames.upText(\"操作失败！合并失败\");");
			}
		} else {
			if (castService.insertSelective(cast) > 0) {
				mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
			} else {
				mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
			}
		}

		mv.addObject("com", com);
		List<Topic> topTopic = topicService.selectTop5();
		for (Topic topic : topTopic) {
			topic.setContent(stripHtml(topic.getContent()));
			if (topic.getContent().length() > 20) {
				topic.setContent(topic.getContent().substring(0, 20));
			}
		}
		mv.addObject("topTopic", topTopic);
		mv.setViewName("/sub/com_detail");
		return mv;
	}

	@RequestMapping("/doUpdateCom")
	public ModelAndView doUpdateCom(CommodityWithBLOBs com) {
		if (com.getContent().contains("<img src=\"")) {
			String content = null;
			content = com.getContent();
			int firstIndex = content.indexOf("<img src=\"") + 10;
			content = content.substring(firstIndex);
			int nextIndex = content.indexOf("\" style=\"width: ");
			content = content.substring(0, nextIndex);
			com.setPhoto(content);
		}
		ModelAndView mv = new ModelAndView();
		if (commodityService.updateByPrimaryKeySelective(com) > 0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}
		List<CommodityWithBLOBs> allCom = commodityService.selectAll();
		mv.addObject("allCom", allCom);
		mv.setViewName("/sub/com_show");
		return mv;
	}

	@RequestMapping("/addCom")
	public ModelAndView addCom(CommodityWithBLOBs com) {
		com.setPs("无");
		com.setStatus(1);
		if (com.getContent().contains("<img src=\"")) {
			String content = null;
			content = com.getContent();
			int firstIndex = content.indexOf("<img src=\"") + 10;
			content = content.substring(firstIndex);
			int nextIndex = content.indexOf("\" style=\"width: ");
			content = content.substring(0, nextIndex);
			com.setPhoto(content);
		}
		ModelAndView mv = new ModelAndView();
		if (commodityService.insertSelective(com) > 0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}
		mv.setViewName("/sub/com_add");
		return mv;
	}

	/*
	 * 我的购物车
	 */
	@RequestMapping("/myCast/{id}")
	public ModelAndView myCast(@PathVariable("id") Integer id) {
		ModelAndView mv = new ModelAndView();
		int money = 0;
		List<Cast> allCast = castService.selectByUserId(id);
		for (Cast cast : allCast) {
			CommodityWithBLOBs com = commodityService.selectByPrimaryKey(cast.getComId());
			cast.setComName(com.getName());
			cast.setComPhoto(com.getPhoto());
			money += (cast.getPrice() * cast.getNum());
		}
		mv.addObject("allCast", allCast);
		mv.addObject("money", money);
		mv.setViewName("/sub/cast_my");
		return mv;
	}

	/*
	 * 删除购物单
	 */
	@RequestMapping("/delCast/{id}")
	public ModelAndView delCast(@PathVariable("id") Integer id, HttpSession session) {
		Users user = (Users) session.getAttribute(Constance.userLoginFlag);
		int money = 0;
		ModelAndView mv = new ModelAndView();
		if (castService.deleteByPrimaryKey(id) > 0) {
			mv.addObject("message", "window.parent.frames.upText(\"删除成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.upText(\"删除失败！\");");
		}

		List<Cast> allCast = castService.selectByUserId(user.getUserId());
		for (Cast cast : allCast) {
			CommodityWithBLOBs com = commodityService.selectByPrimaryKey(cast.getComId());
			cast.setComName(com.getName());
			cast.setComPhoto(com.getPhoto());
			money += (cast.getPrice() * cast.getNum());
		}
		mv.addObject("money", money);
		mv.addObject("allCast", allCast);
		mv.setViewName("/sub/cast_my");
		return mv;
	}

	/*
	 * 
	 * 创建订单
	 */
	@RequestMapping("/createOrder")
	public ModelAndView createOrder(Order order, HttpSession session) {
		Users user = (Users) session.getAttribute(Constance.userLoginFlag);
		ModelAndView mv = new ModelAndView();
		order.setUserId(user.getUserId());
		int orderId = orderService.selectMax() + 1;
		order.setId(orderId);

		String ps = "您订购了";
		int money = 0;
		List<Cast> allCast = castService.selectByUserId(user.getUserId());
		for (Cast cast : allCast) {
			CommodityWithBLOBs com = commodityService.selectByPrimaryKey(cast.getComId());
			cast.setComName(com.getName());
			cast.setComPhoto(com.getPhoto());
			money += (cast.getPrice() * cast.getNum());
			ps += ("【" + cast.getComName() + "】");

			OrderDetail od = new OrderDetail();
			od.setComId(cast.getComId());
			od.setComName(cast.getComName());
			od.setDeleted(0);
			od.setNum(cast.getNum());
			od.setOrderId(order.getId());
			od.setPrice(cast.getPrice());
			od.setStatus("正常");
			od.setUserId(user.getUserId());
			if (orderDetailService.insertSelective(od) <= 0) {
				mv.addObject("message", "window.parent.frames.upText(\"创建子订单出错！\");");
			}

			cast.setStatus("已结单");
			if (castService.updateByPrimaryKeySelective(cast) <= 0) {
				mv.addObject("message", "window.parent.frames.upText(\"购物车结单出错！\");");
			}

		}
		order.setContent(ps);
		order.setPs("等待发货");
		order.setZipcode(money + "");
		order.setDeleted(0);
		if (orderService.insertSelective(order) <= 0) {
			mv.addObject("message", "window.parent.frames.upText(\"创建订单出错！\");");
		}

		mv.setViewName("/sub/order_ok");
		return mv;
	}

	/*
	 * 我的订单
	 */
	@RequestMapping("/myOrder/{id}")
	public ModelAndView myOrder(@PathVariable("id") Integer id) {
		ModelAndView mv = new ModelAndView();
		List<Order> allOrder = orderService.selectByUserId(id);
		for (Order order : allOrder) {
			order.setAllDetail(orderDetailService.selectByOrder(order.getId()));
		}
		mv.addObject("allOrder", allOrder);
		mv.setViewName("/sub/order_my");
		return mv;
	}

	/*
	 * 管理订单
	 */
	@RequestMapping("/orderShow")
	public ModelAndView orderShow() {
		ModelAndView mv = new ModelAndView();
		List<Order> allOrder = orderService.selectByUserId(null);
		for (Order order : allOrder) {
			order.setAllDetail(orderDetailService.selectByOrder(order.getId()));
		}
		mv.addObject("allOrder", allOrder);
		mv.setViewName("/sub/order_show");
		return mv;
	}

	@RequestMapping("/fahuo/{id}")
	public ModelAndView fahuo(@PathVariable("id") Integer id) {
		Order order1 = orderService.selectByPrimaryKey(id);
		order1.setPs("已发货");
		ModelAndView mv = new ModelAndView();
		if (orderService.updateByPrimaryKeySelective(order1) > 0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}
		List<Order> allOrder = orderService.selectByUserId(null);
		for (Order order : allOrder) {
			order.setAllDetail(orderDetailService.selectByOrder(order.getId()));
		}
		mv.addObject("allOrder", allOrder);
		mv.setViewName("/sub/order_show");
		return mv;
	}

	@RequestMapping("/delOrder/{id}")
	public ModelAndView delOrder(@PathVariable("id") Integer id) {
		ModelAndView mv = new ModelAndView();
		if (orderService.deleteByPrimaryKey(id) > 0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}
		List<Order> allOrder = orderService.selectByUserId(null);
		for (Order order : allOrder) {
			order.setAllDetail(orderDetailService.selectByOrder(order.getId()));
		}
		mv.addObject("allOrder", allOrder);
		mv.setViewName("/sub/order_show");
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
