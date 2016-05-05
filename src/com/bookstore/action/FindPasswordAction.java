package com.bookstore.action;

import com.bookstore.service.FindPasswordService;

public class FindPasswordAction {
	FindPasswordService findPasswordService;
	String email;
	String result;
	
	public String execute(){
		if(!findPasswordService.userExists(email)){
			this.result = "nouser";
			return "nouser";
		}
		if(findPasswordService.sendEmail(email)){
			this.result = "success";
			return "success";
		}else{
			this.result = "fail";
			return "fail";
		}
		
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
	
	public String getResult() {
		return result;
	}
	
	public void setResult(String result) {
		this.result = result;
	}

}
