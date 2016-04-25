package com.bookstore.domain;

import java.sql.Timestamp;

public class Order {
	private Integer orderID;
	private Integer stats;
	private Timestamp buyTime;
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
