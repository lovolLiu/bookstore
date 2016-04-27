package com.bookstore.action;

import com.bookstore.dao.AddressDAO;
import com.bookstore.dao.BookDAO;
import com.bookstore.domain.Address;
import com.bookstore.domain.Book;
import com.bookstore.service.BuyService;

public class StraightBuyAction {
	
	Integer bookID;
	Integer userID = 1;  /////////
	Integer num;
	BuyService buyService;
	
	Book book;
	BookDAO bookDAO;
	Address address;
	Integer addressID;
	AddressDAO addressDAO;
	
	Integer buyItemID;
	
	public String execute(){
		
		buyItemID =  buyService.createBuyItem(userID, bookID, num);
		book = bookDAO.findByID(bookID);
		address = addressDAO.findByID(4);
		addressID = 4;
		return "success";
	}


	public Integer getBookID() {
		return bookID;
	}


	public void setBookID(Integer bookID) {
		this.bookID = bookID;
	}


	public Integer getUserID() {
		return userID;
	}


	public void setUserID(Integer userID) {
		this.userID = userID;
	}


	public Integer getNum() {
		return num;
	}


	public void setNum(Integer num) {
		this.num = num;
	}


	public BuyService getBuyService() {
		return buyService;
	}


	public void setBuyService(BuyService buyService) {
		this.buyService = buyService;
	}


	public Integer getBuyItemID() {
		return buyItemID;
	}


	public void setBuyItemID(Integer buyItemID) {
		this.buyItemID = buyItemID;
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


	public Integer getAddressID() {
		return addressID;
	}


	public void setAddressID(Integer addressID) {
		this.addressID = addressID;
	}
	
	
}
