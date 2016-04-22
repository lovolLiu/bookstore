package com.bookstore.action;

import com.bookstore.service.IHelloWorldService;

public class HelloWorldAction {
	
	private IHelloWorldService helloWorldService;

	public IHelloWorldService getHelloWorldService() {
		return helloWorldService;
	}

	public void setHelloWorldService(IHelloWorldService service) {
		this.helloWorldService = service;
	}


	public String execute(){
		helloWorldService.addNew();
		return "success";
	}
	
}