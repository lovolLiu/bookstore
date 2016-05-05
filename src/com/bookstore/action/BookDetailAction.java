package com.bookstore.action;

import java.util.List;

import com.bookstore.domain.*;
import com.bookstore.service.BookDetailService;
import com.bookstore.service.SelectBookService;

public class BookDetailAction {
	Integer bookID;
	BookDetailService bookDetailService;
	SelectBookService selectService;
	
	
	Book book;
	Publisher publisher;
	List<Apprise> appriseList;
	List<Book> relatedBookList;
	List<Book> hotestBookList;
	List<Book> newestBookList;
	List<BookType> typeList;
	
	public String execute(){
		book = bookDetailService.getBookInfo(9);
		publisher = bookDetailService.getBookPublisher(9);
		System.out.println("出版商"+publisher.getPublisherName());
		System.out.println("书名"+book.getBookName());
		appriseList = bookDetailService.getAppriseList(9);
		//relatedBookList = selectService.selectPersonalBook();
		//hotestBookList = selectService.selectHottestBook();
		//newestBookList = selectService.selectNewestBook();
		//typeList = selectService.getTypeList();
		return "success";
		
	}

	public Integer getBookID() {
		return bookID;
	}

	public void setBookID(Integer bookID) {
		this.bookID = bookID;
	}

	public BookDetailService getBookDetailService() {
		return bookDetailService;
	}

	public void setBookDetailService(BookDetailService bookDetailService) {
		this.bookDetailService = bookDetailService;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public List<Apprise> getAppriseList() {
		return appriseList;
	}

	public void setAppriseList(List<Apprise> appriseList) {
		this.appriseList = appriseList;
	}

	public List<Book> getRelatedBookList() {
		return relatedBookList;
	}

	public void setRelatedBookList(List<Book> relatedBookList) {
		this.relatedBookList = relatedBookList;
	}

	public List<Book> getHotestBookList() {
		return hotestBookList;
	}

	public void setHotestBookList(List<Book> hotestBookList) {
		this.hotestBookList = hotestBookList;
	}

	public List<Book> getNewestBookList() {
		return newestBookList;
	}

	public void setNewestBookList(List<Book> newestBookList) {
		this.newestBookList = newestBookList;
	}

	public List<BookType> getTypeList() {
		return typeList;
	}

	public void setTypeList(List<BookType> typeList) {
		this.typeList = typeList;
	}

	public SelectBookService getSelectService() {
		return selectService;
	}

	public void setSelectService(SelectBookService selectService) {
		this.selectService = selectService;
	}

	public Publisher getPublisher() {
		return publisher;
	}

	public void setPublisher(Publisher publisher) {
		this.publisher = publisher;
	}



	
}
