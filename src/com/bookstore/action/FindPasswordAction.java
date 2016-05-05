package com.bookstore.action;

import com.bookstore.service.FindPasswordService;

public class FindPasswordAction {
	FindPasswordService findPasswordService;
	String email;
	String password;
	
	public String sendEmail(){
		if(!findPasswordService.userExists(email)){
			return "nouser";
		}
		if(findPasswordService.sendEmail(email)){
			return "success";
		}else{
			return "fail";
		}
		
	}
	
	public String changePassword(){
		if(findPasswordService.changePassword(email, password))
			return "success";
		return "fail";
	}
	
	public FindPasswordService getFindPasswordService() {
		return findPasswordService;
	}

	public void setFindPasswordService(FindPasswordService findPasswordService) {
		this.findPasswordService = findPasswordService;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password){
		this.password = password;
	}
}
