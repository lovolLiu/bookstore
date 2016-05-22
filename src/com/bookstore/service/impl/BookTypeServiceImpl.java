package com.bookstore.service.impl;

import java.util.List;

import com.bookstore.dao.BookDAO;
import com.bookstore.dao.BookTypeDAO;
import com.bookstore.domain.Book;
import com.bookstore.domain.BookType;
import com.bookstore.service.BookTypeService;

public class BookTypeServiceImpl implements BookTypeService{
	BookTypeDAO bookTypeDao;
	BookDAO bookDao;

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
	
	@Override
	public List<Book> getBookByBookType(int bookTypeID) {
		return bookDao.findByTypeID(bookTypeID);
	}

	public BookTypeDAO getBookTypeDao() {
		return bookTypeDao;
	}

	public void setBookTypeDao(BookTypeDAO bookTypeDao) {
		this.bookTypeDao = bookTypeDao;
	}

	public BookDAO getBookDao() {
		return bookDao;
	}

	public void setBookDao(BookDAO bookDao) {
		this.bookDao = bookDao;
	}
	
	

}
