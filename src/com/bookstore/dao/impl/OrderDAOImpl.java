package com.bookstore.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bookstore.dao.OrderDAO;
import com.bookstore.domain.Order;

public class OrderDAOImpl extends HibernateDaoSupport implements OrderDAO {
	Session session = null;

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
				find("from Order as a where a.addressID=? order by a.buyTime desc", addressID);
	}

	@Override
	public List<Order> findByUserID(Integer userID) {
		return (List<Order>)getHibernateTemplate().
				find("from Order as a where a.userID=? order by a.buyTime desc", userID);
	}
	
	public List<Order> findByUserIDandStats(Integer stats, Integer userID){
		String hql="from Order as a where a.userID=? and a.stats=? order by a.buyTime desc";    
		Object[] param=new Object[]{userID,stats};
//	    Query query= session.createQuery(hql).setParameter(0, userID).setParameter(1, stats);
		return (List<Order>)getHibernateTemplate().find(hql,param);
	}
	

}
