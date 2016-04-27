package com.bookstore.service.impl;

import java.util.List;

import com.bookstore.dao.BookDAO;
import com.bookstore.domain.Book;
import com.bookstore.domain.BookType;
import com.bookstore.service.SelectBookService;

public class SelectBookServiceImpl implements SelectBookService {

	BookDAO bookDAO;
	
	
	@Override
	public List<Book> selectRandomBook(int count) {
		List<Book> list = bookDAO.findAll();
		return null;
	}

	@Override
	public List<BookType> getTypeList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Book> selectBookByTypeID(int typeID, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Book> selectBookByTypeID(int typeID) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Book> selectNewestBook(int count) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Book> selectHottestBook(int count) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Book> selectDiscountBook(int count) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Book> selectPersonBook(int count) {
		// TODO Auto-generated method stub
		return null;
	}

	public BookDAO getBookDAO() {
		return bookDAO;
	}

	public void setBookDAO(BookDAO bookDAO) {
		this.bookDAO = bookDAO;
	}
	

}
