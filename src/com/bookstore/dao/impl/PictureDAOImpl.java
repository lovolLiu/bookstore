package com.bookstore.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bookstore.dao.PictureDAO;
import com.bookstore.domain.Picture;

public class PictureDAOImpl extends HibernateDaoSupport implements PictureDAO {

	@Override
	public Picture findById(Integer id) {
		return (Picture)getHibernateTemplate().get(Picture.class, id);
	}

	@Override
	public List<Picture> findAll() {
		return (List<Picture>)getHibernateTemplate().find("from Picture");
	}

	@Override
	public Integer save(Picture picture) {
		return (Integer)getHibernateTemplate().save(picture);
	}

	@Override
	public void update(Picture picture) {
		getHibernateTemplate().update(picture);
	}

	@Override
	public void delete(Integer id) {
		getHibernateTemplate().delete(findById(id));
	}

	@Override
	public List<Picture> findByBookID(Integer bookID) {
		return (List<Picture>)getHibernateTemplate().
				find("from Picture as a where a.bookID=?", bookID);
	}

}
