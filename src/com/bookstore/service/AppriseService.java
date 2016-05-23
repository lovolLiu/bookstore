package com.bookstore.service;

import java.util.List;

import com.bookstore.domain.Apprise;

public interface AppriseService {
	public void addApprise(int userID, int bookid, int score, String content);
	public List<Apprise> showAppriseByBookID(int bookid);
}
