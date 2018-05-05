package com.gyq.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gyq.model.Class;
import com.gyq.model.Course;
import com.gyq.model.Room;
import com.gyq.service.IRoomService;
/**
 * 
 * @author Jiang Yu Qin
 *
 */
@Controller
@RequestMapping("/room")
public class RoomController {

	@Resource
	IRoomService roomService;
	
	@RequestMapping("/goadd")
	public ModelAndView goadd() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/room_add");
		return mv;
	}
	
	


	@RequestMapping("/doadd")
	public ModelAndView doadd(Room ro) {
		ro.setDeleted(0);
		ModelAndView mv = new ModelAndView();
		if (roomService.insertSelective(ro)>0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作失败！\");");
		}
		mv.setViewName("/sub/room_add");
		return mv;
	}
	

	@RequestMapping("/go/{id}")
	public ModelAndView go(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		Room room = roomService.selectByPrimaryKey(id);
		mv.addObject("co",room);
		mv.setViewName("/sub/room_update");
		return mv;
	}
	
	

	@RequestMapping("/dogo")
	public ModelAndView dogo(Room co) {
		ModelAndView mv = new ModelAndView();
		if (roomService.updateByPrimaryKeySelective(co)>0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作失败！\");");
		}
		List<Room> allRo = roomService.selectALL();
		mv.addObject("allRo",allRo);
		mv.setViewName("/sub/room_all");
		return mv;
	}
	
	
	
	@RequestMapping("/showall")
	public ModelAndView showall() {
		List<Room> allRo = roomService.selectALL();
		ModelAndView mv = new ModelAndView();
		mv.addObject("allRo",allRo);
		mv.setViewName("/sub/room_all");
		return mv;
	}
	
	
	
	

	@RequestMapping("/del/{id}")
	public ModelAndView del(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		if (roomService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作失败！\");");
		}
		List<Room> allRo = roomService.selectALL();
		mv.addObject("allRo",allRo);
		mv.setViewName("/sub/room_all");
		return mv;
	}
	
	
	
}
