package com.bookstore.action;

import java.util.List;

import com.bookstore.domain.*;
import com.bookstore.service.BookDetailService;
import com.bookstore.service.ConvertorService;
import com.bookstore.service.SelectBookService;
import com.bookstore.util.DivBook;

/**
 * 
 * @author Xintong Liu
 * @description 书目详情和书的个性推荐
 * 
 */

public class BookDetailAction {
	Integer bookID;
	BookDetailService bookDetailService;
	SelectBookService selectBookService;
	ConvertorService convertorService;
	
	
	Book book;
	DivBook divBook;
	Publisher publisher;
	int bookScore = 0;
	int totalScore=0;
	List<Apprise> appriseList;
	List<Book> relatedBookList;
	List<Book> hotestBookList;
	List<Book> newestBookList;
	List<Book> personalFindByAuthorBookList;
	List<BookType> typeList;
	List<DivBook> relatedDivBookList;
	List<DivBook> hotestDivBookList;
	List<DivBook> newestDivBookList;
	List<DivBook> personalFindByAuthorDivBookList;

	//显示详情
	public String initBookDetailExecute(){
		return "success";
		
	}
	
	public String execute(){
		book = bookDetailService.getBookInfo(bookID);
		publisher = bookDetailService.getBookPublisher(bookID);
		appriseList = bookDetailService.getAppriseList(bookID);
		if(appriseList.size() ==0){
			bookScore  = 0;
		}else{
		for(int i=0; i< appriseList.size();i++){
			totalScore += appriseList.get(i).getScore();
			}
		bookScore = totalScore/appriseList.size();
		}
		hotestBookList = selectBookService.selectHottestBook();
		hotestDivBookList = convertorService.bookIDToDivBook(hotestBookList);
		System.out.println(hotestDivBookList.get(bookID).getURL());
		
	
		newestBookList = selectBookService.selectNewestBook();
		newestDivBookList = convertorService.bookIDToDivBook(newestBookList);

		
		personalFindByAuthorBookList = selectBookService.selectPersonalBookByAuthor(book.getAuthor());
		personalFindByAuthorDivBookList = convertorService.bookIDToDivBook(personalFindByAuthorBookList);

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

	public ConvertorService getConvertorService() {
		return convertorService;
	}

	public void setConvertorService(ConvertorService convertorService) {
		this.convertorService = convertorService;
	}

	public DivBook getDivBook() {
		return divBook;
	}

	public void setDivBook(DivBook divBook) {
		this.divBook = divBook;
	}

	public List<DivBook> getRelatedDivBookList() {
		return relatedDivBookList;
	}

	public void setRelatedDivBookList(List<DivBook> relatedDivBookList) {
		this.relatedDivBookList = relatedDivBookList;
	}

	public List<DivBook> getHotestDivBookList() {
		return hotestDivBookList;
	}

	public void setHotestDivBookList(List<DivBook> hotestDivBookList) {
		this.hotestDivBookList = hotestDivBookList;
	}

	public List<DivBook> getNewestDivBookList() {
		return newestDivBookList;
	}

	public void setNewestDivBookList(List<DivBook> newestDivBookList) {
		this.newestDivBookList = newestDivBookList;
	}

	public List<Book> getPersonalFindByAuthorBookList() {
		return personalFindByAuthorBookList;
	}

	public void setPersonalFindByAuthorBookList(
			List<Book> personalFindByAuthorBookList) {
		this.personalFindByAuthorBookList = personalFindByAuthorBookList;
	}

	public List<DivBook> getPersonalFindByAuthorDivBookList() {
		return personalFindByAuthorDivBookList;
	}

	public void setPersonalFindByAuthorDivBookList(
			List<DivBook> personalFindByAuthorDivBookList) {
		this.personalFindByAuthorDivBookList = personalFindByAuthorDivBookList;
	}



	
}
