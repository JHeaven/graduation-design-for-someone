package com.yy.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yy.constance.Constance;
import com.yy.model.Cast;
import com.yy.model.CommodityWithBLOBs;
import com.yy.model.Order;
import com.yy.model.OrderDetail;
import com.yy.model.Topic;
import com.yy.model.Users;
import com.yy.service.ICastService;
import com.yy.service.ICommodityService;
import com.yy.service.IOrderDetailService;
import com.yy.service.IOrderService;
import com.yy.service.ITopicService;

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
			mv.addObject("message", "window.parent.frames.upText(\"�����ɹ���\");");
		} else {
			mv.addObject("message", "window.parent.frames.upText(\"����ʧ�ܣ�\");");
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
		cast.setStatus("���ڹ���");
		cast.setUserId(user.getUserId());

		Cast temp = castService.selectXXX(cast);
		if (temp != null) {
			temp.setNum(temp.getNum() + 1);
			if (castService.updateByPrimaryKeySelective(temp) > 0) {
				mv.addObject("message", "window.parent.frames.upText(\"�����ɹ�,�ϲ����ﳵ��\");");
			} else {
				mv.addObject("message", "window.parent.frames.upText(\"����ʧ�ܣ��ϲ�ʧ��\");");
			}
		} else {
			if (castService.insertSelective(cast) > 0) {
				mv.addObject("message", "window.parent.frames.upText(\"�����ɹ���\");");
			} else {
				mv.addObject("message", "window.parent.frames.upText(\"����ʧ�ܣ�\");");
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
			mv.addObject("message", "window.parent.frames.upText(\"�����ɹ���\");");
		} else {
			mv.addObject("message", "window.parent.frames.upText(\"����ʧ�ܣ�\");");
		}
		List<CommodityWithBLOBs> allCom = commodityService.selectAll();
		mv.addObject("allCom", allCom);
		mv.setViewName("/sub/com_show");
		return mv;
	}

	@RequestMapping("/addCom")
	public ModelAndView addCom(CommodityWithBLOBs com) {
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
		
		
		//for (int i = 11; i < 50; i++) {
			
		//	com.setName(com.getName()+i);
			if (commodityService.insertSelective(com) > 0) {
				mv.addObject("message", "window.parent.frames.upText(\"�����ɹ���\");");
			} else {
				mv.addObject("message", "window.parent.frames.upText(\"����ʧ�ܣ�\");");
			}
		//	com.setName(com.getName().substring(0,com.getName().length()-2));
		//}
		
		mv.setViewName("/sub/com_add");
		return mv;
	}

	/*
	 * �ҵĹ��ﳵ
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
		mv.addObject("allCastSize", allCast.size());
		mv.addObject("money", money);
		mv.setViewName("/sub/cast_my");
		return mv;
	}

	/*
	 * ɾ�����ﵥ
	 */
	@RequestMapping("/delCast/{id}")
	public ModelAndView delCast(@PathVariable("id") Integer id, HttpSession session) {
		Users user = (Users) session.getAttribute(Constance.userLoginFlag);
		int money = 0;
		ModelAndView mv = new ModelAndView();
		if (castService.deleteByPrimaryKey(id) > 0) {
			mv.addObject("message", "window.parent.frames.upText(\"ɾ���ɹ���\");");
		} else {
			mv.addObject("message", "window.parent.frames.upText(\"ɾ��ʧ�ܣ�\");");
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
	 * ��������
	 */
	@RequestMapping("/createOrder")
	public ModelAndView createOrder(Order order, HttpSession session) {
		Users user = (Users) session.getAttribute(Constance.userLoginFlag);
		ModelAndView mv = new ModelAndView();
		order.setUserId(user.getUserId());
		int orderId = orderService.selectMax() + 1;
		order.setId(orderId);

		String ps = "��������";
		int money = 0;
		List<Cast> allCast = castService.selectByUserId(user.getUserId());
		for (Cast cast : allCast) {
			CommodityWithBLOBs com = commodityService.selectByPrimaryKey(cast.getComId());
			cast.setComName(com.getName());
			cast.setComPhoto(com.getPhoto());
			money += (cast.getPrice() * cast.getNum());
			ps += ("��" + cast.getComName() + "��");

			OrderDetail od = new OrderDetail();
			od.setComId(cast.getComId());
			od.setComName(cast.getComName());
			od.setDeleted(0);
			od.setNum(cast.getNum());
			od.setOrderId(order.getId());
			od.setPrice(cast.getPrice());
			od.setStatus("����");
			od.setUserId(user.getUserId());
			if (orderDetailService.insertSelective(od) <= 0) {
				mv.addObject("message", "window.parent.frames.upText(\"�����Ӷ�������\");");
			}

			cast.setStatus("�ѽᵥ");
			if (castService.updateByPrimaryKeySelective(cast) <= 0) {
				mv.addObject("message", "window.parent.frames.upText(\"���ﳵ�ᵥ����\");");
			}

		}
		order.setContent(ps);
		order.setPs("�ȴ����");
		order.setZipcode(money + "");
		order.setDeleted(0);
		if (orderService.insertSelective(order) <= 0) {
			mv.addObject("message", "window.parent.frames.upText(\"������������\");");
		}

		mv.setViewName("/sub/order_ok");
		return mv;
	}

	/*
	 * �ҵĶ���
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
	 * ������
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
		order1.setPs("�����");
		ModelAndView mv = new ModelAndView();
		if (orderService.updateByPrimaryKeySelective(order1) > 0) {
			mv.addObject("message", "window.parent.frames.upText(\"�����ɹ���\");");
		} else {
			mv.addObject("message", "window.parent.frames.upText(\"����ʧ�ܣ�\");");
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
			mv.addObject("message", "window.parent.frames.upText(\"�����ɹ���\");");
		} else {
			mv.addObject("message", "window.parent.frames.upText(\"����ʧ�ܣ�\");");
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
