package com.gyq.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gyq.model.Class;
import com.gyq.model.Course;
import com.gyq.model.CourseList;
import com.gyq.model.Room;
import com.gyq.model.Section;
import com.gyq.model.Teacher;
import com.gyq.service.IClassService;
import com.gyq.service.ICourseListService;
import com.gyq.service.ICourseService;
import com.gyq.service.IRoomService;
import com.gyq.service.ISectionService;
import com.gyq.service.ITeacherService;
import com.gyq.utils.Greedy;
/**
 * 
 * @author Jiang Yu Qin
 *
 */
@Controller
@RequestMapping("/section")
public class SectionController {

	@Resource
	IClassService classService;
	@Resource
	ICourseService courseService;
	@Resource
	ITeacherService teacherService;
	@Resource
	ICourseListService courseListService;
	@Resource
	ISectionService sectionService;
	@Resource
	IRoomService roomService;

	SimpleDateFormat sWeek = new SimpleDateFormat("EEEE");
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	@RequestMapping("/go")
	public ModelAndView go() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/section_go");
		return mv;
	}

	@RequestMapping("/dogo")
	public ModelAndView dogo(@RequestParam("from") Date from, @RequestParam("to") Date to) {
		
		ModelAndView mv = new ModelAndView();

		if (from.before(new Date())) {
			mv.addObject("message", "window.parent.frames.noteUp(\"课程时间起点应该在当前时间之后！\");");
			mv.setViewName("/sub/section_go");
			return mv;
		}
		
		// clean
		sectionService.deleteByPrimaryKey(null);
		// org
		Section sec = new Section();
		sec.setDeleted(0);

		List<Room> allRo = roomService.selectALL();

		System.out.println(from + "-------" + to);

		Calendar start = Calendar.getInstance();
		start.setTime(from);
		Long startTime = start.getTimeInMillis();
		Calendar end = Calendar.getInstance();
		end.setTime(to);
		Long endTime = end.getTimeInMillis();

		Long oneDay = 1000 * 60 * 60 * 24l;

		Long time = startTime;
		while (time <= endTime) {
			Date d = new Date(time);
			if ((!sWeek.format(d).equals("星期六")) && (!sWeek.format(d).equals("星期日"))) {
				sec.setSecDate(d);
				for (Room room : allRo) {
					sec.setRoomId(room.getId());
					sec.setRoomName(room.getName());
					sec.setPs(sWeek.format(d));
					sec.setMaxNum(room.getMaxNum());
					if (sectionService.insertSelective(sec) > 0) {
						System.out.println("now...success...organizing...room." + room.getId() + "...time..."
								+ sdf.format(d) + "...");
					} else {
						System.out.println("now...failure...organizing...room." + room.getId() + "...time..."
								+ sdf.format(d) + "...");
					}
				}
			}
			time += oneDay;
		}

		List<Section> allSection = sectionService.selectall();
		List<CourseList> allList = courseListService.selectall();

		int realPage = allSection.size() * 5;
		int mindPage = 0;
		for (CourseList courseList : allList) {
			mindPage += (courseList.getKeshi());
		}

		if (realPage > mindPage) {
			allSection = Greedy.doGreedy(allSection, allList);
			for (Section section : allSection) {
				sectionService.updateByPrimaryKeySelective(section);
			}
			// update
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"时间片超出预期！请添加教室或减少课程！\");");
		}

		mv.setViewName("/sub/section_go");
		return mv;
	}

	@RequestMapping("/showall")
	public ModelAndView showall() {
		List<Section> allSec = sectionService.selectall();
		ModelAndView mv = new ModelAndView();
		mv.addObject("allSec", allSec);
		mv.setViewName("/sub/section_all");
		return mv;
	}

	@RequestMapping("/update/{id}")
	public ModelAndView update(@PathVariable("id") Integer id) {
		ModelAndView mv = new ModelAndView();
		Section sec = sectionService.selectByPrimaryKey(id);
		List<CourseList> list = courseListService.selectall();
		mv.addObject("list", list);
		mv.addObject("sec", sec);
		mv.setViewName("/sub/section_update");
		return mv;
	}

	@RequestMapping("/doupdate")
	public ModelAndView doupdate(Section sec) {
		Section temp = sectionService.selectByPrimaryKey(sec.getId());
		sec.setDeleted(temp.getDeleted());
		sec.setMaxNum(temp.getMaxNum());
		sec.setPs(temp.getPs());
		sec.setRoomId(temp.getRoomId());
		sec.setRoomName(temp.getRoomName());
		sec.setSecDate(temp.getSecDate());
		sec.setSecSite(temp.getSecSite());
		
		CourseList c1 = courseListService.selectByPrimaryKey(sec.getLe1Id());
		CourseList c2 = courseListService.selectByPrimaryKey(sec.getLe2Id());
		CourseList c3 = courseListService.selectByPrimaryKey(sec.getLe3Id());
		CourseList c4 = courseListService.selectByPrimaryKey(sec.getLe4Id());
		CourseList c5 = courseListService.selectByPrimaryKey(sec.getLe5Id());

		if (c1 != null) {
			sec.setLe1Class(c1.getClassName());
			sec.setLe1Name(c1.getcName());
			sec.setLe1Tea(c1.gettName());
		}else{
			sec.setLe1Class(null);
			sec.setLe1Name(null);
			sec.setLe1Tea(null);
		}

		if (c2 != null) {

			sec.setLe2Class(c2.getClassName());
			sec.setLe2Name(c2.getcName());
			sec.setLe2Tea(c2.gettName());
		}else{
			sec.setLe2Class(null);
			sec.setLe2Name(null);
			sec.setLe2Tea(null);
		}
		
		if (c3 != null) {
			sec.setLe3Class(c3.getClassName());
			sec.setLe3Name(c3.getcName());
			sec.setLe3Tea(c3.gettName());
		}else{
			sec.setLe3Class(null);
			sec.setLe3Name(null);
			sec.setLe3Tea(null);
		}
		
		
		if (c4 != null) {
			sec.setLe4Class(c4.getClassName());
			sec.setLe4Name(c4.getcName());
			sec.setLe4Tea(c4.gettName());

		}else{
			sec.setLe4Class(null);
			sec.setLe4Name(null);
			sec.setLe4Tea(null);
		}
		
		if (c5 != null) {
			sec.setLe5Class(c5.getClassName());
			sec.setLe5Name(c5.getcName());
			sec.setLe5Tea(c5.gettName());
		}else{
			sec.setLe5Class(null);
			sec.setLe5Name(null);
			sec.setLe5Tea(null);
		}
		
		ModelAndView mv = new ModelAndView();

		if (sectionService.updateByPrimaryKey(sec) > 0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"修改成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"修改失败！\");");
		}

		List<Section> allSec = sectionService.selectall();
		mv.addObject("allSec", allSec);
		mv.setViewName("/sub/section_all");
		return mv;
	}

}
