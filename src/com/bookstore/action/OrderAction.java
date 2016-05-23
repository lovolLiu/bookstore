package com.bookstore.action;

import com.bookstore.domain.Order;
import com.bookstore.service.ConvertorService;
import com.bookstore.service.PersonalInfoService;
import com.bookstore.util.DivOrder;

public class OrderAction {
	DivOrder divOrder;
	Integer orderID;
	
	PersonalInfoService personalInfoService;
	ConvertorService convertorService;
	
	public String getOrderDetail(){
		divOrder = convertorService.orderIDToDivOrder(orderID);
		return "success";
	}

	public DivOrder getDivOrder() {
		return divOrder;
	}

	public void setDivOrder(DivOrder divOrder) {
		this.divOrder = divOrder;
	}

	public Integer getOrderID() {
		return orderID;
	}

	public void setOrderID(Integer orderID) {
		this.orderID = orderID;
	}

	public PersonalInfoService getPersonalInfoService() {
		return personalInfoService;
	}

	public void setPersonalInfoService(PersonalInfoService personalInfoService) {
		this.personalInfoService = personalInfoService;
	}

	public ConvertorService getConvertorService() {
		return convertorService;
	}

	public void setConvertorService(ConvertorService convertorService) {
		this.convertorService = convertorService;
	}
	
	
}
