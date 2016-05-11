package com.bookstore.util;

import java.sql.Timestamp;
import java.util.List;

/**
 * @author Chang Su
 * @description 订单列表的div的数据封装对象
 * @modify
 * @modifyDate 
 */
public class DivOrder {
	// order property in userinfo.jsp
	Integer orderId;
	String consignee; // 收货人
	Double totalPrice;
	String orderStats;
	Timestamp dealTime;	// 交易时间
	
	List<TrCartItem> orderItemList;
	
//	// buyitem property in user info.jsp
//	String imageUrl;
//	// buyitem property in order-detail.jsp
//	String bookName;
//	String author;
//	Integer num;
//	Double buyItemPrice;
//	Double unitPrice;
	
	// address property in order-detail.jsp
	String tel; // 收货人电话
	String address;
	
	public Timestamp getDealTime() {
		return dealTime;
	}
	public void setDealTime(Timestamp dealTime) {
		this.dealTime = dealTime;
	}
	public Integer getOrderId() {
		return orderId;
	}
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public String getOrderStats() {
		return orderStats;
	}
	public void setOrderStats(String orderStats) {
		this.orderStats = orderStats;
	}
	public Double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getConsignee() {
		return consignee;
	}
	public void setConsignee(String consignee) {
		this.consignee = consignee;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public List<TrCartItem> getOrderItemList() {
		return orderItemList;
	}
	public void setOrderItemList(List<TrCartItem> orderItemList) {
		this.orderItemList = orderItemList;
	}
	
	
	
}
