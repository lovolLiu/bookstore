package com.bookstore.service.impl;

import java.sql.Timestamp;

import com.bookstore.dao.AppriseDAO;
import com.bookstore.domain.Apprise;
import com.bookstore.service.AppriseService;

public class AppriseServiceImpl implements AppriseService{

	AppriseDAO appriseDao;
	
	@Override
	public void addApprise(int userID, int bookid, int score, String content) {
		Apprise apprise = new Apprise();
		
		apprise.setAppriseTime(new Timestamp(System.currentTimeMillis()));
		apprise.setBookID(bookid);
		apprise.setScore(score);
		apprise.setText(content);
		apprise.setUserID(userID);
		
		appriseDao.save(apprise);
	}


	
}
