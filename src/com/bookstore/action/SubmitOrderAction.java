package com.bookstore.action;

import java.util.ArrayList;
import java.util.List;

import com.bookstore.dao.AddressDAO;
import com.bookstore.dao.BookDAO;
import com.bookstore.dao.BuyItemDAO;
import com.bookstore.domain.Address;
import com.bookstore.domain.Book;
import com.bookstore.service.BuyService;

public class SubmitOrderAction {
	
	Integer userID = 1;
	
	Integer buyItemID;
	Integer addressID = 4;
	
	
	Integer orderID;
	
	BuyService buyService;
	
	
	AddressDAO addressDAO;
	Address address;
	Book book;
	BookDAO bookDAO;
	BuyItemDAO buyItemDAO;
	
	public String execute(){
		List<Integer> buyItemIDList = new ArrayList();
		buyItemIDList.add(buyItemID);
		orderID = buyService.createOrder(buyItemIDList, userID, addressID);
		address = addressDAO.findByID(addressID);
		book = bookDAO.findByID(buyItemDAO.findByID(buyItemID).getBookID());
		System.out.println(buyItemID);
		return "success";
	}

	public Integer getUserID() {
		return userID;
	}

	public void setUserID(Integer userID) {
		this.userID = userID;
	}

	public Integer getBuyItemID() {
		return buyItemID;
	}

	public void setBuyItemID(Integer buyItemID) {
		this.buyItemID = buyItemID;
	}

	public Integer getAddressID() {
		return addressID;
	}

	public void setAddressID(Integer addressID) {
		this.addressID = addressID;
	}

	public Integer getOrderID() {
		return orderID;
	}

	public void setOrderID(Integer orderID) {
		this.orderID = orderID;
	}

	public BuyService getBuyService() {
		return buyService;
	}

	public void setBuyService(BuyService buyService) {
		this.buyService = buyService;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public AddressDAO getAddressDAO() {
		return addressDAO;
	}

	public void setAddressDAO(AddressDAO addressDAO) {
		this.addressDAO = addressDAO;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public BookDAO getBookDAO() {
		return bookDAO;
	}

	public void setBookDAO(BookDAO bookDAO) {
		this.bookDAO = bookDAO;
	}

	public BuyItemDAO getBuyItemDAO() {
		return buyItemDAO;
	}

	public void setBuyItemDAO(BuyItemDAO buyItemDAO) {
		this.buyItemDAO = buyItemDAO;
	}
	
	
	
	
}
