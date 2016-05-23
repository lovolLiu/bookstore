package com.bookstore.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;

public class LogoutAction {
	
	Boolean result;
	
	public String execute(){
		Map session = ActionContext.getContext().getSession();
		session.remove("userID");
		result = true;
		return "success";
	}

	public Boolean getResult() {
		return result;
	}

	public void setResult(Boolean result) {
		this.result = result;
	}
	
	
}
