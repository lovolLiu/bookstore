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

public class PersonalInfoServiceImpl implements PersonalInfoService{
	
	OrderDAO orderDao;
	UserDAO userDao;
	AddressDAO addressDao;
	BuyItemDAO buyItemDao;
	BookDAO bookDao;

	@Override
	public List<Order> getAllOrder(int userID) {
		return orderDao.findByUserID(userID);
	}

	@Override
	public List<Order> getPaidOrder(int userID) {
		return null;
	}

	@Override
	public List<Order> getUnpaidOrder(int userID) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Order> getCanceledOrder(int userID) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Book> getUnappriseBook(int userID) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User UserInfo(int userID) {
		return userDao.findById(userID);
	}

	@Override
	public List<Address> getAddress(int userID) {
		return addressDao.findByUserID(userID);
	}

	@Override
	public List<Book> getPersonalBookList(int userID) {
		List<Book> bookList = new ArrayList<Book>();
		List<Order> personalOrderList = orderDao.findByUserID(userID);
		// for - each
		for (int i = 0; i < personalOrderList.size(); i++){
			List<BuyItem> buyItemList = buyItemDao.findByOrderID(personalOrderList.get(i).getOrderID());
			for(int j = 0; j < buyItemList.size(); j++){
				int bookId = buyItemList.get(j).getBookID();
				Book book = bookDao.findByID(bookId);
				if (!bookList.contains(book)){
					bookList.add(book);
				}
			}
		}
		return bookList;
	}

}
