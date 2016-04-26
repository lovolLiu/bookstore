package com.bookstore.dao;

import java.util.List;

import com.bookstore.domain.Picture;

public interface PictureDAO {
	Picture findById(Integer id);
	List<Picture> findAll();
	Integer save(Picture picture);
	void update(Picture picture);
	void delete(Integer id);

	List<Picture> findByBookID(Integer bookID);
}
