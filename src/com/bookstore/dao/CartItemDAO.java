package com.bookstore.dao;

import java.util.List;

import com.bookstore.domain.Address;
import com.bookstore.domain.Apprise;
import com.bookstore.domain.CartItem;

public interface CartItemDAO {
	CartItem findById(Integer id);
	List<CartItem> findAll();
	Integer save(CartItem cartItem);
	void update(CartItem cartItem);
	void delete(Integer id);
	List<CartItem> findByBuyItemID(Integer bookID);
	List<CartItem> findByUserID(Integer userID);
}
