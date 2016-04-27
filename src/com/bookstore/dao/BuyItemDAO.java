package com.bookstore.dao;

import java.util.List;

import com.bookstore.domain.BuyItem;


public interface BuyItemDAO {
	BuyItem findByID(Integer id);
	List<BuyItem> findAll();
	Integer save(BuyItem buyItem);
	void update(BuyItem buyItem);
	void delete(Integer id);
	List<BuyItem> findByOrderID(Integer orderID);
}
