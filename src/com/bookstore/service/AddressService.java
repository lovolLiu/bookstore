package com.bookstore.service;

import com.bookstore.domain.Address;

public interface AddressService {
	public int createAddress(Address address);
	
	public boolean updateAddress(Address address);
	
	public boolean deleteAddress(int addressID);
	
	public Address selectAddress(int addressID);
}
