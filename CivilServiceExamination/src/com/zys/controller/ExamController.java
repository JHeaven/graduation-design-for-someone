package com.zys.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.zys.constance.Cons;
import com.zys.model.ComEx;
import com.zys.model.Competion;
import com.zys.model.Sign;
import com.zys.model.SignEx;
import com.zys.model.Stu;
import com.zys.service.IGameService;
import com.zys.service.IStuService;
import com.zys.utils.ImportExecl;
import com.zys.utils.RandomEx;

@Controller
@RequestMapping("/game")
public class ExamController {
	@Resource
	IGameService gameService = null;

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");

	@Resource
	IStuService stuService = null;

	//每个试卷多少题
	private Integer maxNum = 20;
	//每个题目多少分
	private Integer eachEx = 5;
	
	

	/**
	 * 增加试题
	 * @param ex
	 * @return
	 */
	@RequestMapping("/doAddEx")
	public ModelAndView doAddEx(ComEx ex) {
		ModelAndView mv = new ModelAndView();

		ex.setDeleted(0);
		ex.setType("非挂起");

		if (gameService.addEx(ex) > 0) {
			mv.addObject("message", "window.parent.frames.notyText(\"新增题目成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.notyText(\"新增题目失败！\");");
		}
		mv.setViewName("/page/com_ex_add");
		return mv;
	}

	/**
	 * 展示所有题目
	 * @return
	 */
	@RequestMapping("/showAllEx")
	public ModelAndView showAllExOfCom() {
		List<ComEx> allEx = gameService.allComEx();
		ModelAndView mv = new ModelAndView();
		mv.addObject("allEx", allEx);
		mv.setViewName("/page/com_ex_all");
		return mv;
	}

	
	/**
	 * 删除题目
	 * @param id
	 * @return
	 */
	@RequestMapping("/delEx/{id}")
	public ModelAndView delEx(@PathVariable("id") Integer id) {

		ModelAndView mv = new ModelAndView();
		if (gameService.delEx(id) > 0) {
			mv.addObject("message", "window.parent.frames.notyText(\"刪除题目成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.notyText(\"刪除题目失败！\");");
		}

		List<ComEx> allEx = gameService.allComEx();
		mv.addObject("allEx", allEx);
		mv.setViewName("/page/com_ex_all");
		return mv;
	}

	
	/**
	 * 取消挂起
	 * @param id
	 * @return
	 */
	@RequestMapping("/shifang/{id}")
	public ModelAndView shifang(@PathVariable("id") Integer id) {
		ComEx ex = gameService.selectExById(id);
		ex.setType("非挂起");
		ModelAndView mv = new ModelAndView();
		if (gameService.updateEx(ex) > 0) {
			mv.addObject("message", "window.parent.frames.notyText(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.notyText(\"操作失败！\");");
		}

		List<ComEx> allEx = gameService.allComEx();
		mv.addObject("allEx", allEx);
		mv.setViewName("/page/com_ex_all");
		return mv;
	}

	
	/**
	 * 挂起
	 * @param id
	 * @return
	 */
	@RequestMapping("/xuangua/{id}")
	public ModelAndView xuangua(@PathVariable("id") Integer id) {
		ComEx ex = gameService.selectExById(id);
		ex.setType("挂起");
		ModelAndView mv = new ModelAndView();
		if (gameService.updateEx(ex) > 0) {
			mv.addObject("message", "window.parent.frames.notyText(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.notyText(\"操作失败！\");");
		}

		List<ComEx> allEx = gameService.allComEx();
		mv.addObject("allEx", allEx);
		mv.setViewName("/page/com_ex_all");
		return mv;
	}

	/**
	 * 修改题目
	 * @param ex
	 * @return
	 */
	@RequestMapping("/doUpdateEx")
	public ModelAndView doUpdateEx(ComEx ex) {
		ModelAndView mv = new ModelAndView();
		if (gameService.updateEx(ex) > 0) {
			mv.addObject("message", "window.parent.frames.notyText(\"修改题目成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.notyText(\"修改题目失敗！\");");
		}
		List<ComEx> allEx = gameService.allComEx();
		mv.addObject("allEx", allEx);
		mv.setViewName("/page/com_ex_all");
		return mv;
	}

	/**
	 * 跳转修改页面
	 * @param id
	 * @return
	 */
	@RequestMapping("/goToUpdateEx/{id}")
	public ModelAndView goToUpdateEx(@PathVariable("id") Integer id) {
		ComEx ex = gameService.selectExById(id);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/page/com_ex_update");
		mv.addObject("ex", ex);
		return mv;
	}

	
	
	
	/**
	 * 添加的考试批次
	 * @return
	 */
	@RequestMapping("/addCompetion")
	public ModelAndView addCompetion() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("message", "欢迎登陆！");
		mv.setViewName("/page/competion_add");
		return mv;
	}

	
	/**
	 * 跳转修改考试的页面
	 * @param id
	 * @return
	 */
	@RequestMapping("/goToUpdateCompetion/{id}")
	public ModelAndView goToUpdateCompetion(@PathVariable("id") Integer id) {
		Competion com = gameService.selectGameById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("message", "欢迎登陆！");
		mv.addObject("com", com);
		mv.setViewName("/page/competion_update");
		return mv;
	}
	/**
	 * 删除考试批次
	 * @param id
	 * @return
	 */
	@RequestMapping("/delCompetion/{id}")
	public ModelAndView delCompetion(@PathVariable("id") Integer id) {
		ModelAndView mv = new ModelAndView();
		if (gameService.delGame(id) > 0) {
			mv.addObject("message", "window.parent.frames.notyText(\"刪除成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.notyText(\"刪除失敗！\");");

		}
		List<Competion> allCom = gameService.allGame();
		mv.addObject("allCom", allCom);
		mv.setViewName("/page/competion_all");
		return mv;
	}

	/**
	 * 开放报名
	 * @param id
	 * @return
	 */
	@RequestMapping("/allowRegCompetion/{id}")
	public ModelAndView allowRegCompetion(@PathVariable("id") Integer id) {
		Competion com = gameService.selectGameById(id);
		ModelAndView mv = new ModelAndView();
		com.setStatus("报名进行中");
		if (gameService.updateGameSelective(com) > 0) {
			mv.addObject("message", "window.parent.frames.notyText(\"修改公务员考试状态成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.notyText(\"修改公务员考试状态失敗！\");");

		}
		List<Competion> allCom = gameService.allGame();
		mv.addObject("allCom", allCom);
		mv.setViewName("/page/competion_all");
		return mv;
	}

	/**
	 * 截止报名
	 * @param id
	 * @return
	 */
	@RequestMapping("/refuseRegCompetion/{id}")
	public ModelAndView refuseRegCompetion(@PathVariable("id") Integer id) {
		Competion com = gameService.selectGameById(id);
		ModelAndView mv = new ModelAndView();
		com.setStatus("报名截止、考试即将开始");
		if (gameService.updateGameSelective(com) > 0) {
			mv.addObject("message", "window.parent.frames.notyText(\"修改公务员考试状态成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.notyText(\"修改公务员考试状态失敗！\");");

		}
		List<Competion> allCom = gameService.allGame();
		mv.addObject("allCom", allCom);
		mv.setViewName("/page/competion_all");
		return mv;
	}

	/**
	 * 增加考试
	 * @param fromTime
	 * @param toTime
	 * @param name
	 * @param ps
	 * @return
	 */
	@RequestMapping("/doAddCompetion")
	public ModelAndView doAddCompetion(@RequestParam("fromTime") String fromTime, @RequestParam("toTime") String toTime,
			@RequestParam("name") String name, @RequestParam("ps") String ps) {
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
		System.out.println("捕获=" + com);

		if (gameService.addGame(com) > 0) {
			mv.addObject("message", "window.parent.frames.notyText(\"发布成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.notyText(\"发布失敗！\");");
		}

		List<Competion> allCom = gameService.allGame();
		mv.addObject("allCom", allCom);
		mv.setViewName("/page/competion_all");
		return mv;
	}

	/**
	 * 修改
	 * @param fromTime
	 * @param toTime
	 * @param name
	 * @param ps
	 * @param id
	 * @return
	 */
	@RequestMapping("/doUpdateCompetion")
	public ModelAndView doUpdateCompetion(@RequestParam("fromTime") String fromTime,
			@RequestParam("toTime") String toTime, @RequestParam("name") String name, @RequestParam("ps") String ps,
			@RequestParam("id") Integer id) {
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
		System.out.println("捕获=" + com);

		if (gameService.updateGameSelective(com) > 0) {
			mv.addObject("message", "window.parent.frames.notyText(\"修改成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.notyText(\"修改失敗！\");");
		}
		List<Competion> allCom = gameService.allGame();
		mv.addObject("allCom", allCom);
		mv.setViewName("/page/competion_all");
		return mv;
	}

	/**
	 * 展示所有的考试批次
	 * @return
	 */
	@RequestMapping("/showAllCompetion")
	public ModelAndView showAllCompetion() {
		List<Competion> allCom = gameService.allGame();
		ModelAndView mv = new ModelAndView();
		mv.addObject("allCom", allCom);
		mv.setViewName("/page/competion_all");
		return mv;
	}

	/**
	 * 展示我的报名的考试
	 * @param session
	 * @return
	 */
	@RequestMapping("/showAllCompetionOfMine")
	public ModelAndView showAllCompetionOfMine(HttpSession session) {
		Stu stu = (Stu) session.getAttribute(Cons.USERFLAG);
		Competion com = null;
		List<Sign> allSign = gameService.selectAllRegByUserId(stu.getId());
		Date now = new Date();
		for (Iterator iterator = allSign.iterator(); iterator.hasNext();) {
			Sign sign = (Sign) iterator.next();
			com = gameService.selectGameById(sign.getBelong());
			if (com != null) {
				sign.setcName(com.getName());
				sign.setFrom(com.getFromTime());
				sign.setTo(com.getToTime());
				if (now.before(sign.getFrom())) {
					sign.setStatus("等待考试开始");
				} else if (now.before(sign.getTo())) {
					sign.setStatus("考试正在进行");
				} else {
					sign.setStatus("考试结束");
				}
			}
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("allSign", allSign);
		mv.setViewName("/page/sign_all");
		return mv;
	}

	/**
	 * 开始考试
	 * @param id
	 * @param session
	 * @return
	 */
	@RequestMapping("/goSign/{id}")
	public ModelAndView goSign(@PathVariable("id") Integer id, HttpSession session) {
		Stu stu = (Stu) session.getAttribute(Cons.USERFLAG);
		ModelAndView mv = new ModelAndView();
		Sign sign = gameService.selectSignById(id);
		Competion com = gameService.selectGameById(sign.getBelong());
		Date now = new Date();
		if (com != null) {
			sign.setcName(com.getName());
			sign.setFrom(com.getFromTime());
			sign.setTo(com.getToTime());
			if (now.before(sign.getFrom())) {
				// =========================================wait
				mv.addObject("message", "window.parent.frames.notyText(\"公务员考试还未开始！\");");
				Competion com1 = null;
				List<Sign> allSign = gameService.selectAllRegByUserId(stu.getId());
				for (Iterator iterator = allSign.iterator(); iterator.hasNext();) {
					Sign sign1 = (Sign) iterator.next();
					com1 = gameService.selectGameById(sign1.getBelong());
					if (com1 != null) {
						sign1.setcName(com1.getName());
						sign1.setFrom(com1.getFromTime());
						sign1.setTo(com1.getToTime());
						if (now.before(sign1.getFrom())) {
							sign1.setStatus("等待考试开始");
						} else if (now.before(sign1.getTo())) {
							sign1.setStatus("考试正在进行");
						} else {
							sign1.setStatus("考试结束");
						}
					}
				}
				mv.addObject("allSign", allSign);
				mv.setViewName("/page/sign_all");
				// =========================================
			} else if (now.before(sign.getTo())) {
				// ===================creat exam=======================
				List<SignEx> examTest = gameService.getExam(stu.getId(), com.getId());
				if (examTest.size() <= 0) {
					//List<ComEx> allEx = gameService.allExOfCom(com.getId());
					List<ComEx> allEx = gameService.allComEx();
					List<ComEx> allExXG = new ArrayList<ComEx>();
					int flaggg = 1;
					int flagggg = 0;
					for (Iterator iterator = allEx.iterator(); iterator.hasNext();) {
						if (flaggg > maxNum) {
							break;
						}
						ComEx comEx = (ComEx) iterator.next();
						if (comEx.getType().equals("挂起")) {
							allExXG.add(comEx);
							iterator.remove();
							flagggg++;
						}
						flaggg ++;
					}
					
					
					List<ComEx> allExRandom = RandomEx.getRandomList(allEx, maxNum - flagggg);
					
					allExXG.addAll(allExRandom);
					
					SignEx se = null;
					for (ComEx comEx : allExXG) {
						se = new SignEx();
						se.setBelong(com.getId());
						se.setDeleted(0);
						se.setEx(comEx.getId());
						se.setStuId(stu.getId());
						if (gameService.addSignEx(se) > 0) {
							System.out.println("随机生成试卷记录 :" + comEx.getId() + " 成功 ......");
						} else {
							System.out.println("随机生成试卷记录 :" + comEx.getId() + " 失败 ......");
						}
					}
				} else {
					System.out.println("继续考试.................");
					mv.addObject("message", "notyText(\"您已经打开过试卷，系统自动为您载入答题记录\");");
				}
				// show sign ex
				List<SignEx> exam = gameService.getExam(stu.getId(), com.getId());
				ComEx comEx = null;
				int i = 0;
				for (SignEx signEx : exam) {
					i++;
					signEx.setSection(i);
					comEx = gameService.selectExById(signEx.getEx());
					if (comEx != null) {
						signEx.seteContent(comEx.getContent());
						signEx.seteScore(comEx.getScore());
						signEx.seteType(comEx.getType());
					} else {
						System.out.println("试卷生成失败..............................................");
						mv.addObject("message",
								"window.parent.frames.notyText(\"试卷生成失败............................................\");");
					}
				}

				mv.addObject("exam", exam);
				mv.addObject("flag", "1");
				mv.addObject("endtime", com.getToTime().getTime());
				mv.setViewName("/page/sign_ex_exam");
				// ===================creat over=======================
			} else {
				// =========================================over
				mv.addObject("message", "window.parent.frames.notyText(\"此次报考已经结束\");");

				Competion com1 = null;
				List<Sign> allSign = gameService.selectAllRegByUserId(stu.getId());
				for (Iterator iterator = allSign.iterator(); iterator.hasNext();) {
					Sign sign1 = (Sign) iterator.next();
					com1 = gameService.selectGameById(sign1.getBelong());
					if (com1 != null) {
						sign1.setcName(com1.getName());
						sign1.setFrom(com1.getFromTime());
						sign1.setTo(com1.getToTime());
						if (now.before(sign1.getFrom())) {
							sign1.setStatus("等待考试开始");
						} else if (now.before(sign1.getTo())) {
							sign1.setStatus("考试正在进行");
						} else {
							sign1.setStatus("考试结束");
						}
					}
				}
				mv.addObject("allSign", allSign);
				mv.setViewName("/page/sign_all");
				// =========================================
			}
		}

		return mv;
	}

	/**
	 * 下一题
	 * @param session
	 * @param section
	 * @param belong
	 * @return
	 */
	@RequestMapping("/nextEx/{belong}/{section}")
	public ModelAndView nextEx(HttpSession session, @PathVariable("section") Integer section,
			@PathVariable("belong") Integer belong) {
		Integer flag = section;
		Stu stu = (Stu) session.getAttribute(Cons.USERFLAG);
		ModelAndView mv = new ModelAndView();
		Sign sign = new Sign();
		sign.setStuId(stu.getId());
		sign.setBelong(belong);
		sign = gameService.check(sign);
		Competion com = gameService.selectGameById(sign.getBelong());
		Date now = new Date();
		if (com != null) {
			sign.setcName(com.getName());
			sign.setFrom(com.getFromTime());
			sign.setTo(com.getToTime());
			if (now.before(sign.getFrom())) {
				// =========================================wait
				mv.addObject("message", "window.parent.frames.notyText(\"公务员考试还未开始！\");");
				Competion com1 = null;
				List<Sign> allSign = gameService.selectAllRegByUserId(stu.getId());
				for (Iterator iterator = allSign.iterator(); iterator.hasNext();) {
					Sign sign1 = (Sign) iterator.next();
					com1 = gameService.selectGameById(sign1.getBelong());
					if (com1 != null) {
						sign1.setcName(com1.getName());
						sign1.setFrom(com1.getFromTime());
						sign1.setTo(com1.getToTime());
						if (now.before(sign1.getFrom())) {
							sign1.setStatus("等待考试开始");
						} else if (now.before(sign1.getTo())) {
							sign1.setStatus("考试正在进行");
						} else {
							sign1.setStatus("考试结束");
						}
					}
				}
				mv.addObject("allSign", allSign);
				mv.setViewName("/page/sign_all");
				// =========================================
			} else if (now.before(sign.getTo())) {
				// ===================creat exam=======================
				List<SignEx> examTest = gameService.getExam(stu.getId(), com.getId());
				if (examTest.size() < 0) {
					List<ComEx> allEx = gameService.allExOfCom(com.getId());
					SignEx se = null;
					for (ComEx comEx : allEx) {
						se = new SignEx();
						se.setBelong(com.getId());
						se.setDeleted(0);
						se.setEx(comEx.getId());
						se.setStuId(stu.getId());
						if (gameService.addSignEx(se) > 0) {
							System.out.println("creating with ex's id :" + comEx.getId() + " successfully ......");
						} else {
							System.out.println("creating with ex's id :" + comEx.getId() + " failed ......");
						}
					}
				} else {
					System.out.println("continue for exam.....................");
					mv.addObject("message", "notyText(\"已为你跳转到所选题号，请注意保存答案！\");");
				}
				// show sign ex
				List<SignEx> exam = gameService.getExam(stu.getId(), com.getId());
				ComEx comEx = null;
				int i = 0;
				for (SignEx signEx : exam) {
					i++;
					signEx.setSection(i);
					comEx = gameService.selectExById(signEx.getEx());
					if (comEx != null) {
						signEx.seteContent(comEx.getContent());
						signEx.seteScore(comEx.getScore());
						signEx.seteType(comEx.getType());
					} else {
						System.out.println("creating exam error.................................................");
						mv.addObject("message",
								"window.parent.frames.notyText(\"creating exam error.................................................\");");
					}
				}

				mv.addObject("exam", exam);
				mv.addObject("flag", flag);
				mv.addObject("endtime", com.getToTime().getTime());
				mv.setViewName("/page/sign_ex_exam");
				// ===================creat over=======================
			} else {
				// =========================================over
				mv.addObject("message", "window.parent.frames.notyText(\"此次报考已经结束\");");

				Competion com1 = null;
				List<Sign> allSign = gameService.selectAllRegByUserId(stu.getId());
				for (Iterator iterator = allSign.iterator(); iterator.hasNext();) {
					Sign sign1 = (Sign) iterator.next();
					com1 = gameService.selectGameById(sign1.getBelong());
					if (com1 != null) {
						sign1.setcName(com1.getName());
						sign1.setFrom(com1.getFromTime());
						sign1.setTo(com1.getToTime());
						if (now.before(sign1.getFrom())) {
							sign1.setStatus("等待考试开始");
						} else if (now.before(sign1.getTo())) {
							sign1.setStatus("考试正在进行");
						} else {
							sign1.setStatus("考试结束");
						}
					}
				}
				mv.addObject("allSign", allSign);
				mv.setViewName("/page/sign_all");
				// =========================================
			}
		}
		return mv;
	}

	/**
	 * 回答问题
	 * @param session
	 * @param section
	 * @param belong
	 * @param myEx
	 * @return
	 */
	@RequestMapping("/ans/{belong}/{section}")
	public ModelAndView ans(HttpSession session, @PathVariable("section") Integer section,
			@PathVariable("belong") Integer belong, SignEx myEx) {
		ModelAndView mv = new ModelAndView();
		// check ans
		myEx.setAns(myEx.getAns() + ",");
		ComEx comExTemp = gameService.selectExById(myEx.getEx());
		if (comExTemp.getAns().equals(myEx.getAns())) {
			myEx.setScore(eachEx);
		} else {
			myEx.setScore(0);
		}

		if (gameService.updateSignEx(myEx) > 0) {
			mv.addObject("message", "notyText(\"答案已提交请继续答题\");");
		} else {
			mv.addObject("message", "notyText(\"答案提交失败\");");
		}

		Integer flag = section;
		Stu stu = (Stu) session.getAttribute(Cons.USERFLAG);

		Sign sign = new Sign();
		sign.setStuId(stu.getId());
		sign.setBelong(belong);
		sign = gameService.check(sign);
		Competion com = gameService.selectGameById(sign.getBelong());
		Date now = new Date();
		if (com != null) {
			sign.setcName(com.getName());
			sign.setFrom(com.getFromTime());
			sign.setTo(com.getToTime());
			if (now.before(sign.getFrom())) {
				// =========================================wait
				mv.addObject("message", "window.parent.frames.notyText(\"公务员考试还未开始！\");");
				Competion com1 = null;
				List<Sign> allSign = gameService.selectAllRegByUserId(stu.getId());
				for (Iterator iterator = allSign.iterator(); iterator.hasNext();) {
					Sign sign1 = (Sign) iterator.next();
					com1 = gameService.selectGameById(sign1.getBelong());
					if (com1 != null) {
						sign1.setcName(com1.getName());
						sign1.setFrom(com1.getFromTime());
						sign1.setTo(com1.getToTime());
						if (now.before(sign1.getFrom())) {
							sign1.setStatus("等待考试开始");
						} else if (now.before(sign1.getTo())) {
							sign1.setStatus("考试正在进行");
						} else {
							sign1.setStatus("考试结束");
						}
					}
				}
				mv.addObject("allSign", allSign);
				mv.setViewName("/page/sign_all");
				// =========================================
			} else if (now.before(sign.getTo())) {
				// ===================creat exam=======================
				List<SignEx> examTest = gameService.getExam(stu.getId(), com.getId());
				if (examTest.size() < 0) {
					List<ComEx> allEx = gameService.allExOfCom(com.getId());
					SignEx se = null;
					for (ComEx comEx : allEx) {
						se = new SignEx();
						se.setBelong(com.getId());
						se.setDeleted(0);
						se.setEx(comEx.getId());
						se.setStuId(stu.getId());
						if (gameService.addSignEx(se) > 0) {
							System.out.println("creating with ex's id :" + comEx.getId() + " successfully ......");
						} else {
							System.out.println("creating with ex's id :" + comEx.getId() + " failed ......");
						}
					}
				} else {
					System.out.println("continue for exam.....................");
				}
				// show sign ex
				List<SignEx> exam = gameService.getExam(stu.getId(), com.getId());
				ComEx comEx = null;
				int i = 0;
				for (SignEx signEx : exam) {
					i++;
					signEx.setSection(i);
					comEx = gameService.selectExById(signEx.getEx());
					if (comEx != null) {
						signEx.seteContent(comEx.getContent());
						signEx.seteScore(comEx.getScore());
						signEx.seteType(comEx.getType());
					} else {
						System.out.println("creating exam error.................................................");
						mv.addObject("message",
								"window.parent.frames.notyText(\"creating exam error.................................................\");");
					}
				}
				flag = flag % exam.size() + 1;
				mv.addObject("exam", exam);
				mv.addObject("flag", flag);
				mv.addObject("endtime", com.getToTime().getTime());
				mv.setViewName("/page/sign_ex_exam");
				// ===================creat over=======================
			} else {
				// =========================================over
				mv.addObject("message", "window.parent.frames.notyText(\"此次报考已经结束\");");

				Competion com1 = null;
				List<Sign> allSign = gameService.selectAllRegByUserId(stu.getId());
				for (Iterator iterator = allSign.iterator(); iterator.hasNext();) {
					Sign sign1 = (Sign) iterator.next();
					com1 = gameService.selectGameById(sign1.getBelong());
					if (com1 != null) {
						sign1.setcName(com1.getName());
						sign1.setFrom(com1.getFromTime());
						sign1.setTo(com1.getToTime());
						if (now.before(sign1.getFrom())) {
							sign1.setStatus("等待考试开始");
						} else if (now.before(sign1.getTo())) {
							sign1.setStatus("考试正在进行");
						} else {
							sign1.setStatus("考试结束");
						}
					}
				}
				mv.addObject("allSign", allSign);
				mv.setViewName("/page/sign_all");
				// =========================================
			}
		}

		return mv;
	}

	/**
	 * 撤回报名
	 * @param session
	 * @param id
	 * @return
	 */
	@RequestMapping("/delSign/{id}")
	public ModelAndView delSign(HttpSession session, @PathVariable("id") Integer id) {

		ModelAndView mv = new ModelAndView();

		if (gameService.delSign(id) > 0) {
			mv.addObject("message", "window.parent.frames.notyText(\"取消报名公务员考试成功\");");
		} else {
			mv.addObject("message", "window.parent.frames.notyText(\"取消报名公务员考试失败\");");
		}

		Stu stu = (Stu) session.getAttribute(Cons.USERFLAG);
		Competion com = null;
		List<Sign> allSign = gameService.selectAllRegByUserId(stu.getId());
		Date now = new Date();
		for (Iterator iterator = allSign.iterator(); iterator.hasNext();) {
			Sign sign = (Sign) iterator.next();
			com = gameService.selectGameById(sign.getBelong());
			if (com != null) {
				sign.setcName(com.getName());
				sign.setFrom(com.getFromTime());
				sign.setTo(com.getToTime());
				if (now.before(sign.getFrom())) {
					sign.setStatus("等待考试开始");
				} else if (now.before(sign.getTo())) {
					sign.setStatus("考试正在进行");
				} else {
					sign.setStatus("考试结束");
				}
			}
		}

		mv.addObject("allSign", allSign);
		mv.setViewName("/page/sign_all");
		return mv;
	}

	/**
	 * 报名
	 * @param id
	 * @param session
	 * @return
	 */
	@RequestMapping("/ireg/{id}")
	public ModelAndView ireg(@PathVariable("id") Integer id, HttpSession session) {
		Stu stu = (Stu) session.getAttribute(Cons.USERFLAG);
		Competion com = gameService.selectGameById(id);
		Sign sign = new Sign();
		sign.setAskTime(new Date());
		sign.setBelong(com.getId());
		sign.setDeleted(0);
		sign.setPs("我报名了公务员考试：" + com.getName());
		sign.setStatus("报名成功");
		sign.setStuId(stu.getId());
		ModelAndView mv = new ModelAndView();

		if (gameService.check(sign) != null) {
			mv.addObject("message", "window.parent.frames.notyText(\"您已经报名过此公务员考试了！！！！\");");
		} else {
			if (gameService.addSign(sign) > 0) {
				mv.addObject("message", "window.parent.frames.notyText(\"恭喜！您成功报名了公务员考试！\");");
			} else {
				mv.addObject("message", "window.parent.frames.notyText(\"抱歉！您的报名失败了！\");");
			}

		}
		List<Competion> allCom = gameService.allGame();
		mv.addObject("allCom", allCom);
		mv.setViewName("/page/competion_all");
		return mv;
	}


	/**
	 * 添加试题
	 * @return
	 */
	@RequestMapping("/goToAddEx")
	public ModelAndView goToAddEx() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/page/com_ex_add");
		return mv;
	}

	/**
	 * 跳转上传页面
	 * @return
	 */
	@RequestMapping("/cmdEx")
	public ModelAndView cmdEx() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/page/com_ex_cmd");
		return mv;
	}
	
	/**
	 * 批量修改
	 * @param file
	 * @return
	 */
	@RequestMapping("/doCmdEx")
	public ModelAndView doCmdEx(@RequestParam("file") CommonsMultipartFile file) {
		ModelAndView mv = new ModelAndView();
		ImportExecl poi = new ImportExecl();
		List<List<String>> list = null;
		try {
			list = poi.read(file.getInputStream(), false);
		} catch (IOException e) {
			e.printStackTrace();
		}

		// 构建ex list
		List<ComEx> allEx = new ArrayList<ComEx>();

		ComEx temp = null;
		if (list != null) {
			for (int i = 1; i < list.size(); i++) {
				temp = new ComEx();
				List<String> cellList = list.get(i);
				temp.setId(Integer.parseInt(cellList.get(0).substring(0,cellList.get(0).length()-2)));
				temp.setContent(cellList.get(1));
				temp.setAns(cellList.get(2));
				if (!temp.getAns().contains(",")) {
					temp.setAns(temp.getAns() + ",");
				}
				temp.setType(cellList.get(3));
				allEx.add(temp);
			}

		}

		for (ComEx comEx : allEx) {
			temp = gameService.selectExById(comEx.getId());
			if (temp != null) {
				if (temp.getContent() != null  &&  !"".equals(temp.getContent())) {
					if (temp.getContent().contains("img")) {
						comEx.setContent(null);
					}
				}
				
				if (gameService.updateEx(comEx)>0) {
					System.out.println("excel update ing....ok.....");
				}else{
					System.err.println("excel update ing....no.....");
				}
			}else{
				if (gameService.addEx(comEx)>0) {
					System.out.println("excel insert ing....ok.....");
				}else{
					System.err.println("excel insert ing....no.....");
				}
			}
		}

		mv.setViewName("/page/com_ex_cmd");
		return mv;
	}


	
	
	/**
	 * 展示我的成绩
	 * @param id
	 * @param session
	 * @return
	 */
	@RequestMapping("/showMyGrade/{id}")
	public ModelAndView showMyGrade(@PathVariable("id") Integer id, HttpSession session) {
		Stu stu = (Stu) session.getAttribute(Cons.USERFLAG);
		Competion com = null;
		List<Sign> allSign = gameService.selectAllRegByUserId(stu.getId());
		Date now = new Date();
		for (Iterator iterator = allSign.iterator(); iterator.hasNext();) {
			Sign sign = (Sign) iterator.next();
			com = gameService.selectGameById(sign.getBelong());
			if (com != null) {
				sign.setcName(com.getName());
				sign.setFrom(com.getFromTime());
				sign.setTo(com.getToTime());
				if (now.before(sign.getFrom())) {
					sign.setStatus("等待考试开始");
					// allSign.remove(sign);
					iterator.remove();
				} else if (now.before(sign.getTo())) {
					sign.setStatus("考试正在进行");
					// allSign.remove(sign);
					iterator.remove();
				} else {
					sign.setStatus("考试结束");
				}
			}
		}



		ModelAndView mv = new ModelAndView();

		// organize score
		for (Sign sign : allSign) {
			sign.setScore(0);
			List<SignEx> thisEx = gameService.getExam(stu.getId(), sign.getBelong());
			String jsonStr = "";
			for (int i = 0; i < thisEx.size(); i++) {
				jsonStr += "{\"timu\": \"第" + (i + 1) + "题\",\"fengshu\":" + thisEx.get(i).getScore() + "},";
				sign.setScore(sign.getScore() + thisEx.get(i).getScore());
			}
			if (jsonStr.length()>1) {
				jsonStr = jsonStr.substring(0, jsonStr.length() - 1);
			}
			sign.setJsonStr(jsonStr);
			System.out.println("json=" + jsonStr);
		}
		mv.addObject("allSign", allSign);
		mv.setViewName("/page/sign_ex_mygrade");
		return mv;

	}

	
	/**
	 * 展示本批次所有成绩
	 * @param id
	 * @return
	 */
	@RequestMapping("/showCompetionGrade/{id}")
	public ModelAndView showCompetionGrade(@PathVariable("id") Integer id) {
		Competion com = gameService.selectGameById(id);
		Date now = new Date();
		ModelAndView mv = new ModelAndView();
		List<Sign> allSign = gameService.selectAllByBelong(id);
		for (Sign sign : allSign) {
			// detail
			sign.setStuName(stuService.selectByPrimaryKey(sign.getStuId()).getName());
			//
			List<SignEx> stuEx = gameService.getExam(sign.getStuId(), id);
			if (stuEx.size() <= 0) {
				sign.setScore(0);
				sign.setJsonStr("该生未如期参加考试！");
			} else {
				sign.setScore(0);
				String jsonStr = "";
				for (Iterator iterator = stuEx.iterator(); iterator.hasNext();) {
					SignEx signEx = (SignEx) iterator.next();
					jsonStr += "" + signEx.getScore() + "、";
					sign.setScore(sign.getScore() + signEx.getScore());
				}
				jsonStr = jsonStr.substring(0, jsonStr.length());
				System.out.println("jsonStr = " + jsonStr);
				sign.setJsonStr(jsonStr);
			}
		}

		mv.addObject("allSign", allSign);
		mv.addObject("com", com);
		mv.setViewName("/page/sign_ex_allgrade");
		return mv;
	}


	// At the time of initialization,convert the type "String" to type "date"
	@InitBinder
	public void initBinder(ServletRequestDataBinder binder) {
		binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd HH:mm"), true));
	}
}
