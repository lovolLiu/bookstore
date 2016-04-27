package com.bookstore.dao;
import java.util.List;


import com.bookstore.domain.User;
public interface UserDAO {
	User findById(Integer id);
	User findByName(String name);
	List<User> findAll();
	Integer save(User user);
	void update(User user);
	void delete(Integer id);

}
