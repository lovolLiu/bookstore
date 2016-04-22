package com.bookstore.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bookstore.dao.INewsDao;
import com.bookstore.domain.News;

public class NewsDaoImpl extends HibernateDaoSupport implements INewsDao {
	public Integer save(News news){
		return (Integer)getHibernateTemplate().save(news);
	}
}
