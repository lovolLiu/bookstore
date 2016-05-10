package com.bookstore.service.impl;

import java.util.ArrayList;
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
	public List<Order> getAllOrder(int userID) {
		return orderDAO.findByUserID(userID);
	}

	@Override
	public List<Order> getPaidOrder(int userID) {
		return orderDAO.findByUserIDandStats(userID, 1);
	}

	@Override
	public List<Order> getUnpaidOrder(int userID) {
		return orderDAO.findByUserIDandStats(userID, 0);
	}

	@Override
	public List<Order> getCanceledOrder(int userID) {
		return orderDAO.findByUserIDandStats(userID, 2);
	}

	@Override
	public List<Book> getUnappriseBook(int userID) {
		List<Book> bookList = new ArrayList<Book>();
		List<Order> personalOrderList = orderDAO.findByUserIDandStats(1,userID);
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

	@Override
	public boolean deleteOrder(int orderID) {
		Order order = orderDAO.findById(orderID);
		if(order != null){
			orderDAO.delete(orderID);
			return true;
		}
		return false;
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
