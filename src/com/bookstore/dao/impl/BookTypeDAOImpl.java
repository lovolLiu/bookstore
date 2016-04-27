package com.bookstore.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bookstore.dao.BookTypeDAO;
import com.bookstore.domain.Book;
import com.bookstore.domain.BookType;

public class BookTypeDAOImpl  extends HibernateDaoSupport implements BookTypeDAO {

	@Override
	public BookType findByID(Integer id) {
		return (BookType)getHibernateTemplate().get(BookType.class, id);

	}

	@Override
	public List<BookType> findAll() {
		return (List<BookType>)getHibernateTemplate().find("from BookType");

	}

	@Override
	public Integer save(BookType bookType) {
		return (Integer)getHibernateTemplate().save(bookType);

	}

	@Override
	public void update(BookType bookType) {
		getHibernateTemplate().update(bookType);

	}

	@Override
	public void delete(Integer id) {
		getHibernateTemplate().delete(findByID(id));

	}

	@Override
	public List<BookType> findByBookID(final Integer bookID) {
		List<BookType> list = getHibernateTemplate().executeFind(new HibernateCallback(){
			String sql = "selete * from BookType b, Book_has_BookType r where b.TypeID=r.BookType_TypeID and r.Book_BookID=?";
			@Override
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				SQLQuery query = session.createSQLQuery(sql);
				query.addEntity(BookType.class);
				query.setParameter(0, bookID);
				List result = query.list();
				return result;
			}
		});
		return list;
	}

}
