package com.bookstore.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.bookstore.dao.BuyItemDAO;
import com.bookstore.dao.CartItemDAO;
import com.bookstore.domain.BuyItem;
import com.bookstore.domain.CartItem;
import com.bookstore.service.CartService;

/**
 * @author Zhiqi Yang
 * @description 购物车相关Service实现
 * @modify
 * @modifyDate
 */
public class CartServiceImpl implements CartService {

	// IOC DAO
	CartItemDAO cartItemDAO;
	BuyItemDAO buyItemDAO;

	@Override
	public boolean addCartItem(int userID, int buyItemID) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean changeNumOfCartItem(int buyItemID, int num) {
		BuyItem buyItem = buyItemDAO.findByID(buyItemID);
		buyItem.setBuyNum(num);
		buyItemDAO.update(buyItem);
		return true;
	}
	
	
	@Override
	public List<BuyItem> getCartItemList(int userID) {
		List<CartItem> cartItemList = cartItemDAO.findByUserID(userID);
		List<BuyItem> buyItemList = new ArrayList();
		for (CartItem cartItem : cartItemList) {
			buyItemList.add(buyItemDAO.findByID(cartItem.getBuyItemID()));
		}
		return buyItemList;
	}

	@Override
	public boolean deleteCartItem(int userID, int buyItemID) {
		CartItem cartItem = (CartItem) cartItemDAO.findByBuyItemID(buyItemID);
		cartItemDAO.delete(cartItem.getCartItemID());
		return true;
	}

	public CartItemDAO getCartItemDAO() {
		return cartItemDAO;
	}

	public void setCartItemDAO(CartItemDAO cartItemDAO) {
		this.cartItemDAO = cartItemDAO;
	}

	public BuyItemDAO getBuyItemDAO() {
		return buyItemDAO;
	}

	public void setBuyItemDAO(BuyItemDAO buyItemDAO) {
		this.buyItemDAO = buyItemDAO;
	}



}
