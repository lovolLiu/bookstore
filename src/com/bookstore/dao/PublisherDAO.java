package com.bookstore.dao;

import java.util.List;

import com.bookstore.domain.Publisher;

public interface PublisherDAO {
	Publisher findById(Integer id);
	List<Publisher> findAll();
	Integer save(Publisher publisher);
	void update(Publisher publisher);
	void delete(Integer id);
}
