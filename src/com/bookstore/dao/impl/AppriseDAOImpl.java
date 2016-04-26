package com.bookstore.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bookstore.dao.AppriseDAO;
import com.bookstore.domain.Apprise;

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
	public Integer save(Apprise apprise){
		return (Integer)getHibernateTemplate().save(apprise);
	}

	@Override
	public void update(Apprise apprise) {
		getHibernateTemplate().update(apprise);
	}

	@Override
	public void delete(Integer id){
		getHibernateTemplate().delete(findByID(id));
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
