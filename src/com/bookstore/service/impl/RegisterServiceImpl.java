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
	public boolean hasUserEmail(String userEmail) {
		// TODO Auto-generated method stub
		return (userDAO.findByEmail(userEmail)!=null);
	}
	
	@Override
	public boolean resgister(User user) {
		if(hasUsername(user.getUserName())){
			return false;
		}
		else if(hasUserEmail(user.getUserEmail())){
			return false;
		}
		else{
		userDAO.save(user);
		return true;
		}
	}

	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}


	
	

}
