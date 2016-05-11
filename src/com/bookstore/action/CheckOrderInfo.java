package com.bookstore.action;

import java.util.List;

import com.bookstore.domain.Address;

public class CheckOrderInfo {
	
	//in
	List<Integer> buyItemIDList;
	
	//out 
	List<Address> addressList;
	List<TrOrderItem> trOrderList;
	Double totalPrice;
	
	public String execute(){
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

	public List<TrOrderItem> getTrOrderList() {
		return trOrderList;
	}

	public void setTrOrderList(List<TrOrderItem> trOrderList) {
		this.trOrderList = trOrderList;
	}

	public Double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	
	
	
}
