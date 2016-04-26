package com.bookstore.domain;

import java.sql.Timestamp;

public class BuyItem {
	int buyItemID;
	int buyNum;
	double currentPrice;
	Timestamp boughtDate;
	boolean hasApprise;
	Integer orderID;
	
	public int getBuyItemID() {
		return buyItemID;
	}
	public void setBuyItemID(int buyItemID) {
		this.buyItemID = buyItemID;
	}
	public int getBuyNum() {
		return buyNum;
	}
	public void setBuyNum(int buyNum) {
		this.buyNum = buyNum;
	}
	public double getCurrentPrice() {
		return currentPrice;
	}
	public void setCurrentPrice(double currentPrice) {
		this.currentPrice = currentPrice;
	}
	public Timestamp getBoughtDate() {
		return boughtDate;
	}
	public void setBoughtDate(Timestamp boughtDate) {
		this.boughtDate = boughtDate;
	}
	public boolean isHasApprise() {
		return hasApprise;
	}
	public void setHasApprise(boolean hasApprise) {
		this.hasApprise = hasApprise;
	}
	
	
}
