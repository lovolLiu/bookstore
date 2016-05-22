package com.bookstore.action;

import com.bookstore.domain.Address;
import com.bookstore.service.AddressService;

/**
 * @author Chang Su
 * @description 地址增删改查Action实现
 * @modify
 * @modifyDate
 */
public class AddressAction {
	
	String consignee;
	String tel;
	String addressDetail;
	Address address;
	Integer userID = 1;
	Integer addressID;
	AddressService addressService;
	String result;
	
	public String addAddress(){
		address = new Address();
		address.setAddress(addressDetail);
		address.setPerson(consignee);
		address.setTel(tel);
		address.setUserID(userID);
		addressID = addressService.createAddress(address);
		address.setAddressID(addressID);
		return "success";
	}
	
	public String updateAddress(){
		address = addressService.selectAddress(addressID);
		Address addressNew = new Address();
		addressNew.setAddress(addressDetail);
		addressNew.setPerson(consignee);
		addressNew.setTel(tel);
		addressNew.setUserID(userID);
		address.setUserID(null);
		addressService.updateAddress(address);
		addressService.createAddress(addressNew);
		this.result = "success";
		return "success";
	}
	public String deleteAddress(){
		address = addressService.selectAddress(addressID);
		address.setUserID(null);
		addressService.updateAddress(address);
		this.result = "success";
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

	public Integer getAddressID() {
		return addressID;
	}

	public void setAddressID(Integer addressID) {
		this.addressID = addressID;
	}

	public String getAddressDetail() {
		return addressDetail;
	}

	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Address getAddress() {
		return address;
	}
	
	

}
