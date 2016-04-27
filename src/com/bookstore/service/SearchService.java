package com.bookstore.service;

import java.util.List;

import com.bookstore.domain.Book;

public interface SearchService {
	public List<Book> searchByBookName(String name);
	
	public List<Book> searchByAuthor(String name);
	
	public List<Book> searchByPublisher(String name);
}
