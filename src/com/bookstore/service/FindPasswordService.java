package com.bookstore.service;

public interface FindPasswordService {
	boolean sendEmail(String email);
	boolean changePassword(int userID, String password);
	boolean userExists(String email);
}
