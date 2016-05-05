package com.bookstore.action;

import java.sql.Timestamp;

import com.bookstore.dao.BookDAO;
import com.bookstore.dao.impl.BookDAOImpl;
import com.bookstore.domain.Book;
import com.bookstore.service.IHelloWorldService;

public class HelloWorldAction {
	
	private IHelloWorldService helloWorldService;

	BookDAO bookDAO;
	
	public IHelloWorldService getHelloWorldService() {
		return helloWorldService;
	}

	public void setHelloWorldService(IHelloWorldService service) {
		this.helloWorldService = service;
	}


	public String execute(){	
		Book book = new Book();
		book.setAuthor("fuyu");
		book.setPageNum(123);
		book.setBookName("fdsa");
		book.setClickCount(3);
		book.setDescription("fdsafd");
		book.setPublishTime(new Timestamp(System.currentTimeMillis())); 
		book.setDiscount(34);
		book.setPrice(43);
		book.setPublisherID(123);
		book.setRestNum(21);
		book.setTotalSell(432);
		book.setSize("12*12");
		bookDAO.save(book);
		//helloWorldService.addNew();
		return "success";
	}

	public BookDAO getBookDAO() {
		return bookDAO;
	}

	public void setBookDAO(BookDAO bookdao) {
		this.bookDAO = bookdao;
	}
	
	
	
}