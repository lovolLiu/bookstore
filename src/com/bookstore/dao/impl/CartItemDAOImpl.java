package com.bookstore.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bookstore.dao.CartItemDAO;
import com.bookstore.domain.CartItem;

public class CartItemDAOImpl extends HibernateDaoSupport implements CartItemDAO {

	@Override
	public CartItem findById(Integer id) {
		return (CartItem)getHibernateTemplate().get(CartItem.class, id);
	}

	@Override
	public List<CartItem> findAll() {
		return (List<CartItem>)getHibernateTemplate().find("from CartItem");
	}

	@Override
	public Integer save(CartItem cartItem) {
		return (Integer)getHibernateTemplate().save(cartItem);
	}

	@Override
	public void update(CartItem cartItem) {
		getHibernateTemplate().update(cartItem);
	}

	@Override
	public void delete(Integer id) {
		getHibernateTemplate().delete(findById(id));
	}

	@Override
	public List<CartItem> findByBuyItemID(Integer bookID) {
		return (List<CartItem>)getHibernateTemplate().
				find("from CartItem as a where a.bookID=?", bookID);
	}

	@Override
	public List<CartItem> findByUserID(Integer userID) {
		return (List<CartItem>)getHibernateTemplate().
				find("from CartItem as a where a.userID=?", userID);
	}

}
