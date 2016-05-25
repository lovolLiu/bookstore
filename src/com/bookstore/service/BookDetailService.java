package com.bookstore.service;

import java.util.List;

import com.bookstore.domain.Apprise;
import com.bookstore.domain.Book;
import com.bookstore.domain.Picture;
import com.bookstore.domain.Publisher;

public interface BookDetailService {
	Book getBookInfo(int bookID);
	Publisher getBookPublisher(int bookID);
	List<Apprise> getAppriseList(int bookID);
	List<Picture> getBookPicture(int bookID);
}
