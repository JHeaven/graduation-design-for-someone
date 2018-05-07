package com.tsq.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tsq.constance.Cons;
import com.tsq.model.Book;
import com.tsq.model.BookType;
import com.tsq.model.Sign;
import com.tsq.model.Stu;
import com.tsq.service.IBookService;
import com.tsq.service.IBookTypeService;
import com.tsq.service.ISignService;

@Controller
@RequestMapping("/sign")
public class SignController {
	
	@Resource
	IBookService bookService;
	@Resource
	IBookTypeService bookTypeService;
	@Resource
	ISignService signService;
	
	@RequestMapping("/signAdd")
	public ModelAndView signAdd() {
		ModelAndView mv = new ModelAndView();
		List<BookType>  allType = bookTypeService.selectAll();
		mv.addObject("allType",allType);
		mv.setViewName("/sub/sign_add");
		return mv;
	}
	
	
	@RequestMapping("/signDoAdd")
	public ModelAndView signDoAdd(Sign sign) {
		ModelAndView mv = new ModelAndView();
		sign.setStatus("等待审核");
		if (bookService.selectByISBN(sign.getBookId())==null) {
			sign.setStatus("无此书目");
		}
		if (signService.insertSelective(sign)>0) {
			if (bookService.selectByISBN(sign.getBookId())==null) {
				mv.addObject("message","window.parent.frames.notyText(\"操作成功，但是你预定的书目暂时不存在，请联系管理员 .\");");
			}else{
				mv.addObject("message","window.parent.frames.notyText(\"操作成功 .您预定的书目存在，请等待管理员审核\");");
			}
			
		}else{
			mv.addObject("message","window.parent.frames.notyText(\"操作失敗 .\");");
		}
		List<BookType>  allType = bookTypeService.selectAll();
		mv.addObject("allType",allType);
		mv.setViewName("/sub/sign_add");
		return mv;
	}

	
	
	@RequestMapping("/signMy/{id}")
	public ModelAndView signMy(@PathVariable("id")Integer id) {
		List<Sign> allSign = signService.selectByUserId(id);
		List<BookType>  allType = bookTypeService.selectAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("allSign",allSign);
		mv.addObject("allType",allType);
		mv.setViewName("/sub/sign_all_my");
		return mv;
	}
	
	
	@RequestMapping("/updateSign/{id}")
	public ModelAndView updateSign(@PathVariable("id")Integer id) {
		Sign sign = signService.selectByPrimaryKey(id);
		List<BookType>  allType = bookTypeService.selectAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("sign",sign);
		mv.addObject("allType",allType);
		mv.setViewName("/sub/sign_update");
		return mv;
	}
	
	
	
	@RequestMapping("/signDoUpdate")
	public ModelAndView signDoUpdate(HttpSession session,Sign sign) {
		ModelAndView mv = new ModelAndView();
		sign.setStatus("等待审核");
		if (bookService.selectByISBN(sign.getBookId())==null) {
			sign.setStatus("无此书目");
		}
		if (signService.updateByPrimaryKeySelective(sign)>0) {
			if (bookService.selectByISBN(sign.getBookId())==null) {
				mv.addObject("message","window.parent.frames.notyText(\"操作成功，但是你预定的书目暂时不存在，请联系管理员 .\");");
			}else{
				mv.addObject("message","window.parent.frames.notyText(\"操作成功 ，请等待重新审核.\");");
			}
			
		}else{
			mv.addObject("message","window.parent.frames.notyText(\"操作失败 .\");");
		}
		Stu stu = (Stu) session.getAttribute(Cons.USERFLAG);
		List<Sign> allSign = signService.selectByUserId(stu.getId());
		List<BookType>  allType = bookTypeService.selectAll();
		mv.addObject("allSign",allSign);
		mv.addObject("allType",allType);
		mv.setViewName("/sub/sign_all_my");
		return mv;
	}
	
	
	@RequestMapping("/delSign/{id}")
	public ModelAndView delSign(@PathVariable("id")Integer id,HttpSession session) {
		ModelAndView mv = new ModelAndView();
		if (signService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message","window.parent.frames.notyText(\"操作成功 .\");");
		}else{
			mv.addObject("message","window.parent.frames.notyText(\"操作失败 .\");");
		}
		Stu stu = (Stu) session.getAttribute(Cons.USERFLAG);
		List<Sign> allSign = signService.selectByUserId(stu.getId());
		List<BookType>  allType = bookTypeService.selectAll();
		mv.addObject("allSign",allSign);
		mv.addObject("allType",allType);
		mv.setViewName("/sub/sign_all_my");
		return mv;
	}
	
	
	
	@RequestMapping("/delSignAdmin/{id}")
	public ModelAndView delSignAdmin(@PathVariable("id")Integer id,HttpSession session) {
		ModelAndView mv = new ModelAndView();
		if (signService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message","window.parent.frames.notyText(\"操作成功 .\");");
		}else{
			mv.addObject("message","window.parent.frames.notyText(\"操作失败 .\");");
		}
		List<Sign> allSign = signService.selectByUserId(null);
		List<BookType>  allType = bookTypeService.selectAll();
		mv.addObject("allSign",allSign);
		mv.addObject("allType",allType);
		mv.setViewName("/sub/sign_all");
		return mv;
	}
	
	
	@RequestMapping("/accept/{id}")
	public ModelAndView accept(@PathVariable("id")Integer id,HttpSession session) {
		ModelAndView mv = new ModelAndView();
		Sign sign = signService.selectByPrimaryKey(id);
		sign.setStatus("通过审核");
		if (signService.updateByPrimaryKey(sign)>0) {
			mv.addObject("message","window.parent.frames.notyText(\"操作成功 .\");");
		}else{
			mv.addObject("message","window.parent.frames.notyText(\"操作失败 .\");");
		}
		List<Sign> allSign = signService.selectByUserId(null);
		List<BookType>  allType = bookTypeService.selectAll();
		mv.addObject("allSign",allSign);
		mv.addObject("allType",allType);
		mv.setViewName("/sub/sign_all");
		return mv;
	}
	
	
	@RequestMapping("/noaccept/{id}")
	public ModelAndView noaccept(@PathVariable("id")Integer id,HttpSession session) {
		ModelAndView mv = new ModelAndView();
		Sign sign = signService.selectByPrimaryKey(id);
		sign.setStatus("审核被拒");
		if (signService.updateByPrimaryKey(sign)>0) {
			mv.addObject("message","window.parent.frames.notyText(\"操作成功 .\");");
		}else{
			mv.addObject("message","window.parent.frames.notyText(\"操作失败 .\");");
		}
		List<Sign> allSign = signService.selectByUserId(null);
		List<BookType>  allType = bookTypeService.selectAll();
		mv.addObject("allSign",allSign);
		mv.addObject("allType",allType);
		mv.setViewName("/sub/sign_all");
		return mv;
	}
	
	
	@RequestMapping("/signAll")
	public ModelAndView signAll() {
		List<Sign> allSign = signService.selectByUserId(null);
		List<BookType>  allType = bookTypeService.selectAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("allSign",allSign);
		mv.addObject("allType",allType);
		mv.setViewName("/sub/sign_all");
		return mv;
	}
	
	
	@RequestMapping("/newBook/{id}")
	public ModelAndView newBook(@PathVariable("id")Integer id,HttpSession session) {
		ModelAndView mv = new ModelAndView();
		Sign sign = signService.selectByPrimaryKey(id);
		Book book = new Book();
		book.setAuthor(sign.getAuthor());
		book.setBookId(sign.getBookId());
		book.setDeleted(0);
		book.setLevel(sign.getLevel());
		book.setName(sign.getName());
		book.setPs("无");
		book.setPublish(sign.getPublish());
		book.setsAuthor(sign.getsAuthor());
		book.setType(sign.getType());
		book.setYear(sign.getYear());
		int flag = bookService.insertSelective(book);
		sign.setStatus("等待审核");
		flag += signService.updateByPrimaryKeySelective(sign);
		if (flag == 2) {
			mv.addObject("message","window.parent.frames.notyText(\"操作成功 .\");");
		}else{
			mv.addObject("message","window.parent.frames.notyText(\"操作失败 .\");");
		}
		
		List<Sign> allSign = signService.selectByUserId(null);
		List<BookType>  allType = bookTypeService.selectAll();
		mv.addObject("allSign",allSign);
		mv.addObject("allType",allType);
		mv.setViewName("/sub/sign_all");
		return mv;
	}
	
	
}
