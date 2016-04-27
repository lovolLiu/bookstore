package com.bookstore.service.impl;

import java.util.List;


import com.bookstore.service.BuyService;

public class BuyServiceImpl implements BuyService {

	@Override
	public int createBuyItem(int userID, int bookID, int num) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int createOrder(List<Integer> buyItemID, int userID, int addressID) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean payOrder(int orderID) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean cancelOrder(int orderID) {
		// TODO Auto-generated method stub
		return false;
	}





}
