package com.bookstore.service;

import com.bookstore.dao.INewsDao;

public interface IHelloWorldService {
	
	public void addNew();

	public INewsDao getNewsDao() ;

	public void setNewsDao(INewsDao newsDao);
	
}
