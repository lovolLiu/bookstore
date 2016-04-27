package com.bookstore.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bookstore.dao.BuyItemDAO;
import com.bookstore.domain.Apprise;
import com.bookstore.domain.BuyItem;

public class BuyItemDAOImpl extends HibernateDaoSupport implements BuyItemDAO {

	@Override
	public BuyItem findByID(Integer id) {
		return (BuyItem)getHibernateTemplate().get(BuyItem.class, id);
	}

	@Override
	public List<BuyItem> findAll() {
		return (List<BuyItem>)getHibernateTemplate().find("from BuyItem");
	}

	@Override
	public Integer save(BuyItem buyItem) {
		return (Integer)getHibernateTemplate().save(buyItem);
	}

	@Override
	public void update(BuyItem buyItem) {
		getHibernateTemplate().update(buyItem);
	}

	@Override
	public void delete(Integer id) {
		getHibernateTemplate().delete(findByID(id));
	}

	@Override
	public List<BuyItem> findByOrderID(Integer orderID) {
		return (List<BuyItem>)getHibernateTemplate()
				.find("from BuyItem as b where b.orderID=?", orderID);
	}

}
