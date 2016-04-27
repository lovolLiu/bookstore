package com.bookstore.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bookstore.dao.OrderDAO;
import com.bookstore.domain.Order;

public class OrderDAOImpl extends HibernateDaoSupport implements OrderDAO {

	@Override
	public Order findById(Integer id) {
		return (Order)getHibernateTemplate().get(Order.class, id);
	}

	@Override
	public List<Order> findAll() {
		return (List<Order>)getHibernateTemplate().find("from Order");
	}

	@Override
	public Integer save(Order order) {
		return (Integer)getHibernateTemplate().save(order);
	}

	@Override
	public void update(Order order) {
		getHibernateTemplate().update(order);
	}

	@Override
	public void delete(Integer id) {
		getHibernateTemplate().delete(findById(id));
	}

	@Override
	public List<Order> findByAddressID(Integer addressID) {
		return (List<Order>)getHibernateTemplate().
				find("from Order as a where a.addressID=?", addressID);
	}

	@Override
	public List<Order> findByUserID(Integer userID) {
		return (List<Order>)getHibernateTemplate().
				find("from Order as a where a.userID=?", userID);
	}

}
