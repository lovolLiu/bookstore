package com.bookstore.service;

import com.bookstore.domain.Address;

public interface AddressService {
	public boolean createAddress(Address address);
	
	public boolean updateAddress(Address address);
	
	public boolean deleteAddress(Address address);
	
	public boolean selectAddress(Address address);
}
