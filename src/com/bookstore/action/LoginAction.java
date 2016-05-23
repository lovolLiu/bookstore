package com.bookstore.action;

import java.util.Map;

import com.bookstore.service.LoginService;
import com.opensymphony.xwork2.ActionContext;

public class LoginAction {
	
	LoginService loginService;
	String username;
	String password;
	String result;
	
	public String execute(){
		Integer userID;
		if((userID = loginService.login(username, password)) > 0){
			Map session = ActionContext.getContext().getSession();
			session.put("userID", userID);
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
