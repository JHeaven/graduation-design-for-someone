package com.smx.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
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

import com.smx.constance.Cons;
import com.smx.model.ComEx;
import com.smx.model.Competion;
import com.smx.model.Sign;
import com.smx.model.SignEx;
import com.smx.model.Stu;
import com.smx.service.IGameService;
import com.smx.service.IStuService;

@Controller
@RequestMapping("/game")
public class GameController {
	@Resource
	IGameService gameService = null;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
	@Resource
	IStuService stuService = null;
	
	/**
	 * ====================================================================
	 * 赛事相关【开始】
	 * ====================================================================
	 */
	@RequestMapping("/addCompetion")
	public ModelAndView addCompetion() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("message", "欢迎登陆！");
		mv.setViewName("/sub/competion_add");
		return mv;
	}
	
	@RequestMapping("/goToUpdateCompetion/{id}")
	public ModelAndView goToUpdateCompetion(@PathVariable("id")Integer id) {
		Competion com = gameService.selectGameById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("message", "欢迎登陆！");
		mv.addObject("com",com);
		mv.setViewName("/sub/competion_update");
		return mv;
	}
	
	@RequestMapping("/delCompetion/{id}")
	public ModelAndView delCompetion(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		if (gameService.delGame(id)>0) {
			mv.addObject("message", "window.parent.frames.notyText(\"刪除成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.notyText(\"刪除失敗！\");");

		}
		List<Competion> allCom = gameService.allGame();
		mv.addObject("allCom",allCom);
		mv.setViewName("/sub/competion_all");
		return mv;
	}
	
	
	@RequestMapping("/allowRegCompetion/{id}")
	public ModelAndView allowRegCompetion(@PathVariable("id")Integer id) {
		Competion com = gameService.selectGameById(id);
		ModelAndView mv = new ModelAndView();
		com.setStatus("报名进行中");
		if (gameService.updateGameSelective(com)>0) {
			mv.addObject("message", "window.parent.frames.notyText(\"修改赛事状态成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.notyText(\"修改赛事状态失敗！\");");

		}
		List<Competion> allCom = gameService.allGame();
		mv.addObject("allCom",allCom);
		mv.setViewName("/sub/competion_all");
		return mv;
	}
	
	@RequestMapping("/refuseRegCompetion/{id}")
	public ModelAndView refuseRegCompetion(@PathVariable("id")Integer id) {
		Competion com = gameService.selectGameById(id);
		ModelAndView mv = new ModelAndView();
		com.setStatus("报名截止、竞赛即将开始");
		if (gameService.updateGameSelective(com)>0) {
			mv.addObject("message", "window.parent.frames.notyText(\"修改赛事状态成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.notyText(\"修改赛事状态失敗！\");");

		}
		List<Competion> allCom = gameService.allGame();
		mv.addObject("allCom",allCom);
		mv.setViewName("/sub/competion_all");
		return mv;
	}
	
	
	@RequestMapping("/doAddCompetion")
	public ModelAndView doAddCompetion(@RequestParam("fromTime")String fromTime,
			@RequestParam("toTime")String toTime,
			@RequestParam("name")String name,
			@RequestParam("ps")String ps) {
		Competion com = new Competion();
		com.setName(name);
		com.setPs(ps);
		com.setDeleted(0);
		com.setStatus("即将开放报名");
		try {
			com.setFromTime(sdf.parse(fromTime.replace('T', ' ')));
			com.setToTime(sdf.parse(toTime.replace('T', ' ')));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		ModelAndView mv = new ModelAndView();
		System.out.println("捕获="+com);
		
		if (gameService.addGame(com)>0) {
			mv.addObject("message", "window.parent.frames.notyText(\"发布成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.notyText(\"发布失敗！\");");
		}
		
		List<Competion> allCom = gameService.allGame();
		mv.addObject("allCom",allCom);
		mv.setViewName("/sub/competion_all");
		return mv;
	}
	
	
	@RequestMapping("/doUpdateCompetion")
	public ModelAndView doUpdateCompetion(@RequestParam("fromTime")String fromTime,
			@RequestParam("toTime")String toTime,
			@RequestParam("name")String name,
			@RequestParam("ps")String ps,
			@RequestParam("id")Integer id
			) {
		Competion com = new Competion();
		com.setName(name);
		com.setPs(ps);
		com.setId(id);
		try {
			com.setFromTime(sdf.parse(fromTime.replace('T', ' ')));
			com.setToTime(sdf.parse(toTime.replace('T', ' ')));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		ModelAndView mv = new ModelAndView();
		System.out.println("捕获="+com);
		
		if (gameService.updateGameSelective(com)>0) {
			mv.addObject("message", "window.parent.frames.notyText(\"修改成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.notyText(\"修改失敗！\");");
		}
		List<Competion> allCom = gameService.allGame();
		mv.addObject("allCom",allCom);
		mv.setViewName("/sub/competion_all");
		return mv;
	}
	
	
	
	
	@RequestMapping("/showAllCompetion")
	public ModelAndView showAllCompetion() {
		List<Competion> allCom = gameService.allGame();
		ModelAndView mv = new ModelAndView();
		mv.addObject("allCom",allCom);
		mv.setViewName("/sub/competion_all");
		return mv;
	}
	
	
	@RequestMapping("/showAllCompetionOfMine")
	public ModelAndView showAllCompetionOfMine(HttpSession session) {
		Stu stu = (Stu) session.getAttribute(Cons.USERFLAG);
		Competion com = null;
		List<Sign> allSign = gameService.selectAllRegByUserId(stu.getId());
		Date now  = new Date();
		for (Iterator iterator = allSign.iterator(); iterator.hasNext();) {
			Sign sign = (Sign) iterator.next();
			com = gameService.selectGameById(sign.getBelong());
			if (com!=null) {
				sign.setcName(com.getName());
				sign.setFrom(com.getFromTime());
				sign.setTo(com.getToTime());
				if (now.before(sign.getFrom())) {
					sign.setStatus("等待竞赛开始");
				}else if(now.before(sign.getTo())){
					sign.setStatus("竞赛正在进行");
				}else{
					sign.setStatus("竞赛结束");
				}
			}
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("allSign",allSign);
		mv.setViewName("/sub/sign_all");
		return mv;
	}
	
	
	
	//ans
	@RequestMapping("/goSign/{id}")
	public ModelAndView goSign(@PathVariable("id")Integer id , HttpSession session) {
		Stu stu = (Stu) session.getAttribute(Cons.USERFLAG);
		ModelAndView mv = new ModelAndView();
		Sign sign = gameService.selectSignById(id);
		Competion com = gameService.selectGameById(sign.getBelong());
		Date now = new Date();
		if (com!=null) {
			sign.setcName(com.getName());
			sign.setFrom(com.getFromTime());
			sign.setTo(com.getToTime());
			if (now.before(sign.getFrom())) {
				//=========================================wait
				mv.addObject("message", "window.parent.frames.notyText(\"賽事還未開始！\");");
				Competion com1 = null;
				List<Sign> allSign = gameService.selectAllRegByUserId(stu.getId());
				for (Iterator iterator = allSign.iterator(); iterator.hasNext();) {
					Sign sign1 = (Sign) iterator.next();
					com1 = gameService.selectGameById(sign1.getBelong());
					if (com1!=null) {
						sign1.setcName(com1.getName());
						sign1.setFrom(com1.getFromTime());
						sign1.setTo(com1.getToTime());
						if (now.before(sign1.getFrom())) {
							sign1.setStatus("等待竞赛开始");
						}else if(now.before(sign1.getTo())){
							sign1.setStatus("竞赛正在进行");
						}else{
							sign1.setStatus("竞赛结束");
						}
					}
				}
				mv.addObject("allSign",allSign);
				mv.setViewName("/sub/sign_all");
				//=========================================
			}else if(now.before(sign.getTo())){
				//===================creat exam=======================
				List<SignEx> examTest = gameService.getExam(stu.getId(), com.getId());
				if (examTest.size()<=0) {
					List<ComEx> allEx = gameService.allExOfCom(com.getId());
					SignEx se = null;
					for (ComEx comEx : allEx) {
						se = new SignEx();
						se.setBelong(com.getId());
						se.setDeleted(0);
						se.setEx(comEx.getId());
						se.setStuId(stu.getId());
						if (gameService.addSignEx(se)>0) {
							System.out.println("creating with ex's id :"+comEx.getId()+" successfully ......");
						}else{
							System.out.println("creating with ex's id :"+comEx.getId()+" failed ......");
						}
					}
				}else{
					System.out.println("continue for exam.....................");
					mv.addObject("message", "window.parent.frames.notyText(\"您已经打开过试卷，当前自动为您载入答题记录\");");
				}
				//show sign ex
				List<SignEx> exam = gameService.getExam(stu.getId(), com.getId());
				ComEx comEx = null;
				int i = 0;
				for (SignEx signEx : exam) {
					i++;
					signEx.setSection(i);
					comEx = gameService.selectExById(signEx.getEx());
					if (comEx!=null) {
						signEx.seteContent(comEx.getContent());
						signEx.seteScore(comEx.getScore());
						signEx.seteType(comEx.getType());
					}else{
						System.out.println("creating exam error.................................................");
						mv.addObject("message", "window.parent.frames.notyText(\"creating exam error.................................................\");");
					}
				}
				
				mv.addObject("exam",exam);
				mv.addObject("flag","1");
				mv.setViewName("/sub/sign_ex_exam");
				//===================creat over=======================
			}else{
				//=========================================over
				mv.addObject("message", "window.parent.frames.notyText(\"賽事已經結束\");");

				Competion com1 = null;
				List<Sign> allSign = gameService.selectAllRegByUserId(stu.getId());
				for (Iterator iterator = allSign.iterator(); iterator.hasNext();) {
					Sign sign1 = (Sign) iterator.next();
					com1 = gameService.selectGameById(sign1.getBelong());
					if (com1!=null) {
						sign1.setcName(com1.getName());
						sign1.setFrom(com1.getFromTime());
						sign1.setTo(com1.getToTime());
						if (now.before(sign1.getFrom())) {
							sign1.setStatus("等待竞赛开始");
						}else if(now.before(sign1.getTo())){
							sign1.setStatus("竞赛正在进行");
						}else{
							sign1.setStatus("竞赛结束");
						}
					}
				}
				mv.addObject("allSign",allSign);
				mv.setViewName("/sub/sign_all");
				//=========================================
			}
		}
		
		return mv;
	}
	
	
	@RequestMapping("/nextEx/{belong}/{section}")
	public ModelAndView nextEx(HttpSession session,@PathVariable("section")Integer section,@PathVariable("belong")Integer belong) {
		Integer flag = section;
		Stu stu = (Stu) session.getAttribute(Cons.USERFLAG);
		ModelAndView mv = new ModelAndView();
		Sign sign = new Sign();
		sign.setStuId(stu.getId());
		sign.setBelong(belong);
		sign = gameService.check(sign);
		Competion com = gameService.selectGameById(sign.getBelong());
		Date now = new Date();
		if (com!=null) {
			sign.setcName(com.getName());
			sign.setFrom(com.getFromTime());
			sign.setTo(com.getToTime());
			if (now.before(sign.getFrom())) {
				//=========================================wait
				mv.addObject("message", "window.parent.frames.notyText(\"賽事還未開始！\");");
				Competion com1 = null;
				List<Sign> allSign = gameService.selectAllRegByUserId(stu.getId());
				for (Iterator iterator = allSign.iterator(); iterator.hasNext();) {
					Sign sign1 = (Sign) iterator.next();
					com1 = gameService.selectGameById(sign1.getBelong());
					if (com1!=null) {
						sign1.setcName(com1.getName());
						sign1.setFrom(com1.getFromTime());
						sign1.setTo(com1.getToTime());
						if (now.before(sign1.getFrom())) {
							sign1.setStatus("等待竞赛开始");
						}else if(now.before(sign1.getTo())){
							sign1.setStatus("竞赛正在进行");
						}else{
							sign1.setStatus("竞赛结束");
						}
					}
				}
				mv.addObject("allSign",allSign);
				mv.setViewName("/sub/sign_all");
				//=========================================
			}else if(now.before(sign.getTo())){
				//===================creat exam=======================
				List<SignEx> examTest = gameService.getExam(stu.getId(), com.getId());
				if (examTest.size()<0) {
					List<ComEx> allEx = gameService.allExOfCom(com.getId());
					SignEx se = null;
					for (ComEx comEx : allEx) {
						se = new SignEx();
						se.setBelong(com.getId());
						se.setDeleted(0);
						se.setEx(comEx.getId());
						se.setStuId(stu.getId());
						if (gameService.addSignEx(se)>0) {
							System.out.println("creating with ex's id :"+comEx.getId()+" successfully ......");
						}else{
							System.out.println("creating with ex's id :"+comEx.getId()+" failed ......");
						}
					}
				}else{
					System.out.println("continue for exam.....................");
					mv.addObject("message", "window.parent.frames.notyText(\"已为你跳转到所选题号，请注意保存答案！\");");
				}
				//show sign ex
				List<SignEx> exam = gameService.getExam(stu.getId(), com.getId());
				ComEx comEx = null;
				int i = 0;
				for (SignEx signEx : exam) {
					i++;
					signEx.setSection(i);
					comEx = gameService.selectExById(signEx.getEx());
					if (comEx!=null) {
						signEx.seteContent(comEx.getContent());
						signEx.seteScore(comEx.getScore());
						signEx.seteType(comEx.getType());
					}else{
						System.out.println("creating exam error.................................................");
						mv.addObject("message", "window.parent.frames.notyText(\"creating exam error.................................................\");");
					}
				}
				
				mv.addObject("exam",exam);
				mv.addObject("flag",flag);
				mv.setViewName("/sub/sign_ex_exam");
				//===================creat over=======================
			}else{
				//=========================================over
				mv.addObject("message", "window.parent.frames.notyText(\"賽事已經結束\");");

				Competion com1 = null;
				List<Sign> allSign = gameService.selectAllRegByUserId(stu.getId());
				for (Iterator iterator = allSign.iterator(); iterator.hasNext();) {
					Sign sign1 = (Sign) iterator.next();
					com1 = gameService.selectGameById(sign1.getBelong());
					if (com1!=null) {
						sign1.setcName(com1.getName());
						sign1.setFrom(com1.getFromTime());
						sign1.setTo(com1.getToTime());
						if (now.before(sign1.getFrom())) {
							sign1.setStatus("等待竞赛开始");
						}else if(now.before(sign1.getTo())){
							sign1.setStatus("竞赛正在进行");
						}else{
							sign1.setStatus("竞赛结束");
						}
					}
				}
				mv.addObject("allSign",allSign);
				mv.setViewName("/sub/sign_all");
				//=========================================
			}
		}
		return mv;
	}
	
	
	@RequestMapping("/ans/{belong}/{section}")
	public ModelAndView ans(HttpSession session,@PathVariable("section")Integer section,@PathVariable("belong")Integer belong,SignEx myEx) {
		ModelAndView mv = new ModelAndView();
		//check ans 
		myEx.setAnsTime(new Date());
		if ("A".equals(myEx.getAns())||"B".equals(myEx.getAns())||"C".equals(myEx.getAns())||"D".equals(myEx.getAns())) {
			myEx.setAns(myEx.getAns()+",");
		}else if("Y".equals(myEx.getAns())||"N".equals(myEx.getAns())){
			myEx.setAns(","+myEx.getAns());
		}
		ComEx comExTemp = gameService.selectExById(myEx.getEx());
		if (comExTemp.getAns().equals(myEx.getAns())) {
			myEx.setScore(comExTemp.getScore());
		}else{
			myEx.setScore(0);
		}
		System.out.println("捕获ans ex = "+ myEx);
		
		if (gameService.updateSignEx(myEx)>0) {
			mv.addObject("message", "window.parent.frames.notyText(\"您的答案已提交至服务器\");");
		}else{
			mv.addObject("message", "window.parent.frames.notyText(\"您的答案提交失败\");");
		}
		
		
		
		Integer flag = section;
		Stu stu = (Stu) session.getAttribute(Cons.USERFLAG);
		
		Sign sign = new Sign();
		sign.setStuId(stu.getId());
		sign.setBelong(belong);
		sign = gameService.check(sign);
		Competion com = gameService.selectGameById(sign.getBelong());
		Date now = new Date();
		if (com!=null) {
			sign.setcName(com.getName());
			sign.setFrom(com.getFromTime());
			sign.setTo(com.getToTime());
			if (now.before(sign.getFrom())) {
				//=========================================wait
				mv.addObject("message", "window.parent.frames.notyText(\"賽事還未開始！\");");
				Competion com1 = null;
				List<Sign> allSign = gameService.selectAllRegByUserId(stu.getId());
				for (Iterator iterator = allSign.iterator(); iterator.hasNext();) {
					Sign sign1 = (Sign) iterator.next();
					com1 = gameService.selectGameById(sign1.getBelong());
					if (com1!=null) {
						sign1.setcName(com1.getName());
						sign1.setFrom(com1.getFromTime());
						sign1.setTo(com1.getToTime());
						if (now.before(sign1.getFrom())) {
							sign1.setStatus("等待竞赛开始");
						}else if(now.before(sign1.getTo())){
							sign1.setStatus("竞赛正在进行");
						}else{
							sign1.setStatus("竞赛结束");
						}
					}
				}
				mv.addObject("allSign",allSign);
				mv.setViewName("/sub/sign_all");
				//=========================================
			}else if(now.before(sign.getTo())){
				//===================creat exam=======================
				List<SignEx> examTest = gameService.getExam(stu.getId(), com.getId());
				if (examTest.size()<0) {
					List<ComEx> allEx = gameService.allExOfCom(com.getId());
					SignEx se = null;
					for (ComEx comEx : allEx) {
						se = new SignEx();
						se.setBelong(com.getId());
						se.setDeleted(0);
						se.setEx(comEx.getId());
						se.setStuId(stu.getId());
						if (gameService.addSignEx(se)>0) {
							System.out.println("creating with ex's id :"+comEx.getId()+" successfully ......");
						}else{
							System.out.println("creating with ex's id :"+comEx.getId()+" failed ......");
						}
					}
				}else{
					System.out.println("continue for exam.....................");
				}
				//show sign ex
				List<SignEx> exam = gameService.getExam(stu.getId(), com.getId());
				ComEx comEx = null;
				int i = 0;
				for (SignEx signEx : exam) {
					i++;
					signEx.setSection(i);
					comEx = gameService.selectExById(signEx.getEx());
					if (comEx!=null) {
						signEx.seteContent(comEx.getContent());
						signEx.seteScore(comEx.getScore());
						signEx.seteType(comEx.getType());
					}else{
						System.out.println("creating exam error.................................................");
						mv.addObject("message", "window.parent.frames.notyText(\"creating exam error.................................................\");");
					}
				}
				flag = flag % exam.size() +1;
				mv.addObject("exam",exam);
				mv.addObject("flag",flag);
				mv.setViewName("/sub/sign_ex_exam");
				//===================creat over=======================
			}else{
				//=========================================over
				mv.addObject("message", "window.parent.frames.notyText(\"賽事已經結束\");");

				Competion com1 = null;
				List<Sign> allSign = gameService.selectAllRegByUserId(stu.getId());
				for (Iterator iterator = allSign.iterator(); iterator.hasNext();) {
					Sign sign1 = (Sign) iterator.next();
					com1 = gameService.selectGameById(sign1.getBelong());
					if (com1!=null) {
						sign1.setcName(com1.getName());
						sign1.setFrom(com1.getFromTime());
						sign1.setTo(com1.getToTime());
						if (now.before(sign1.getFrom())) {
							sign1.setStatus("等待竞赛开始");
						}else if(now.before(sign1.getTo())){
							sign1.setStatus("竞赛正在进行");
						}else{
							sign1.setStatus("竞赛结束");
						}
					}
				}
				mv.addObject("allSign",allSign);
				mv.setViewName("/sub/sign_all");
				//=========================================
			}
		}
		
		return mv;
	}
	
	
	@RequestMapping("/delSign/{id}")
	public ModelAndView delSign(HttpSession session,@PathVariable("id")Integer id) {
		
		ModelAndView mv = new ModelAndView();
		
		if (gameService.delSign(id)>0) {
			mv.addObject("message", "window.parent.frames.notyText(\"取消报名赛事成功\");");
		}else{
			mv.addObject("message", "window.parent.frames.notyText(\"取消报名赛事失败\");");
		}
		
		Stu stu = (Stu) session.getAttribute(Cons.USERFLAG);
		Competion com = null;
		List<Sign> allSign = gameService.selectAllRegByUserId(stu.getId());
		Date now  = new Date();
		for (Iterator iterator = allSign.iterator(); iterator.hasNext();) {
			Sign sign = (Sign) iterator.next();
			com = gameService.selectGameById(sign.getBelong());
			if (com!=null) {
				sign.setcName(com.getName());
				sign.setFrom(com.getFromTime());
				sign.setTo(com.getToTime());
				if (now.before(sign.getFrom())) {
					sign.setStatus("等待竞赛开始");
				}else if(now.before(sign.getTo())){
					sign.setStatus("竞赛正在进行");
				}else{
					sign.setStatus("竞赛结束");
				}
			}
		}
		
		mv.addObject("allSign",allSign);
		mv.setViewName("/sub/sign_all");
		return mv;
	}
	
	
	@RequestMapping("/ireg/{id}")
	public ModelAndView ireg(@PathVariable("id")Integer id,HttpSession session) {
		Stu stu = (Stu) session.getAttribute(Cons.USERFLAG);
		Competion com = gameService.selectGameById(id);
		Sign sign = new Sign();
		sign.setAskTime(new Date());
		sign.setBelong(com.getId());
		sign.setDeleted(0);
		sign.setPs("我报名了赛事："+com.getName());
		sign.setStatus("报名成功");
		sign.setStuId(stu.getId());
		ModelAndView mv = new ModelAndView();
		
		if (gameService.check(sign)!=null) {
			mv.addObject("message", "window.parent.frames.notyText(\"您已经报名过此赛事了！！！！\");");
		}else{
			if (gameService.addSign(sign)>0) {
				mv.addObject("message", "window.parent.frames.notyText(\"恭喜！您成功报名了赛事！\");");
			}
			else{
				mv.addObject("message", "window.parent.frames.notyText(\"抱歉！您的报名失败了！\");");
			}
			
		}
		List<Competion> allCom = gameService.allGame();
		mv.addObject("allCom",allCom);
		mv.setViewName("/sub/competion_all");
		return mv;
	}
	
	
	@RequestMapping("/iregs/{id}")
	public ModelAndView iregs(@PathVariable("id")Integer id,HttpSession session) {
		Stu stu = (Stu) session.getAttribute(Cons.USERFLAG);
		Competion com = gameService.selectGameById(id);
		Sign sign = new Sign();
		sign.setAskTime(new Date());
		sign.setBelong(com.getId());
		sign.setDeleted(0);
		sign.setPs("我报名了赛事："+com.getName());
		sign.setStatus("报名成功");
		sign.setStuId(stu.getId());
		ModelAndView mv = new ModelAndView();
		
		if (gameService.check(sign)!=null) {
			mv.addObject("message", "alert(\"您已经报名过此赛事了！！！！\");");
		}else{
			if (gameService.addSign(sign)>0) {
				mv.addObject("message", "alert(\"恭喜！您成功报名了赛事！\");");
			}
			else{
				mv.addObject("message", "alert(\"抱歉！您的报名失败了！\");");
			}

		}
		mv.addObject("com",com);
		mv.setViewName("/share");
		return mv;
	}
	 
	/**
	 * ====================================================================
	 * 赛事相关【结束】
	 * ====================================================================
	 */
	
	
	

	
	/**
	 * ====================================================================
	 * 题目相关【开始】
	 * ====================================================================
	 */
	
	
	@RequestMapping("/showAllExOfCom/{id}")
	public ModelAndView showAllExOfCom(@PathVariable("id")Integer id) {
		Competion com = gameService.selectGameById(id);
		List<ComEx> allEx = gameService.allExOfCom(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("com",com);
		mv.addObject("allEx",allEx);
		mv.setViewName("/sub/com_ex_all");
		return mv;
	}
	
	@RequestMapping("/delEx/{id}")
	public ModelAndView delEx(@PathVariable("id")Integer id) {
		ComEx ex = gameService.selectExById(id);
		Competion com = gameService.selectGameById(ex.getBelong());
		List<ComEx> allEx = gameService.allExOfCom(ex.getBelong());
		ModelAndView mv = new ModelAndView();
		if (gameService.delEx(id)>0) {
			mv.addObject("message", "window.parent.frames.notyText(\"刪除題目成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.notyText(\"刪除題目失敗！\");");
		}
		mv.addObject("com",com);
		mv.addObject("allEx",allEx);
		mv.setViewName("/sub/com_ex_all");
		return mv;
	}
	
	@RequestMapping("/goToAddEx/{id}")
	public ModelAndView goToAddEx(@PathVariable("id")Integer id) {
		Competion com = gameService.selectGameById(id);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/com_ex_add");
		mv.addObject("com",com);
		return mv;
	}
	
	
	@RequestMapping("/doAddEx")
	public ModelAndView doAddEx(ComEx ex) {
		Competion com = gameService.selectGameById(ex.getBelong());
		ModelAndView mv = new ModelAndView();
		if ("A,".equals(ex.getAns()) || "B,".equals(ex.getAns()) || "C,".equals(ex.getAns()) || "D,".equals(ex.getAns())  ) {
			ex.setType("选择题");
		}else if(",Y".equals(ex.getAns()) ||",N".equals(ex.getAns())){
			ex.setType("判断题");
		}else{
			ex.setType("填空题");
		}
		ex.setDeleted(0);
		System.out.println("捕获EX="+ex);
		if (gameService.addEx(ex)>0) {
			mv.addObject("message", "window.parent.frames.notyText(\"新增題目成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.notyText(\"新增題目失敗！\");");
		}
		mv.addObject("com",com);
		mv.setViewName("/sub/com_ex_add");
		return mv;
	}
	
	
	@RequestMapping("/doUpdateEx")
	public ModelAndView doUpdateEx(ComEx ex) {
		Competion com = gameService.selectGameById(ex.getBelong());
		ModelAndView mv = new ModelAndView();
		if ("A,".equals(ex.getAns()) || "B,".equals(ex.getAns()) || "C,".equals(ex.getAns()) || "D,".equals(ex.getAns())  ) {
			ex.setType("选择题");
		}else if(",Y".equals(ex.getAns()) ||",N".equals(ex.getAns())){
			ex.setType("判断题");
		}else{
			ex.setType("填空题");
		}
		System.out.println("捕获EX="+ex);
		if (gameService.updateEx(ex)>0) {
			mv.addObject("message", "window.parent.frames.notyText(\"修改題目成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.notyText(\"修改題目失敗！\");");
		}
		List<ComEx> allEx = gameService.allExOfCom(ex.getBelong());
		mv.addObject("com",com);
		mv.addObject("allEx",allEx);
		mv.setViewName("/sub/com_ex_all");
		return mv;
	}
	
	
	
	@RequestMapping("/goToUpdateEx/{id}")
	public ModelAndView goToUpdateEx(@PathVariable("id")Integer id) {
		ComEx ex = gameService.selectExById(id);
		Competion com = gameService.selectGameById(ex.getBelong());

		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/com_ex_update");
		mv.addObject("ex",ex);
		mv.addObject("com",com);
		return mv;
	}
	
	
	
	

	/**
	 * ====================================================================
	 * 题目相关【结束】
	 * ====================================================================
	 */
	
	
	/**
	 * ====================================================================
	 * 成绩相关【开始】
	 * ====================================================================
	 */
	
	
	
	@RequestMapping("/showMyGrade/{id}")
	public ModelAndView showMyGrade(@PathVariable("id")Integer id,HttpSession session) {
		Stu stu = (Stu) session.getAttribute(Cons.USERFLAG);
		Competion com = null;
		List<Sign> allSign = gameService.selectAllRegByUserId(stu.getId());
		Date now  = new Date();
		for (Iterator iterator = allSign.iterator(); iterator.hasNext();) {
			Sign sign = (Sign) iterator.next();
			com = gameService.selectGameById(sign.getBelong());
			if (com!=null) {
				sign.setcName(com.getName());
				sign.setFrom(com.getFromTime());
				sign.setTo(com.getToTime());
				if (now.before(sign.getFrom())) {
					sign.setStatus("等待竞赛开始");
					//allSign.remove(sign);
					iterator.remove();
				}else if(now.before(sign.getTo())){
					sign.setStatus("竞赛正在进行");
					//allSign.remove(sign);
					iterator.remove();
				}else{
					sign.setStatus("竞赛结束");
				}
			}
		}
		
		/*for (Sign sign : allSign) {
			if (!"竞赛结束".equals(sign.getStatus())) {
				allSign.remove(sign);
			}
		}*/
		
		
		ModelAndView mv = new ModelAndView();
		
		//organize score
		for (Sign sign : allSign) {
			sign.setScore(0);
			List<SignEx> thisEx = gameService.getExam(stu.getId(), sign.getBelong());
			String jsonStr = "";
			for (int i = 0; i < thisEx.size(); i++) {
				jsonStr+="{\"timu\": \"第"+(i+1)+"题\",\"fengshu\":"+thisEx.get(i).getScore()+"},";
				sign.setScore(sign.getScore()+thisEx.get(i).getScore());
			}
			jsonStr = jsonStr.substring(0,jsonStr.length()-1);
			sign.setJsonStr(jsonStr);
			System.out.println("json="+jsonStr);
		}
		mv.addObject("allSign",allSign);
		mv.setViewName("/sub/sign_ex_mygrade");
		return mv;
		
		
	}
	
	
	
	
	
	
	
	@RequestMapping("/showCompetionGrade/{id}")
	public ModelAndView showCompetionGrade(@PathVariable("id")Integer id) {
		Competion com = gameService.selectGameById(id);
		Date now = new Date();
		ModelAndView mv = new ModelAndView();
		List<Sign> allSign = gameService.selectAllByBelong(id);
		for (Sign sign : allSign) {
			//detail
			sign.setStuName(stuService.selectByPrimaryKey(sign.getStuId()).getName());
			//
			List<SignEx> stuEx = gameService.getExam(sign.getStuId(), id);
			if(stuEx.size()<=0){
				sign.setScore(0);
				sign.setJsonStr("该生未如期参加竞赛！");
			}else{
				sign.setScore(0);
				String jsonStr = "";
				for (Iterator iterator = stuEx.iterator(); iterator.hasNext();) {
					SignEx signEx = (SignEx) iterator.next();
					jsonStr+="["+signEx.getScore()+"].";
					sign.setScore(sign.getScore()+signEx.getScore());
				}
				jsonStr = jsonStr.substring(0,jsonStr.length());
				System.out.println("jsonStr = "+jsonStr);
				sign.setJsonStr(jsonStr);
			}
		}
		
		
		mv.addObject("allSign",allSign);
		mv.addObject("com",com);
		mv.setViewName("/sub/sign_ex_allgrade");
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * ====================================================================
	 * 成绩相关【结束】
	 * ====================================================================
	 */
	
	
	
	
	
	
	// At the time of initialization,convert the type "String" to type "date"
	@InitBinder
	public void initBinder(ServletRequestDataBinder binder) {
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				new SimpleDateFormat("yyyy-MM-dd HH:mm"), true));
	}
}
