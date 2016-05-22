package com.bookstore.service.impl;

import java.util.List;

import com.bookstore.dao.BookTypeDAO;
import com.bookstore.domain.BookType;
import com.bookstore.service.BookTypeService;

public class BookTypeServiceImpl implements BookTypeService{
	BookTypeDAO bookTypeDao;

	@Override
	public BookType getBookType(int bookTypeID) {
		return bookTypeDao.findByID(bookTypeID);
	}

	@Override
	public List<BookType> getBookTypeList() {
		return bookTypeDao.findAll();
	}
	
	@Override
	public List<BookType> getBookTypeListByBook(int bookID) {
		return bookTypeDao.findByBookID(bookID);
	}

	public BookTypeDAO getBookTypeDao() {
		return bookTypeDao;
	}

	public void setBookTypeDao(BookTypeDAO bookTypeDao) {
		this.bookTypeDao = bookTypeDao;
	}

}
