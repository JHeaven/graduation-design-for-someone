package com.tsq.service;

import java.util.List;

import com.tsq.model.Book;

public interface IBookService {
	int deleteByPrimaryKey(Integer id);

    int insert(Book record);

    int insertSelective(Book record);

    Book selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Book record);

    int updateByPrimaryKey(Book record);
    List<Book> selectAll();
    
    Book selectByISBN(String ISBN);


}
