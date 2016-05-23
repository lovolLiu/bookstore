package com.bookstore.service.impl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.bookstore.dao.BookDAO;
import com.bookstore.dao.BookTypeDAO;
import com.bookstore.domain.Book;
import com.bookstore.domain.BookType;
import com.bookstore.service.SelectBookService;

public class SelectBookServiceImpl implements SelectBookService {

	BookDAO bookDAO;
	BookTypeDAO bookTypeDAO;
	
	@Override
	public List<Book> selectRandomBook(int count) {
		List<Book> list = bookDAO.findAll();
		List<Book> resultList = new ArrayList<Book>();
		int bookNum = list.size();
		if(bookNum <= count) return list;
		Set<Integer> set = new HashSet();
		for(int i=0;i<count;i++){
			int randomIndex;
			do{
				randomIndex = (int)(Math.random()*bookNum);
			}while(set.add(randomIndex) == false);
		}
		
		for(Integer index : set){
			resultList.add(list.get(index));
		}
		return resultList;
	}

	@Override
	public List<BookType> getTypeList() {
		return bookTypeDAO.findAll();
	}

	
	@Override
	public List<Book> selectBookByTypeID(int typeID) {
		return bookDAO.findByTypeID(typeID);
	}

	@Override
	public List<Book> selectNewestBook() {
		return bookDAO.findAllOrderByPublishTime();
	}

	@Override
	public List<Book> selectHottestBook() {
		return bookDAO.findAllOrderByTotalSell();
	}

	@Override
	public List<Book> selectDiscountBook() {
		return bookDAO.findAllOrderByDiscount();
	}

	public BookDAO getBookDAO() {
		return bookDAO;
	}

	public void setBookDAO(BookDAO bookDAO) {
		this.bookDAO = bookDAO;
	}

	public BookTypeDAO getBookTypeDAO() {
		return bookTypeDAO;
	}

	public void setBookTypeDAO(BookTypeDAO bookTypeDAO) {
		this.bookTypeDAO = bookTypeDAO;
	}

	@Override
	public List<Book> selectPersonalBookByAuthor(String authorName) {
		return bookDAO.fuzzyfindByAuthor(authorName);
	}


	

}
