package com.bookstore.service;

import java.util.List;

import com.bookstore.domain.*;

public interface PersonalInfoService {
	public List<Order> getAllOrder(int userID);
	
	public List<Order> getPaidOrder(int userID);
	
	public List<Order> getUnpaidOrder(int userID);
	
	public List<Order> getCanceledOrder(int userID);
	
	public List<Book> getUnappriseBook(int userID);
	
	public User UserInfo(int userID);
	
	public List<Address> getAddress(int userID);
	
	public List<Book> getPersonalBookList(int userID);
}
