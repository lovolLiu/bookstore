package com.bookstore.service;
import com.bookstore.domain.User;

public interface RegisterService {
	boolean hasUsername(String username);
	boolean hasUserEmail(String userEmail);
	boolean resgister(User user);
}
