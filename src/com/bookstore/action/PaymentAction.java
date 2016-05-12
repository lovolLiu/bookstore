package com.bookstore.action;

import com.bookstore.service.BuyService;

public class PaymentAction {
	
	//in
	Integer orderID;
	
	//IOC Service
	BuyService buyService;
	
	public String execute(){
		buyService.payOrder(orderID);
		return "success";
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
