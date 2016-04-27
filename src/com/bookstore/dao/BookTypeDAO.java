package com.bookstore.dao;

import java.util.List;

import com.bookstore.domain.BookType;


public interface BookTypeDAO {
	BookType findByID(Integer id);
	List<BookType> findAll();
	Integer save(BookType bookType);
	void update(BookType bookType);
	void delete(Integer id);
	List<BookType> findByBookID(Integer bookID);
}
