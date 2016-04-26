package com.bookstore.domain;

public class CartItem {
	private Integer cartItemID;
	
	private Integer buyItemID;
	private Integer userID;
	
	public Integer getBuyItemID() {
		return buyItemID;
	}

	public void setBuyItemID(Integer buyItemID) {
		this.buyItemID = buyItemID;
	}

	public Integer getUserID() {
		return userID;
	}

	public void setUserID(Integer userID) {
		this.userID = userID;
	}

	public Integer getCartItemID() {
		return cartItemID;
	}

	public void setCartItemID(Integer cartItemID) {
		this.cartItemID = cartItemID;
	}
	
}
