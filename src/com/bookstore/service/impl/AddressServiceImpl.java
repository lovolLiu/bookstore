package com.bookstore.service.impl;

import com.bookstore.dao.AddressDAO;
import com.bookstore.domain.Address;
import com.bookstore.service.AddressService;

public class AddressServiceImpl implements AddressService{
	
	AddressDAO addressDao;
	
	@Override
	public int createAddress(Address address) {
		return addressDao.save(address);
	}

	@Override
	public boolean updateAddress(Address address){
		addressDao.update(address);
		return true;
	}

	@Override
	public boolean deleteAddress(int addressID) {
		addressDao.delete(addressID);
		return true;
	}

	@Override
	public Address selectAddress(int addressID) {
		// TODO Auto-generated method stub
		return addressDao.findByID(addressID);
	}

	public AddressDAO getAddressDao() {
		return addressDao;
	}

	public void setAddressDao(AddressDAO addressDao) {
		this.addressDao = addressDao;
	}
	
}
