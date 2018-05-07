package com.tsq.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tsq.dao.BookMapper;
import com.tsq.model.Book;
import com.tsq.service.IBookService;

@Service
public class BookServiceImpl implements IBookService {

	@Resource
	BookMapper bookMapper = null;
	
	
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return bookMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Book record) {
		// TODO Auto-generated method stub
		return bookMapper.insert(record);
	}

	@Override
	public int insertSelective(Book record) {
		// TODO Auto-generated method stub
		return bookMapper.insertSelective(record);
	}

	@Override
	public Book selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return bookMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Book record) {
		// TODO Auto-generated method stub
		return bookMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Book record) {
		// TODO Auto-generated method stub
		return bookMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Book> selectAll() {
		// TODO Auto-generated method stub
		return bookMapper.selectAll();
	}

	@Override
	public Book selectByISBN(String ISBN) {
		// TODO Auto-generated method stub
		return bookMapper.selectByISBN(ISBN);
	}

}
