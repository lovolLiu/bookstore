package com.bookstore.service.impl;

import java.util.List;

import com.bookstore.dao.BookDAO;
import com.bookstore.dao.BookTypeDAO;
import com.bookstore.dao.PublisherDAO;
import com.bookstore.domain.Book;
import com.bookstore.domain.Publisher;
import com.bookstore.service.SearchService;

public class SearchServiceImpl implements SearchService {

	BookDAO bookDAO;
	BookTypeDAO bookTypeDAO;
	PublisherDAO publisherDAO;
	@Override
	public List<Book> searchByBookName(String name) {
		// TODO Auto-generated method stub
		return bookDAO.fuzzyfindByName(name);
	}

	@Override
	public List<Book> searchByAuthor(String name) {
		// TODO Auto-generated method stub
		return bookDAO.fuzzyfindByAuthor(name);
	}

	@Override
	public List<Book> searchByPublisher(String name) {
		// TODO Auto-generated method stub
		Publisher publisher = publisherDAO.fuzzyfindName(name);
		Integer i = publisher.getPublisherID();
		return bookDAO.fuzzyfindByPublisher(i);
		
	}

	@Override
	public List<Book> searchAllBook() {
		// TODO Auto-generated method stub
		
		return bookDAO.findAll();
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

	public PublisherDAO getPublisherDAO() {
		return publisherDAO;
	}

	public void setPublisherDAO(PublisherDAO publisherDAO) {
		this.publisherDAO = publisherDAO;
	}


	
}
