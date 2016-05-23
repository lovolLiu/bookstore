package com.bookstore.action;

import java.util.List;

import com.bookstore.domain.*;
import com.bookstore.service.ConvertorService;
import com.bookstore.service.SearchService;
import com.bookstore.util.DivBook;

public class SearchAction {
	String keyword = "1";
	Integer pageNo;
	Integer tag = 0; //0表示按书名 1表示按出版社 2表示按书的作者 进行搜索
	SearchService searchService;
	List<Book> bookList;
	List<DivBook> divBook ;
	ConvertorService convertorService;
	public List<Book> searchAllBook(){
		List<Book> list;
		System.out.println("222222333333");
		list = searchService.searchAllBook();
		return list;
	}
	public List<Book> searchBookList(){
		List<Book> list;
		if(tag == 0){
			System.out.println("123444444444");
			list = searchService.searchByBookName(keyword);
			System.out.println(list.get(0).getBookName());
			if(list != null)
				return list;
			}
		else if(tag == 2){
			list = searchService.searchByAuthor(keyword);
			if(list != null)
				return list;
			}
		else if(tag == 1){
			list = searchService.searchByPublisher(keyword);
			if(list != null)
				return list;
		}
		return null;
	}
	 public Integer pageSum(){
		 int sum = 1;
		 int num = 0;
		 for(Book i : searchBookList()){
			 sum++;
		 }
		 sum = num/9;
		 return sum;
	 }
	
	 public String execute(){
		 
		 if(searchBookList() != null){
			 bookList = searchBookList();
			 divBook = convertorService.bookIDToDivBook(bookList);
			 return "success";
		 }
			 
		 else return "false";
	 }
	 //显示所有书目的action
	 public String initSearchExecute(){
		 //init findall
		 
		 bookList = searchAllBook();
		 divBook = convertorService.bookIDToDivBook(bookList);
//		 for(int i =0;i <divBook.size();i++){
//			 System.out.println(divBook.get(i).getBookID()+" "+divBook.get(i).getPictureID());
//		 }
		 
		 return "success";
	 }
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public Integer getPageNo() {
		return pageNo;
	}
	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}
	public Integer getTag() {
		return tag;
	}
	public void setTag(Integer tag) {
		this.tag = tag;
	}
	public SearchService getSearchService() {
		return searchService;
	}
	public void setSearchService(SearchService searchService) {
		this.searchService = searchService;
	}
	public List<Book> getBookList() {
		return bookList;
	}
	public void setBookList(List<Book> bookList) {
		this.bookList = bookList;
	}
	public List<DivBook> getDivBook() {
		return divBook;
	}
	public void setDivBook(List<DivBook> divBook) {
		this.divBook = divBook;
	}
	public ConvertorService getConvertorService() {
		return convertorService;
	}
	public void setConvertorService(ConvertorService convertorService) {
		this.convertorService = convertorService;
	}
	 
	

}
	
