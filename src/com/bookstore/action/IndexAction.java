package com.bookstore.action;

import java.util.ArrayList;
import java.util.List;

import com.bookstore.service.ConvertorService;
import com.bookstore.service.SelectBookService;
import com.bookstore.util.DivBook;

/**
 * @author Chang Su
 * @description 首页Action实现
 * @modify
 * @modifyDate
 */
public class IndexAction {
	List<DivBook> divBookList;
	List<DivBook> divBookListNewest;
	List<DivBook> divBookListHottest;
	
	ConvertorService convertorService;
	SelectBookService selectBookService;
	
	public String getCommendationForYou(){
		divBookListHottest = new ArrayList<DivBook>();
		divBookList = convertorService.bookIDToDivBook(selectBookService.selectRandomBook(3));
		divBookListNewest = convertorService.bookIDToDivBook(selectBookService.selectNewestBook());
		List<DivBook> tempHottest = convertorService.bookIDToDivBook(selectBookService.selectHottestBook());
		for(int i = 0; i < 6; i++){
			divBookListHottest.add(tempHottest.get(i));
		}
		return "success";
	}

	public List<DivBook> getDivBookList() {
		return divBookList;
	}

	public void setDivBookList(List<DivBook> divBookList) {
		this.divBookList = divBookList;
	}

	public ConvertorService getConvertorService() {
		return convertorService;
	}

	public void setConvertorService(ConvertorService convertorService) {
		this.convertorService = convertorService;
	}

	public SelectBookService getSelectBookService() {
		return selectBookService;
	}

	public void setSelectBookService(SelectBookService selectBookService) {
		this.selectBookService = selectBookService;
	}

	public List<DivBook> getDivBookListNewest() {
		return divBookListNewest;
	}

	public void setDivBookListNewest(List<DivBook> divBookListNewest) {
		this.divBookListNewest = divBookListNewest;
	}

	public List<DivBook> getDivBookListHottest() {
		return divBookListHottest;
	}

	public void setDivBookListHottest(List<DivBook> divBookListHottest) {
		this.divBookListHottest = divBookListHottest;
	}
	
	
}
