package com.bookstore.service;

import java.util.List;

import com.bookstore.domain.*;

public interface PersonalInfoService {
	
	List<Order> getAllOrder(int userID);
	
	List<Order> getPaidOrder(int userID);
	
	List<Order> getUnpaidOrder(int userID);
	
	List<Order> getCanceledOrder(int userID);
	
	List<Order> getLatestOrder(int userID);
	
	List<Book> getUnappriseBook(int userID);
	
	User UserInfo(int userID);
	
	List<Address> getAddress(int userID);
	
	List<Book> getPersonalBookList(int userID);
	
	Order getOrderById(int orderID);
	
	List<BuyItem> findBuyItemByOrderID(int orderID);
	
	boolean updateBuyItem(BuyItem buyItem);
	
	boolean generateOrder(Order order);
	
	boolean deleteOrder(int orderID);
	
	boolean cancelOrder(int orderID);
	
	boolean isPasswordValid(int userID, String oldpassword);
	
	boolean modifyPassword(int userID, String newpassword);
	
	boolean modifyEmail(int userID, String newemail);
}
