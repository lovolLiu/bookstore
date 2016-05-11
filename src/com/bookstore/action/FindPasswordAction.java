package com.bookstore.action;

import com.bookstore.service.FindPasswordService;

/**
 * @author Chang Su
 * @description 找回密码Action实现
 * @modify
 * @modifyDate
 */
public class FindPasswordAction {
	FindPasswordService findPasswordService;
	String email;
	String password;
	String result;
	
	public String sendEmail(){
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
	
	public String changePassword(){
		if(findPasswordService.changePassword(email, password)){
			this.result = "success";
			return "success";
		}
		this.result = "fail";
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
	
	public String getResult(){
		return result;
	}
	
	public void setResult(String result){
		this.result = result;
	}
}
