package com.bookstore.action;

import java.util.ArrayList;
import java.util.List;

import com.bookstore.domain.Address;
import com.bookstore.domain.Book;
import com.bookstore.domain.BuyItem;
import com.bookstore.domain.Order;
import com.bookstore.service.ConvertorService;
import com.bookstore.service.PersonalInfoService;
import com.bookstore.util.DivOrder;

/**
 * @author Chang Su
 * @description 用户个人主页相关Action实现
 * @modify
 * @modifyDate
 */
public class UserAction {
	//From userinfo.jsp
	
	//To userinfo.jsp -- dataType: json
	List<DivOrder> divOrderList;	//To order-detail.jsp
	Integer paidNum;
	Integer unpaidNum;
	Integer unapprisedNum;
	String result;
	
	//To myAddress.jsp
	List<Address> addressList;
	
	PersonalInfoService personalInfoService;
	ConvertorService convertorService;
	
	
	///////////////////////////
	Integer userID = 1;
	
	public String showPaidOrder() {
		List<Order> orderList = personalInfoService.getPaidOrder(userID);
		divOrderList = new ArrayList<DivOrder>();
		for(Order order: orderList){
			Integer orderId = order.getOrderID();
			List<BuyItem> buyItemList = convertorService.getBuyItemList(orderId);
			DivOrder divOrder = convertorService.buyItemListAddToDivOrder(buyItemList, orderId);
			divOrderList.add(divOrder);
		}
		return "success";
	}
	
	public String showOrderListAll(){
		List<Order> orderList = personalInfoService.getAllOrder(userID);
		divOrderList = new ArrayList<DivOrder>();
		for(Order order: orderList){
			Integer orderId = order.getOrderID();
			List<BuyItem> buyItemList = convertorService.getBuyItemList(orderId);
			DivOrder divOrder = convertorService.buyItemListAddToDivOrder(buyItemList, orderId);
			divOrderList.add(divOrder);
		}
		return "success";
	}

	public String showPaidOrderNumber() {
		List<Order> orderList = personalInfoService.getPaidOrder(userID);
		if(orderList.isEmpty())
			paidNum = 0;
		else paidNum = orderList.size();
		return "success";
	}
	
	public String showUnpaidOrderNumber() {
		List<Order> orderList = personalInfoService.getUnpaidOrder(userID);
		if(orderList.isEmpty())
			unpaidNum = 0;
		else unpaidNum = orderList.size();
		return "success";
	}
	
	public String showUnapprisedBooksNumber() {
		List<Book> bookList = personalInfoService.getUnappriseBook(userID);
		if(bookList.isEmpty())
			unapprisedNum = 0;
		else unapprisedNum = bookList.size();
		return "success";
	}
	
	public String showAddress(){
		addressList = personalInfoService.getAddress(userID);
		return "success";
	}
	
	public String showCanceledOrderList() {
		return "";
	}
	
	public List<DivOrder> getDivOrderList() {
		return divOrderList;
	}

	public void setDivOrderList(List<DivOrder> divOrderList) {
		this.divOrderList = divOrderList;
	}

	public List<Address> getAddressList() {
		return addressList;
	}

	public void setAddressList(List<Address> addressList) {
		this.addressList = addressList;
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

	public Integer getUserID() {
		return userID;
	}

	public void setUserID(Integer userID) {
		this.userID = userID;
	}

	public Integer getPaidNum() {
		return paidNum;
	}

	public void setPaidNum(Integer paidNum) {
		this.paidNum = paidNum;
	}

	public Integer getUnpaidNum() {
		return unpaidNum;
	}

	public void setUnpaidNum(Integer unpaidNum) {
		this.unpaidNum = unpaidNum;
	}

	public Integer getUnapprisedNum() {
		return unapprisedNum;
	}

	public void setUnapprisedNum(Integer unapprisedNum) {
		this.unapprisedNum = unapprisedNum;
	}
	
	public String getResult() {
		return result;
	}
	
	public void setResult(String result) {
		this.result = result;
	}
}
