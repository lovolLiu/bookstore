package com.bookstore.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bookstore.dao.UserDAO;
import com.bookstore.domain.User;

public class UserDAOImpl extends HibernateDaoSupport implements UserDAO {

	@Override
	public User findById(Integer id) {
		return (User)getHibernateTemplate().get(User.class, id);
	}

	@Override
	public List<User> findAll() {
		return (List<User>)getHibernateTemplate().find("from User");
	}

	@Override
	public Integer save(User user) {
		return (Integer)getHibernateTemplate().save(user);
	}

	@Override
	public void update(User user) {
		getHibernateTemplate().update(user);
	}

	@Override
	public void delete(Integer id) {
		getHibernateTemplate().delete(findById(id));
	}

}
