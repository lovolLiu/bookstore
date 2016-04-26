package com.bookstore.dao;

import java.util.List;

import com.bookstore.domain.Order;

public interface OrderDAO {
	Order findById(Integer id);
	List<Order> findAll();
	Integer save(Order order);
	void update(Order order);
	void delete(Integer id);
	List<Order> findByAddressID(Integer addressID);
	List<Order> findByUserID(Integer userID);
}
