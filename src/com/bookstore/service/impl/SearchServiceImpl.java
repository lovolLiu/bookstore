package com.bookstore.service.impl;

import java.util.List;

import com.bookstore.dao.BookDAO;
import com.bookstore.dao.BookTypeDAO;
import com.bookstore.domain.Book;
import com.bookstore.service.SearchService;

public class SearchServiceImpl implements SearchService {

	BookDAO bookDAO;
	BookTypeDAO bookTypeDAO;
	
	@Override
	public List<Book> searchByBookName(String name) {
		// TODO Auto-generated method stub
		return bookDAO.fuzzyfindByName(name);
	}

	@Override
	public List<Book> searchByAuthor(String name) {
		// TODO Auto-generated method stub
		return bookDAO.fuzzyfindByAuthor(name);
	}

	@Override
	public List<Book> searchByPublisher(String name) {
		// TODO Auto-generated method stub
		return bookDAO.fuzzyfindByPublisher(name);
	}

}
