package com.bookstore.service;

import java.util.List;

import com.bookstore.domain.Book;
import com.bookstore.domain.BookType;

public interface SelectBookService {
	List<Book> selectRandomBook(int count);
	List<BookType> getTypeList();
	List<Book> selectBookByTypeID(int typeID);
	List<Book> selectNewestBook();
	List<Book> selectHottestBook();
	List<Book> selectDiscountBook();
	List<Book> selectPersonalBookByAuthor(String authorName);
	
}
