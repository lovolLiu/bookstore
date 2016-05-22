package com.bookstore.action;

import java.util.ArrayList;
import java.util.List;

import com.bookstore.domain.Address;
import com.bookstore.domain.Book;
import com.bookstore.domain.BuyItem;
import com.bookstore.domain.Order;
import com.bookstore.service.ConvertorService;
import com.bookstore.service.PersonalInfoService;
import com.bookstore.util.DivBook;
import com.bookstore.util.DivOrder;

/**
 * @author Chang Su
 * @description 用户个人主页相关Action实现:订单的取消与删除，个人订单的显示，评论，用户信息，地址
 * @modify
 * @modifyDate
 */
public class UserAction {
	//From userinfo.jsp
	
	//To userinfo.jsp -- dataType: json
	List<DivOrder> divOrderList;	//To order-detail.jsp
	List<DivBook> unapprisedList;
	Integer paidNum;
	Integer unpaidNum;
	Integer unapprisedNum;
	String result;
	
	//To changepassword function
	String oldpassword;
	String newpassword;
	String newemail;
	
	//To myAddress.jsp
	List<Address> addressList;
	
	PersonalInfoService personalInfoService;
	ConvertorService convertorService;
	
	
	///////////////////////////
	Integer userID = 1;
	
	public String isPasswordValid(){
		if(personalInfoService.isPasswordValid(userID, oldpassword))
			result = "success";
		else
			result = "fail";
		return result;
	}
	
	public String modifyPassword(){
		if(personalInfoService.modifyPassword(userID, newpassword))
			result = "success";
		else
			result = "false";
		return result;
	}
	
	public String modifyEmail(){
		if(personalInfoService.modifyEmail(userID, newemail))
			result = "success";
		else
			result = "false";
		return result;
	}
	
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
	
	public String showUnapprisedBookList(){
		List<Book> bookList = personalInfoService.getUnappriseBook(userID);
		unapprisedList = convertorService.bookIDToDivBook(bookList);
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
	
	public String getOldpassword() {
		return oldpassword;
	}
	
	public void setOldpassword(String oldpassword) {
		this.oldpassword = oldpassword;
	}
	
	public String getNewpassword() {
		return newpassword;
	}
	
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
	public String getResult() {
		return result;
	}
	
	public void setResult(String result) {
		this.result = result;
	}

	public String getNewemail() {
		return newemail;
	}

	public void setNewemail(String newemail) {
		this.newemail = newemail;
	}

	public List<DivBook> getUnapprisedList() {
		return unapprisedList;
	}

	public void setUnapprisedList(List<DivBook> unapprisedList) {
		this.unapprisedList = unapprisedList;
	}
	
}
