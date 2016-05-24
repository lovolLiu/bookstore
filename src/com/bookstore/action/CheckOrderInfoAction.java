package com.bookstore.action;

import java.text.DecimalFormat;
import java.util.List;
import java.util.Map;

import com.bookstore.domain.Address;
import com.bookstore.service.ConvertorService;
import com.bookstore.service.PersonalInfoService;
import com.bookstore.util.TrCartItem;
import com.opensymphony.xwork2.ActionContext;

public class CheckOrderInfoAction {
	
	
	//in
	List<Integer> buyItemIDList;
	
	//out
	List<Address> addressList;
	List<TrCartItem> trOrderItemList;
	String totalPrice;
	
	//IOC Service
	ConvertorService convertorService;
	PersonalInfoService personalInfoService;
	
	
	public String execute(){
		Map session = ActionContext.getContext().getSession();
		Integer userID = (Integer) session.get("userID");
		trOrderItemList = convertorService.buyItemIDListToTrCartList(buyItemIDList);
		addressList = personalInfoService.getAddress(userID);
		Double fTotalPrice = convertorService.calculateTotalPrice(trOrderItemList);
		DecimalFormat df = new DecimalFormat("0.00");
		totalPrice = df.format(fTotalPrice);
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

	public String getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	
	
	
}
