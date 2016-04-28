package com.bookstore.action;

import com.bookstore.service.LoginService;

public class LoginAction {
	
	LoginService loginService;
	String username;
	String password;
	
	public String execute(){
		if(loginService.login(username, password)){
			return "success";
		}
		else{
			return "fail";
		}
	}

	public LoginService getLoginService() {
		return loginService;
	}

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}
