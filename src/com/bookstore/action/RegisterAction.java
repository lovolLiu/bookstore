package com.bookstore.action;

import com.bookstore.domain.User;
import com.bookstore.service.RegisterService;

public class RegisterAction {
	RegisterService registerService;
	String userName;
	String password;
	String userTel;
	String userEmail;
	
	
	public String execute(){
		User user = new User();
		user.setUserName(userName);
		user.setPassword(password);
		user.setUserTel(userTel);
		user.setUserEmail(userEmail);
		boolean hasemail = registerService.hasUserEmail(userEmail);//true为存在输入邮箱 false为不存在输入邮箱
		boolean hasname = registerService.hasUsername(userName);//true为存在输入用户名 false为不存在输入用户名
		if(registerService.resgister(user)){
			return "success";
		}
		else{
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

	
	
	
}
