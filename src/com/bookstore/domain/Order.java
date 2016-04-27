package com.bookstore.domain;

import java.sql.Date;
import java.sql.Timestamp;

public class Order {
	private Integer orderID;
	private Integer stats;
	private Timestamp buyTime;
	
	private Integer userID;
	private Integer addressID;
	
	public Integer getUserID() {
		return userID;
	}
	public void setUserID(Integer userID) {
		this.userID = userID;
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
	public Integer getStats() {
		return stats;
	}
	public void setStats(Integer stats) {
		this.stats = stats;
	}
	public Timestamp getBuyTime() {
		return buyTime;
	}
	public void setBuyTime(Timestamp buyTime) {
		this.buyTime = buyTime;
	}
}
