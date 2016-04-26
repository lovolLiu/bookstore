package com.bookstore.dao;

import java.util.List;
import com.bookstore.domain.Address;
import com.bookstore.domain.Apprise;

public interface AppriseDAO {
	Apprise findByID(Integer id);
	List<Apprise> findAll();
	Integer save(Address address);
	void update(Address address);
	void delete(Address address);
	List<Apprise> findByBookID(Integer bookID);
	List<Apprise> findByUserID(Integer userID);
}
