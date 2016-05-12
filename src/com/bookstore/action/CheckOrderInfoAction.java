package com.bookstore.action;

import java.util.List;

import com.bookstore.domain.Address;
import com.bookstore.service.ConvertorService;
import com.bookstore.service.PersonalInfoService;
import com.bookstore.util.TrCartItem;

public class CheckOrderInfoAction {
	
	//session
	Integer userID = 1;
	
	//in
	List<Integer> buyItemIDList;
	
	//out
	List<Address> addressList;
	List<TrCartItem> trOrderItemList;
	Double totalPrice;
	
	//IOC Service
	ConvertorService convertorService;
	PersonalInfoService personalInfoService;
	
	
	public String execute(){
		trOrderItemList = convertorService.buyItemIDListToTrCartList(buyItemIDList);
		addressList = personalInfoService.getAddress(userID);
		totalPrice = convertorService.calculateTotalPrice(trOrderItemList);
		return "success";
	}

	public List<Integer> getBuyItemIDList() {
		return buyItemIDList;
	}

	public void setBuyItemIDList(List<Integer> buyItemIDList) {
		this.buyItemIDList = buyItemIDList;
	}

	public List<Address> getAddressList() {
		return addressList;
	}

	public void setAddressList(List<Address> addressList) {
		this.addressList = addressList;
	}

	public Double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public List<TrCartItem> getTrOrderItemList() {
		return trOrderItemList;
	}

	public void setTrOrderItemList(List<TrCartItem> trOrderItemList) {
		this.trOrderItemList = trOrderItemList;
	}

	public ConvertorService getConvertorService() {
		return convertorService;
	}

	public void setConvertorService(ConvertorService convertorService) {
		this.convertorService = convertorService;
	}

	public PersonalInfoService getPersonalInfoService() {
		return personalInfoService;
	}

	public void setPersonalInfoService(PersonalInfoService personalInfoService) {
		this.personalInfoService = personalInfoService;
	}
	
	
	
	
}
