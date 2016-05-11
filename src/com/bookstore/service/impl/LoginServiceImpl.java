package com.bookstore.service.impl;

import com.bookstore.dao.UserDAO;
import com.bookstore.domain.User;
import com.bookstore.service.LoginService;


/**
 * @author Chang Su
 * @description 登录Service实现
 * @modify
 * @modifyDate
 */
public class LoginServiceImpl implements LoginService {

	UserDAO userDAO;
	
	@Override
	public boolean login(String username, String password) {
		User user = userDAO.findByName(username);
		if(user != null){
			if(password.equals(user.getPassword())){
				return true;
			}
		}
		return false;
	}

	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	

}
