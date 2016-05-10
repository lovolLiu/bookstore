package com.bookstore.action;

import com.bookstore.service.LoginService;

public class LoginAction {
	
	LoginService loginService;
	String username;
	String password;
	String result;
	
	public String execute(){
		if(loginService.login(username, password)){
			this.result="success";
			return "success";
		}
		else{
			this.result="fail";
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

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	
	
}
