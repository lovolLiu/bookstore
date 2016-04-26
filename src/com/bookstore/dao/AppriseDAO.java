package com.bookstore.dao;

import java.util.List;
import com.bookstore.domain.Apprise;

public interface AppriseDAO {
	Apprise findByID(Integer id);
	List<Apprise> findAll();
	Integer save(Apprise apprise);
	void update(Apprise apprise);
	void delete(Integer id);
	List<Apprise> findByBookID(Integer bookID);
	List<Apprise> findByUserID(Integer userID);
}
