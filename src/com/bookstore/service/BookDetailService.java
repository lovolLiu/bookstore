package com.bookstore.service;

import java.util.List;

import com.bookstore.domain.Apprise;
import com.bookstore.domain.Book;

public interface BookDetailService {
	Book getBookInfo(int bookID);
	List<Apprise> getAppriseList(int bookID);
}
