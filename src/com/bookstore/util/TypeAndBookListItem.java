package com.bookstore.util;

import java.util.List;

import com.bookstore.domain.BookType;

public class TypeAndBookListItem {
	BookType bookType;
	List<DivBook> bookList;
	
	public BookType getBookType() {
		return bookType;
	}
	public void setBookType(BookType bookType) {
		this.bookType = bookType;
	}
	public List<DivBook> getBookList() {
		return bookList;
	}
	public void setBookList(List<DivBook> bookList) {
		this.bookList = bookList;
	}
}
