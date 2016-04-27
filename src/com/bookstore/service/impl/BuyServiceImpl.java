package com.bookstore.service.impl;

import java.util.List;

import com.bookstore.dao.BuyItemDAO;
import com.bookstore.domain.BuyItem;
import com.bookstore.service.BuyService;

public class BuyServiceImpl implements BuyService {
	
	BuyItemDAO buyItemDao;

	@Override
	public int createBuyItem(int userID, int bookID, int num) {
		BuyItem buyItem = new BuyItem();
		
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
