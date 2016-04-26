package com.bookstore.dao;

import java.util.List;

import com.bookstore.domain.CartItem;

public interface ICartItemDAO {
	CartItem findById();
	List<CartItem> findAll();
	int save(CartItem cartItem);
}
