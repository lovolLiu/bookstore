package com.bookstore.service;

import java.util.List;

import com.bookstore.domain.Book;
import com.bookstore.domain.BookType;

public interface BookTypeService {
	BookType getBookType(int bookTypeID);
	List<BookType> getBookTypeList();
	List<BookType> getBookTypeListByBook(int bookID);
	List<Book> getBookByBookType(int bookTypeID);
}
