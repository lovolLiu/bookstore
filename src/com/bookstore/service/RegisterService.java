package com.bookstore.service;
import com.bookstore.domain.User;

public interface RegisterService {
	boolean hasUsername(String username);
	boolean resgister(User user);
}
