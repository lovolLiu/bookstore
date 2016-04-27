package com.bookstore.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bookstore.dao.AddressDAO;
import com.bookstore.domain.Address;

public class AddressDAOImpl extends HibernateDaoSupport implements AddressDAO {

	@Override
	public Address findByID(Integer id) {
		return (Address)getHibernateTemplate().get(Address.class, id);
	}

	@Override
	public List<Address> findAll() {
		return (List<Address>)getHibernateTemplate().find("from Address");

	}

	@Override
	public Integer save(Address address) {
		return (Integer)getHibernateTemplate().save(address);

	}

	@Override
	public void update(Address address) {
		getHibernateTemplate().update(address);
	}

	@Override
	public void delete(Integer id) {
		getHibernateTemplate().delete(findByID(id));
	}

	@Override
	public List<Address> findByUserID(Integer userID) {
		return (List<Address>)getHibernateTemplate()
				.find("from Address as a where a.userID=?", userID);
	}


}
