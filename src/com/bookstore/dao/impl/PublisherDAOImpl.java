package com.bookstore.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bookstore.dao.PublisherDAO;
import com.bookstore.domain.Book;
import com.bookstore.domain.Publisher;
import com.bookstore.domain.User;

public class PublisherDAOImpl extends HibernateDaoSupport implements PublisherDAO {

	@Override
	public Publisher findById(Integer id) {
		return (Publisher)getHibernateTemplate().get(Publisher.class, id);
	}

	@Override
	public List<Publisher> findAll() {
		return (List<Publisher>)getHibernateTemplate().find("from Publisher");
	}

	@Override
	public Integer save(Publisher publisher) {
		return (Integer)getHibernateTemplate().save(publisher);
	}

	@Override
	public void update(Publisher publisher) {
		getHibernateTemplate().update(publisher);
	}

	@Override
	public void delete(Integer id) {
		getHibernateTemplate().delete(findById(id));
	}

	@Override
	public Publisher fuzzyfindName(String publisherName) {
		// TODO Auto-generated method stub
		List<Publisher> list =getHibernateTemplate()
				.find("from Publisher as p where p.PublisherName like ?", publisherName);
		if (list.isEmpty())
			return null;
		else
			return list.get(0);
	}

}
