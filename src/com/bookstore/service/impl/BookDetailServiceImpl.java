package com.bookstore.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.bookstore.dao.AppriseDAO;
import com.bookstore.dao.BookDAO;
import com.bookstore.domain.Apprise;
import com.bookstore.domain.Book;
import com.bookstore.service.BookDetailService;

public class BookDetailServiceImpl implements BookDetailService {

	BookDAO bookDao;
	AppriseDAO appriseDao;

	@Override
	public Book getBookInfo(int bookID) {
		// TODO Auto-generated method stub
		return bookDao.findByID(bookID);
	}

	@Override
	public List<Apprise> getAppriseList(int bookID) {
		// TODO Auto-generated method stub
		List<Apprise> appriseList = new ArrayList<Apprise>();
		appriseList = appriseDao.findByBookID(bookID);
		return appriseList;
	}

	public BookDAO getBookDao() {
		return bookDao;
	}

	public void setBookDao(BookDAO bookDao) {
		this.bookDao = bookDao;
	}

	public AppriseDAO getAppriseDao() {
		return appriseDao;
	}

	public void setAppriseDao(AppriseDAO appriseDao) {
		this.appriseDao = appriseDao;
	}

}
