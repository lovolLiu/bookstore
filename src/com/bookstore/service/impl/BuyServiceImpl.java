package com.bookstore.service.impl;

import java.sql.Timestamp;
import java.util.List;



import com.bookstore.dao.BookDAO;
import com.bookstore.dao.BuyItemDAO;
import com.bookstore.dao.OrderDAO;
import com.bookstore.domain.Book;
import com.bookstore.domain.BuyItem;
import com.bookstore.domain.Order;
import com.bookstore.service.BuyService;

public class BuyServiceImpl implements BuyService {
	
	OrderDAO orderDAO;
	BuyItemDAO buyItemDAO;
	BookDAO bookDAO;
	
	@Override
	public int createBuyItem(int userID, int bookID, int num) {
		Book book = bookDAO.findByID(bookID);
		Double currentPrice = book.getPrice() * book.getDiscount()/100;
		BuyItem buyItem = new BuyItem();
		buyItem.setBuyNum(num);
		buyItem.setCurrentPrice(currentPrice);
		buyItem.setHasApprise(false);
		buyItem.setBookID(bookID);
		return buyItemDAO.save(buyItem);
	}

	@Override
	public int createOrder(List<Integer> buyItemIDList, int userID, int addressID) {
		Order order = new Order();
		order.setAddressID(addressID);
		order.setBuyTime(new Timestamp(System.currentTimeMillis()));
		order.setStats(0);
		order.setUserID(userID);
		Integer orderID = orderDAO.save(order);
		for(Integer buyItemID : buyItemIDList){
			BuyItem buyItem = buyItemDAO.findByID(buyItemID);
			buyItem.setOrderID(orderID);
			buyItem.setBoughtDate(new Timestamp(System.currentTimeMillis()));
			
			Book book = bookDAO.findByID(buyItem.getBookID());
			book.setTotalSell(book.getTotalSell() + buyItem.getBuyNum());
			
			bookDAO.update(book);
			buyItemDAO.update(buyItem);
		}
		return orderID;
	}

	@Override
	public boolean payOrder(int orderID) {
		Order order = orderDAO.findById(orderID);
		order.setStats(1);
		orderDAO.update(order);
		return false;
	}

	@Override
	public boolean cancelOrder(int orderID) {
		// TODO Auto-generated method stub
		return false;
	}

	public OrderDAO getOrderDAO() {
		return orderDAO;
	}

	public void setOrderDAO(OrderDAO orderDAO) {
		this.orderDAO = orderDAO;
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
