package com.bookstore.action;

import java.util.List;

import com.bookstore.domain.*;
import com.bookstore.service.BookDetailService;
import com.bookstore.service.SelectBookService;

public class BookDetailAction {
	Integer bookID;
	BookDetailService bookDetailService;
	SelectBookService selectBookService;
	
	
	Book book;
	Publisher publisher;
	int bookScore = 0;
	int totalScore=0;
	List<Apprise> appriseList;
	List<Book> relatedBookList;
	List<Book> hotestBookList;
	List<Book> newestBookList;
	List<BookType> typeList;

	
	
	public String execute(){
		book = bookDetailService.getBookInfo(9);
		publisher = bookDetailService.getBookPublisher(9);

		appriseList = bookDetailService.getAppriseList(9);
		for(int i=0; i< appriseList.size();i++){
			totalScore += appriseList.get(i).getScore();
		}
		bookScore = totalScore/appriseList.size();
		//relatedBookList = selectService.selectPersonalBook();
        
		hotestBookList = selectBookService.selectHottestBook();
	
		newestBookList = selectBookService.selectNewestBook();

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



	public Publisher getPublisher() {
		return publisher;
	}

	public void setPublisher(Publisher publisher) {
		this.publisher = publisher;
	}


	public SelectBookService getSelectBookService() {
		return selectBookService;
	}

	public void setSelectBookService(SelectBookService selectBookService) {
		this.selectBookService = selectBookService;
	}

	public int getBookScore() {
		return bookScore;
	}

	public void setBookScore(int bookScore) {
		this.bookScore = bookScore;
	}

	public int getTotalScore() {
		return totalScore;
	}

	public void setTotalScore(int totalScore) {
		this.totalScore = totalScore;
	}



	
}
