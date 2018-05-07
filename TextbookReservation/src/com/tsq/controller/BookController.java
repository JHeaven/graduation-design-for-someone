package com.tsq.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tsq.model.Book;
import com.tsq.model.BookType;
import com.tsq.service.IBookService;
import com.tsq.service.IBookTypeService;

@Controller
@RequestMapping("/book")
public class BookController {
	
	@Resource
	IBookService bookService;
	
	@Resource
	IBookTypeService bookTypeService;
	
	@RequestMapping("/typeAdd")
	public ModelAndView typeAdd() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/bookType_add");
		return mv;
	}
	
	@RequestMapping("/typeDoAdd")
	public ModelAndView typeDoAdd(BookType bt) {		
		ModelAndView mv = new ModelAndView();
		bt.setPs("無");
		bt.setDeleted(0);
		if (bookTypeService.insertSelective(bt)>0) {
			mv.addObject("message","window.parent.frames.notyText(\"操作成功 .\");");
		}else{
			mv.addObject("message","window.parent.frames.notyText(\"操作失敗 .\");");
		}
		mv.setViewName("/sub/bookType_add");
		return mv;
	}
	

	@RequestMapping("/showBookType")
	public ModelAndView showBookType() {
		ModelAndView mv = new ModelAndView();
		List<BookType>  allType = bookTypeService.selectAll();
		mv.addObject("allType",allType);
		mv.setViewName("/sub/bookType_all");
		return mv;
	}
	
	
	
	@RequestMapping("/delType/{id}")
	public ModelAndView delType(@PathVariable("id")Integer id) {		
		ModelAndView mv = new ModelAndView();
		if (bookTypeService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message","window.parent.frames.notyText(\"操作成功 .\");");
		}else{
			mv.addObject("message","window.parent.frames.notyText(\"操作失敗 .\");");
		}
		List<BookType>  allType = bookTypeService.selectAll();
		mv.addObject("allType",allType);
		mv.setViewName("/sub/bookType_all");
		return mv;
	}
	
	
	@RequestMapping("/bookAdd")
	public ModelAndView bookAdd() {
		ModelAndView mv = new ModelAndView();
		List<BookType>  allType = bookTypeService.selectAll();
		mv.addObject("allType",allType);
		mv.setViewName("/sub/book_add");
		return mv;
	}
	
	
	@RequestMapping("/bookDoAdd")
	public ModelAndView bookDoAdd(Book bt) {		
		ModelAndView mv = new ModelAndView();
		bt.setPs("無");
		bt.setDeleted(0);
		if (bookService.insertSelective(bt)>0) {
			mv.addObject("message","window.parent.frames.notyText(\"操作成功 .\");");
		}else{
			mv.addObject("message","window.parent.frames.notyText(\"操作失敗 .\");");
		}
		List<BookType>  allType = bookTypeService.selectAll();
		mv.addObject("allType",allType);
		mv.setViewName("/sub/book_add");
		return mv;
	}
	
	
	@RequestMapping("/showBook")
	public ModelAndView showBook() {
		ModelAndView mv = new ModelAndView();
		List<BookType> allType = bookTypeService.selectAll();
		List<Book> allBook = bookService.selectAll();
		mv.addObject("allType",allType);
		mv.addObject("allBook",allBook);
		mv.setViewName("/sub/book_all");
		return mv;
	}
	
	
	@RequestMapping("/updateBook/{id}")
	public ModelAndView updateBook(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		Book book = bookService.selectByPrimaryKey(id);
		List<BookType> allType = bookTypeService.selectAll();
		mv.addObject("allType",allType);
		mv.addObject("book",book);
		mv.setViewName("/sub/book_update");
		return mv;
	}
	
	
	@RequestMapping("/bookDoUpdate")
	public ModelAndView bookDoUpdate(Book bt) {		
		System.out.println("捕获book = "+bt);
		ModelAndView mv = new ModelAndView();
		if (bookService.updateByPrimaryKeySelective(bt)>0) {
			mv.addObject("message","window.parent.frames.notyText(\"操作成功 .\");");
		}else{
			mv.addObject("message","window.parent.frames.notyText(\"操作失敗 .\");");
		}
		List<BookType> allType = bookTypeService.selectAll();
		List<Book> allBook = bookService.selectAll();
		mv.addObject("allType",allType);
		mv.addObject("allBook",allBook);
		mv.setViewName("/sub/book_all");
		return mv;
	}
	
	
	
	@RequestMapping("/delBook/{id}")
	public ModelAndView delBook(@PathVariable("id")Integer id) {		
		ModelAndView mv = new ModelAndView();
		if (bookService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message","window.parent.frames.notyText(\"操作成功 .\");");
		}else{
			mv.addObject("message","window.parent.frames.notyText(\"操作失敗 .\");");
		}
		List<BookType> allType = bookTypeService.selectAll();
		List<Book> allBook = bookService.selectAll();
		mv.addObject("allType",allType);
		mv.addObject("allBook",allBook);
		mv.setViewName("/sub/book_all");
		return mv;
	}
	
	
}
