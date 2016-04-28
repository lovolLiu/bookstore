package com.bookstore.service;

import com.bookstore.dao.UserDAO;

public interface FindPasswordService {
	boolean sendEmail(String email);
	boolean changePassword(int userID, String password);
	
	public UserDAO getUserDao();
	public void setUserDao(UserDAO userDao);
}
