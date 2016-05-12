package com.bookstore.action;


import java.util.List;

import com.bookstore.domain.Address;
import com.bookstore.service.AddressService;
import com.bookstore.service.BuyService;
import com.bookstore.service.CartService;
import com.bookstore.service.ConvertorService;
import com.bookstore.util.DivOrder;

public class SubmitOrderAction {
	
	//in
	Integer userID = 1;
	List<Integer> buyItemIDList;
	Integer addressID;
	
	//out
	Address address;
	DivOrder divOrder;
	Double totalPrice;
	
	//IOC Service
	BuyService buyService;
	CartService cartService;
	ConvertorService convertorService;
	AddressService addressService;

	public String execute(){
		//建立订单
		Integer orderID = buyService.createOrder(buyItemIDList, userID, addressID);
		
		divOrder = convertorService.orderIDToDivOrder(orderID);
		address = addressService.selectAddress(addressID);
		totalPrice = convertorService.calculateTotalPrice(divOrder.getOrderItemList());
		
		//最后，如果这些buyItem来自购物车，需要将这些项从购物车中清除.
		for(Integer buyItemID : buyItemIDList){
			cartService.deleteCartItem(buyItemID);
		}
		return "success";
	}

	public List<Integer> getBuyItemIDList() {
		return buyItemIDList;
	}

	public void setBuyItemIDList(List<Integer> buyItemIDList) {
		this.buyItemIDList = buyItemIDList;
	}

	public Integer getAddressID() {
		return addressID;
	}

	public void setAddressID(Integer addressID) {
		this.addressID = addressID;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public DivOrder getDivOrder() {
		return divOrder;
	}

	public void setDivOrder(DivOrder divOrder) {
		this.divOrder = divOrder;
	}

	public Double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public BuyService getBuyService() {
		return buyService;
	}

	public void setBuyService(BuyService buyService) {
		this.buyService = buyService;
	}

	public CartService getCartService() {
		return cartService;
	}

	public void setCartService(CartService cartService) {
		this.cartService = cartService;
	}

	public ConvertorService getConvertorService() {
		return convertorService;
	}

	public void setConvertorService(ConvertorService convertorService) {
		this.convertorService = convertorService;
	}

	public AddressService getAddressService() {
		return addressService;
	}

	public void setAddressService(AddressService addressService) {
		this.addressService = addressService;
	}

	
	
	
	
	
}
