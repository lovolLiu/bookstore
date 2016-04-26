package com.bookstore.dao;

import java.util.List;
import com.bookstore.domain.Address;

public interface AddressDAO {
	Address findByID(Integer id);
	List<Address> findAll();
	Integer save(Address address);
	void update(Address address);
	void delete(Integer id);
	List<Address> findByUserID(Integer userID);
}
