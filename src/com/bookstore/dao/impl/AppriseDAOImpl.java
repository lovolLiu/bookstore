package com.bookstore.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bookstore.dao.AppriseDAO;
import com.bookstore.domain.Address;
import com.bookstore.domain.Apprise;
import com.bookstore.domain.Book;
import com.bookstore.domain.User;

public class AppriseDAOImpl extends HibernateDaoSupport implements AppriseDAO {

	@Override
	public Apprise findByID(Integer id) {
		return (Apprise)getHibernateTemplate().get(Apprise.class, id);
	}

	@Override
	public List<Apprise> findAll() {
		return (List<Apprise>)getHibernateTemplate().find("from Apprise");
	}

	@Override
	public Integer save(Address address){
		return (Integer)getHibernateTemplate().save(address);
	}

	@Override
	public void update(Address address) {
		getHibernateTemplate().update(address);
	}

	@Override
	public void delete(Address address){
		getHibernateTemplate().delete(address);
	}
	

	@Override
	public List<Apprise> findByBookID(Integer bookID) {
		return (List<Apprise>)getHibernateTemplate()
				.find("from Apprise as a where a.bookID=?", bookID);
	}

	@Override
	public List<Apprise> findByUserID(Integer userID) {
		return (List<Apprise>)getHibernateTemplate()
				.find("from Apprise as a where a.userID=?", userID);
	}

}
