package com.bookstore.action;

import java.util.ArrayList;
import java.util.List;

import com.bookstore.domain.*;
import com.bookstore.service.BookTypeService;
import com.bookstore.service.ConvertorService;
import com.bookstore.service.SearchService;
import com.bookstore.service.SelectBookService;
import com.bookstore.util.DivBook;

public class SearchAction {
	String keyword = "1";
	Integer pageNo = 1;
	Integer tag = 0; //0表示按书名 1表示按出版社 2表示按书的作者 进行搜索
	SearchService searchService;
	List<Book> bookList;
	List<DivBook> divBook ;
	ConvertorService convertorService;
	
	
	
	Integer typeID;
	BookTypeService bookTypeService;
	List<BookType> btList;

	List<DivBook> divBookList;
	
	Integer bookID;
	SelectBookService selectBookService;
	List<Book> relatedBookList;
	List<Book> hotestBookList;
	List<Book> newestBookList;
	List<Book> personalFindByAuthorBookList;
	List<BookType> typeList;
	List<DivBook> relatedDivBookList;
	List<DivBook> hotestDivBookList;
	List<DivBook> newestDivBookList;
	List<DivBook> personalFindByAuthorDivBookList;
	
	List<Integer> navPageTag;
	Integer pageCount;
	
	//获得对应类别的书籍
	public List<DivBook> getSortBookList(){
		List<Book> bookList = bookTypeService.getBookByBookType(typeID);
		divBookList = convertorService.bookIDToDivBook(bookList);
		return divBookList;
	}
	//选择所有图书
	public List<Book> searchAllBook(){
		List<Book> list;
		System.out.println("222222333333");
		list = searchService.searchAllBook();
		return list;
	}
	//选择对应搜索的图书
	public List<Book> searchBookList(){
		List<Book> list;
		if(tag == 0){
			System.out.println("123444444444");
			list = searchService.searchByBookName(keyword);
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
	//执行搜索action
	 public String execute(){
		 
		 if(searchBookList() != null){
			 hotestBookList = selectBookService.selectHottestBook();
			 hotestDivBookList = convertorService.bookIDToDivBook(hotestBookList);
				
			
			 newestBookList = selectBookService.selectNewestBook();
			 newestDivBookList = convertorService.bookIDToDivBook(newestBookList);
			 
			 bookList = searchBookList();
			 
			 //这里的divBook其实是个list
			 List<DivBook> allDivBookList = convertorService.bookIDToDivBook(bookList);
			 
			 //根据这个divBookList计算出应该有多少页
			 pageCount = allDivBookList.size()/12;
			 if(allDivBookList.size()%12 > 0) pageCount++;
			 
			 navPageTag = new ArrayList();
			 for(int i=1;i<=pageCount;i++){
				 navPageTag.add(i);
			 }
			 
			 
			 
			 //根据pageNo从divBook中选择出应该返回的页
			 //pageNo默认是1，因此范围是[1-1, 1*12-1]
			 divBook = new ArrayList();
			 for(int i=(pageNo-1)*12; i<=pageNo*12-1; i++){
				 if(allDivBookList.size() <= i) break;
				 divBook.add(allDivBookList.get(i));
			 }
			 
			 btList = bookTypeService.getBookTypeList();
			 return "success";
		 }
			 
		 else return "false";
	 }
	 //显示所有书目的action
	 public String initSearchExecute(){
		 //init findall
		 
		 //热搜和畅销
		 hotestBookList = selectBookService.selectHottestBook();
		 hotestDivBookList = convertorService.bookIDToDivBook(hotestBookList);
			
		
		 newestBookList = selectBookService.selectNewestBook();
		 newestDivBookList = convertorService.bookIDToDivBook(newestBookList);
		 
		 bookList = searchAllBook();
		 
		 
		 //这里的divBook其实是个list
		 List<DivBook> allDivBookList = convertorService.bookIDToDivBook(bookList);
		 
		 //根据这个divBookList计算出应该有多少页
		 pageCount = allDivBookList.size()/12;
		 if(allDivBookList.size()%12 > 0) pageCount++;
		 
		 navPageTag = new ArrayList();
		 for(int i=1;i<=pageCount;i++){
			 navPageTag.add(i);
		 }
		 
		 //根据pageNo从divBook中选择出应该返回的页
		 //pageNo默认是1，因此范围是[1-1, 1*12-1]
		 divBook = new ArrayList();
		 for(int i=(pageNo-1)*12; i<=pageNo*12-1; i++){
			 if(allDivBookList.size() <= i) break;
			 divBook.add(allDivBookList.get(i));
		 }
		 

		 btList = bookTypeService.getBookTypeList();
//		 for(int i =0;i <divBook.size();i++){
//			 System.out.println(divBook.get(i).getBookID()+" "+divBook.get(i).getPictureID());
//		 }
		 
		 return "success";
	 }
	 
	//显示对应类别书目的action
		 public String sortSearchExecute(){
			 //init findall
			 hotestBookList = selectBookService.selectHottestBook();
			 hotestDivBookList = convertorService.bookIDToDivBook(hotestBookList);
				
			
			 newestBookList = selectBookService.selectNewestBook();
			 newestDivBookList = convertorService.bookIDToDivBook(newestBookList);
			 
			 divBook = getSortBookList();
			 btList = bookTypeService.getBookTypeList();
			 
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
	public BookTypeService getbookTypeService() {
		return bookTypeService;
	}
	public void setbookTypeService(BookTypeService bookTypeService) {
		this.bookTypeService = bookTypeService;
	}
	public List<BookType> getBtList() {
		return btList;
	}
	public void setBtList(List<BookType> btList) {
		this.btList = btList;
	}

	public BookTypeService getBookTypeService() {
		return bookTypeService;
	}

	public void setBookTypeService(BookTypeService bookTypeService) {
		this.bookTypeService = bookTypeService;
	}

	public ConvertorService getconvertorService() {
		return convertorService;
	}

	public void setconvertorService(ConvertorService convertorService) {
		this.convertorService = convertorService;
	}

	public List<DivBook> getDivBookList() {
		return divBookList;
	}

	public void setDivBookList(List<DivBook> divBookList) {
		this.divBookList = divBookList;
	}
	public Integer getTypeID() {
		return typeID;
	}
	public void setTypeID(Integer typeID) {
		this.typeID = typeID;
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
	public List<Book> getPersonalFindByAuthorBookList() {
		return personalFindByAuthorBookList;
	}
	public void setPersonalFindByAuthorBookList(
			List<Book> personalFindByAuthorBookList) {
		this.personalFindByAuthorBookList = personalFindByAuthorBookList;
	}
	public List<BookType> getTypeList() {
		return typeList;
	}
	public void setTypeList(List<BookType> typeList) {
		this.typeList = typeList;
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
	public List<DivBook> getPersonalFindByAuthorDivBookList() {
		return personalFindByAuthorDivBookList;
	}
	public void setPersonalFindByAuthorDivBookList(
			List<DivBook> personalFindByAuthorDivBookList) {
		this.personalFindByAuthorDivBookList = personalFindByAuthorDivBookList;
	}
	public Integer getBookID() {
		return bookID;
	}
	public void setBookID(Integer bookID) {
		this.bookID = bookID;
	}
	public SelectBookService getSelectBookService() {
		return selectBookService;
	}
	public void setSelectBookService(SelectBookService selectBookService) {
		this.selectBookService = selectBookService;
	}
	public List<Integer> getNavPageTag() {
		return navPageTag;
	}
	public void setNavPageTag(List<Integer> navPageTag) {
		this.navPageTag = navPageTag;
	}
	public Integer getPageCount() {
		return pageCount;
	}
	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}



	
	

}
	
