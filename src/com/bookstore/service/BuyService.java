package com.bookstore.service;
import java.util.List;

public interface BuyService {
	int createBuyItem(int userID, int bookID, int num);
	int createOrder(List<Integer> buyItemID,int userID,int addressID);
	boolean payOrder(int orderID);
	boolean cancelOrder(int orderID);

}
