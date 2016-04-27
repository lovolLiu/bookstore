package com.bookstore.action;

import java.util.ArrayList;
import java.util.List;

import com.bookstore.service.BuyService;

public class SubmitOrderAction {
	
	Integer userID = 1;
	
	Integer buyItemID;
	Integer addressID = 4;
	
	
	Integer orderID;
	
	BuyService buyService;
	
	public String execute(){
		List<Integer> buyItemIDList = new ArrayList();
		buyItemIDList.add(buyItemID);
		orderID = buyService.createOrder(buyItemIDList, userID, addressID);
		return "success";
	}

	public Integer getUserID() {
		return userID;
	}

	public void setUserID(Integer userID) {
		this.userID = userID;
	}

	public Integer getBuyItemID() {
		return buyItemID;
	}

	public void setBuyItemID(Integer buyItemID) {
		this.buyItemID = buyItemID;
	}

	public Integer getAddressID() {
		return addressID;
	}

	public void setAddressID(Integer addressID) {
		this.addressID = addressID;
	}

	public Integer getOrderID() {
		return orderID;
	}

	public void setOrderID(Integer orderID) {
		this.orderID = orderID;
	}

	public BuyService getBuyService() {
		return buyService;
	}

	public void setBuyService(BuyService buyService) {
		this.buyService = buyService;
	}
	
	
	
	
}
