package com.bookstore.action;

import java.util.List;

import com.bookstore.domain.BuyItem;
import com.bookstore.service.BuyService;


public class StraightBuyAction {
	
	//in
	Integer userID = 1;
	Integer bookID;
	Integer num;
	
	//out
	List<Integer> buyItemIDList;
	
	//IOC Service
	BuyService buyService;
	
	
	public String execute(){
		Integer buyItemID = buyService.createBuyItem(userID, bookID, num);
		buyItemIDList.add(buyItemID);
		return "success";
	}

	public Integer getBookID() {
		return bookID;
	}

	public void setBookID(Integer bookID) {
		this.bookID = bookID;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public List<Integer> getBuyItemIDList() {
		return buyItemIDList;
	}

	public void setBuyItemIDList(List<Integer> buyItemIDList) {
		this.buyItemIDList = buyItemIDList;
	}

	public BuyService getBuyService() {
		return buyService;
	}

	public void setBuyService(BuyService buyService) {
		this.buyService = buyService;
	}


	
}
