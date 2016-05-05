package com.bookstore.service;

public interface FindPasswordService {
	boolean sendEmail(String email);
	boolean changePassword(String email, String password);
	boolean userExists(String email);
}
