package com.tsq.service;

import java.util.List;

import com.tsq.model.BookType;

public interface IBookTypeService {
	int deleteByPrimaryKey(Integer id);

    int insert(BookType record);

    int insertSelective(BookType record);

    BookType selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BookType record);

    int updateByPrimaryKey(BookType record);
    
    List<BookType> selectAll();
}
