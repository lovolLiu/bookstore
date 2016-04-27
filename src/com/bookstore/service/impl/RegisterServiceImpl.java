package com.bookstore.service.impl;

import com.bookstore.dao.UserDAO;
import com.bookstore.domain.User;
import com.bookstore.service.RegisterService;

public class RegisterServiceImpl implements RegisterService {

	UserDAO userDAO;
	
	@Override
	public boolean hasUsername(String username) {
		return (userDAO.findByName(username)!=null);
	}

	@Override
	public boolean resgister(User user) {
		userDAO.save(user);
		return true;
	}

	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	

}