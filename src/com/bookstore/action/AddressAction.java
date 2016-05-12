package com.bookstore.action;

import com.bookstore.domain.Address;
import com.bookstore.service.AddressService;

public class AddressAction {
	
	String consignee;
	String tel;
	String address;
	Address addressObject;
	Integer userID = 1;
	AddressService addressService;
	
	public String addAddress(){
		addressObject = new Address();
		addressObject.setAddress(address);
		addressObject.setPerson(consignee);
		addressObject.setTel(tel);
		addressObject.setUserID(userID);
		addressService.createAddress(addressObject);
		return "success";
	}
	
	public String updateAddress(){
		return "success";
	}
	public String deleteAddress(){
		
		return "success";
	}
	public String getConsignee() {
		return consignee;
	}
	public void setConsignee(String consignee) {
		this.consignee = consignee;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Address getAddressObject() {
		return addressObject;
	}
	public void setAddressObject(Address addressObject) {
		this.addressObject = addressObject;
	}
	public Integer getUserID() {
		return userID;
	}
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	public AddressService getAddressService() {
		return addressService;
	}
	public void setAddressService(AddressService addressService) {
		this.addressService = addressService;
	}
	
	

}
