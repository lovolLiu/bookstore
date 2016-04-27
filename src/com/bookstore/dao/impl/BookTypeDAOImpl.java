package com.bookstore.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bookstore.dao.BookTypeDAO;
import com.bookstore.domain.BookType;

public class BookTypeDAOImpl  extends HibernateDaoSupport implements BookTypeDAO {

	@Override
	public BookType findByID(Integer id) {
		return (BookType)getHibernateTemplate().get(BookType.class, id);

	}

	@Override
	public List<BookType> findAll() {
		return (List<BookType>)getHibernateTemplate().find("from BookType");

	}

	@Override
	public Integer save(BookType bookType) {
		return (Integer)getHibernateTemplate().save(bookType);

	}

	@Override
	public void update(BookType bookType) {
		getHibernateTemplate().update(bookType);

	}

	@Override
	public void delete(Integer id) {
		getHibernateTemplate().delete(findByID(id));

	}

}
