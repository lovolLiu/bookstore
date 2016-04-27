package com.bookstore.service;

import java.util.List;

import com.bookstore.domain.Book;
import com.bookstore.domain.BookType;

public interface SelectBookService {
	List<Book> selectRandomBook(int count);
	List<BookType> getTypeList();
	List<Book> selectBookByTypeID(int typeID, int num);
	List<Book> selectBookByTypeID(int typeID);
	List<Book> selectNewestBook(int count);
	List<Book> selectHottestBook(int count);
	List<Book> selectDiscountBook(int count);
	List<Book> selectPersonBook(int count);
}
