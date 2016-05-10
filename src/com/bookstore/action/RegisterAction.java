package com.bookstore.action;

import com.bookstore.domain.User;
import com.bookstore.service.RegisterService;

/**
 * @author Chang Su
 * @description 注册Action实现
 * @modify
 * @modifyDate
 */
public class RegisterAction {
	RegisterService registerService;
	String userName;
	String password;
	String userTel;
	String userEmail;
	String result;
	
	public String hasEmail(){
		if(registerService.hasUserEmail(userEmail)){
			this.result = "true";
			return "true";
		}
		this.result="false";
		return "false";
	}
	
	public String hasUsername(){
		if(registerService.hasUsername(userName)){
			this.result = "true";
			return "true";
		}
		this.result="false";
		return "false";
	}
	public String registerUser(){
		User user = new User();
		user.setUserName(userName);
		user.setPassword(password);
		user.setUserTel(userTel);
		user.setUserEmail(userEmail);
		if(registerService.resgister(user)){
			this.result = "success";
			return "success";
		}
		else{
			this.result = "fail";
			return "fail";
		}
	}
	public RegisterService getRegisterService() {
		return registerService;
	}
	public void setRegisterService(RegisterService registerService) {
		this.registerService = registerService;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserTel() {
		return userTel;
	}
	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	
	
}
