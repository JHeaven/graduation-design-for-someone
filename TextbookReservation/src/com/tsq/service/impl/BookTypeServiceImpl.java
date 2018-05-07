package com.tsq.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tsq.dao.BookTypeMapper;
import com.tsq.model.BookType;
import com.tsq.service.IBookTypeService;
@Service
public class BookTypeServiceImpl implements IBookTypeService {

	
	@Resource
	BookTypeMapper bookTypeMapper = null;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return bookTypeMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(BookType record) {
		// TODO Auto-generated method stub
		return bookTypeMapper.insert(record);
	}

	@Override
	public int insertSelective(BookType record) {
		// TODO Auto-generated method stub
		return bookTypeMapper.insertSelective(record);
	}

	@Override
	public BookType selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return bookTypeMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(BookType record) {
		// TODO Auto-generated method stub
		return bookTypeMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(BookType record) {
		// TODO Auto-generated method stub
		return bookTypeMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<BookType> selectAll() {
		// TODO Auto-generated method stub
		return bookTypeMapper.selectAll();
	}

}
