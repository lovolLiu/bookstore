package com.bookstore.service.impl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.bookstore.dao.AddressDAO;
import com.bookstore.dao.BookDAO;
import com.bookstore.dao.BuyItemDAO;
import com.bookstore.dao.OrderDAO;
import com.bookstore.dao.UserDAO;
import com.bookstore.domain.Address;
import com.bookstore.domain.Book;
import com.bookstore.domain.BuyItem;
import com.bookstore.domain.Order;
import com.bookstore.domain.User;
import com.bookstore.service.PersonalInfoService;

/**
 * @author Chang Su
 * @description 个人订单，个人信息，地址簿Service实现
 * @modify
 * @modifyDate
 */
public class PersonalInfoServiceImpl implements PersonalInfoService{
	
	OrderDAO orderDAO;
	UserDAO userDAO;
	AddressDAO addressDAO;
	BuyItemDAO buyItemDAO;
	BookDAO bookDAO;
	
	@Override
	public boolean generateOrder(Order order) {
		orderDAO.save(order);
		return true;
	}

	@Override
	public boolean deleteOrder(int orderID) {
		Order order = orderDAO.findById(orderID);
		if(order != null){
			orderDAO.delete(orderID);
			return true;
		}
		return false;
	}

	/**
	 * 2 - 已取消
	 */
	@Override
	public boolean cancelOrder(int orderID) {
		Order order = orderDAO.findById(orderID);
		order.setStats(2);
		orderDAO.update(order);
		return true;
	}

	@Override
	public List<Order> getAllOrder(int userID) {
		return orderDAO.findByUserID(userID);
	}

	/**
	 * 1 - 已付款
	 */
	@Override
	public List<Order> getPaidOrder(int userID) {
		return orderDAO.findByUserIDandStats(1, userID);
	}

	/**
	 * 0 - 未付款
	 */
	@Override
	public List<Order> getUnpaidOrder(int userID) {
		return orderDAO.findByUserIDandStats(0, userID);
	}

	@Override
	public List<Order> getCanceledOrder(int userID) {
		return orderDAO.findByUserIDandStats(2, userID);
	}
	
	/**
	 * 3个月内订单
	 */
	@Override
	public List<Order> getLatestOrder(int userID) {
		Timestamp currentDate = new Timestamp(new Date().getTime()); 
		Calendar cal = Calendar.getInstance();   
		cal.setTime(currentDate);   
		cal.add(Calendar.MONTH,-1); 
		Timestamp beforeThreeMonth = new Timestamp(cal.getTimeInMillis());
		List<Order> allOrderList = this.getAllOrder(userID);
		List<Order> latestOrderList = new ArrayList<Order>();
		for(Order order: allOrderList){
			if (order.getBuyTime().after(beforeThreeMonth))
				latestOrderList.add(order);
		}
		return latestOrderList;
	}
 
	@Override
	public List<Book> getUnappriseBook(int userID) {
		List<Book> bookList = new ArrayList<Book>();
		List<Order> personalOrderList = orderDAO.findByUserIDandStats(userID,1);
		for (int i = 0; i < personalOrderList.size(); i++){
			List<BuyItem> buyItemList = buyItemDAO.findNotApprise(personalOrderList.get(i).getOrderID());
			for(int j = 0; j < buyItemList.size(); j++){
				int bookId = buyItemList.get(j).getBookID();
				Book book = bookDAO.findByID(bookId);
				if (!bookList.contains(book)){
					bookList.add(book);
				}
			}
		}
		return bookList;
	}

	@Override
	public User UserInfo(int userID) {
		return userDAO.findById(userID);
	}

	@Override
	public List<Address> getAddress(int userID) {
		return addressDAO.findByUserID(userID);
	}

	@Override
	public List<Book> getPersonalBookList(int userID) {
		List<Book> bookList = new ArrayList<Book>();
		List<Order> personalOrderList = orderDAO.findByUserIDandStats(1,userID);
		// for - each
		for (int i = 0; i < personalOrderList.size(); i++){
			List<BuyItem> buyItemList = buyItemDAO.findByOrderID(personalOrderList.get(i).getOrderID());
			for(int j = 0; j < buyItemList.size(); j++){
				int bookId = buyItemList.get(j).getBookID();
				Book book = bookDAO.findByID(bookId);
				if (!bookList.contains(book)){
					bookList.add(book);
				}
			}
		}
		return bookList;
	}
	
	public OrderDAO getOrderDAO() {
		return orderDAO;
	}

	public void setOrderDAO(OrderDAO orderDAO) {
		this.orderDAO = orderDAO;
	}

	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public AddressDAO getAddressDAO() {
		return addressDAO;
	}

	public void setAddressDAO(AddressDAO addressDAO) {
		this.addressDAO = addressDAO;
	}

	public BuyItemDAO getBuyItemDAO() {
		return buyItemDAO;
	}

	public void setBuyItemDAO(BuyItemDAO buyItemDAO) {
		this.buyItemDAO = buyItemDAO;
	}

	public BookDAO getBookDAO() {
		return bookDAO;
	}

	public void setBookDAO(BookDAO bookDAO) {
		this.bookDAO = bookDAO;
	}

}
