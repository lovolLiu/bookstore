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
	
	BookTypeService btService;
	ConvertorService cvtService;
		
	public String getBTList(){
		btList = btService.getBookTypeList();
		return "success";
	}
	
	public String getBookList(){
		List<Book> bookList = btService.getBookByBookType(bookTypeID);
		divBookList = cvtService.bookIDToDivBook(bookList);
		return "success";
	}
	
	public String getRelatedBookList(){
		relatedBookList = new ArrayList<Book>();
		List<BookType> bookTypeList = btService.getBookTypeListByBook(bookID);
		for(BookType bt:bookTypeList){
			List<Book> bookList = btService.getBookByBookType(bt.getTypeID());
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
		divBookList = cvtService.bookIDToDivBook(relatedBookList);
		return "success";
	}
	
	
	
	
}
