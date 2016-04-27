package com.bookstore.dao;

import java.util.List;

import com.bookstore.domain.Book;

public interface BookDAO {
	Book findByID(Integer id);
	List<Book> findAll();
	Integer save(Book book);
	void update(Book book);
	void delete(Integer id);
	List<Book> findByTypeID(Integer typeID);
	List<Book> findByPublisherID(Integer publisherID);
}
