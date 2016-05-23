package com.bookstore.action;

import java.util.ArrayList;
import java.util.List;

import com.bookstore.domain.Book;
import com.bookstore.domain.BookType;
import com.bookstore.service.BookTypeService;
import com.bookstore.service.ConvertorService;
import com.bookstore.util.DivBook;


/**
 * @author Chang Su
 * @description BookType Action实现
 * @modify
 * @modifyDate
 */
public class BookTypeAction {
	List<BookType> btList;
	List<DivBook> divBookList;
	List<Book> relatedBookList;
	
	Integer bookTypeID;
	Integer bookID;
	
	BookTypeService bookTypeService;
	ConvertorService convertorService;
		
	public String showBTList(){
		btList = bookTypeService.getBookTypeList();
		return "success";
	}
	
	/**
	 * @in: bookTypeID
	 * @return
	 */
	public String showBookList(){
		List<Book> bookList = bookTypeService.getBookByBookType(bookTypeID);
		divBookList = convertorService.bookIDToDivBook(bookList);
		return "success";
	}
	
	/**
	 * @in: bookID
	 * @return
	 */
	public String showRelatedBookList(){
		relatedBookList = new ArrayList<Book>();
		List<BookType> bookTypeList = bookTypeService.getBookTypeListByBook(bookID);
		for(BookType bt:bookTypeList){
			List<Book> bookList = bookTypeService.getBookByBookType(bt.getTypeID());
			for(Book b:bookList){
				int bId = b.getBookID();
				int hasBook = 0;
				for(Book bookinList:relatedBookList){
					if(bId == bookinList.getBookID()){
						hasBook = 1;
						break;
					}
				}
				if(hasBook == 0){
					relatedBookList.add(b);
				}
			}
		}
		divBookList = convertorService.bookIDToDivBook(relatedBookList);
		return "success";
	}

	public List<BookType> getBtList() {
		return btList;
	}

	public void setBtList(List<BookType> btList) {
		this.btList = btList;
	}

	public List<DivBook> getDivBookList() {
		return divBookList;
	}

	public void setDivBookList(List<DivBook> divBookList) {
		this.divBookList = divBookList;
	}

	public List<Book> getRelatedBookList() {
		return relatedBookList;
	}

	public void setRelatedBookList(List<Book> relatedBookList) {
		this.relatedBookList = relatedBookList;
	}

	public Integer getBookTypeID() {
		return bookTypeID;
	}

	public void setBookTypeID(Integer bookTypeID) {
		this.bookTypeID = bookTypeID;
	}

	public Integer getBookID() {
		return bookID;
	}

	public void setBookID(Integer bookID) {
		this.bookID = bookID;
	}

	public BookTypeService getBookTypeService() {
		return bookTypeService;
	}

	public void setBookTypeService(BookTypeService bookTypeService) {
		this.bookTypeService = bookTypeService;
	}

	public ConvertorService getConvertorService() {
		return convertorService;
	}

	public void setConvertorService(ConvertorService convertorService) {
		this.convertorService = convertorService;
	}


	
	
	
	
}
