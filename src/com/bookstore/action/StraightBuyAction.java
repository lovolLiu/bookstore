package com.bookstore.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.bookstore.domain.BuyItem;
import com.bookstore.service.BuyService;
import com.opensymphony.xwork2.ActionContext;


public class StraightBuyAction {
	
	//in
	Integer bookID;
	Integer num;
	
	//out
	List<Integer> buyItemIDList;
	
	//IOC Service
	BuyService buyService;
	
	
	public String execute(){
		Map session = ActionContext.getContext().getSession();
		Integer userID = (Integer) session.get("userID");
		Integer buyItemID = buyService.createBuyItem(userID, bookID, num);
		buyItemIDList = new ArrayList();
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
