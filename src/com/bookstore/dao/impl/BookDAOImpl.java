package com.bookstore.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bookstore.dao.BookDAO;
import com.bookstore.domain.Book;

public class BookDAOImpl extends HibernateDaoSupport implements BookDAO {

	@Override
	public Book findByID(Integer id) {
		return (Book)getHibernateTemplate().get(Book.class, id);
	}

	@Override
	public List<Book> findAll() {
		return (List<Book>)getHibernateTemplate().find("from Book");

	}

	@Override
	public Integer save(Book book) {
		return (Integer)getHibernateTemplate().save(book);

	}

	@Override
	public void update(Book book) {
		getHibernateTemplate().update(book);

	}

	@Override
	public void delete(Integer id) {
		getHibernateTemplate().delete(findByID(id));

	}

	@Override
	public List<Book> findByTypeID(final Integer typeID) {
		List<Book> list = getHibernateTemplate().executeFind(new HibernateCallback(){
			String sql = "selete * from Book b, Book_has_BookType r where b.bookID=r.Book_BookID and r.BookType_TypeID=?";
			@Override
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				SQLQuery query = session.createSQLQuery(sql);
				query.addEntity(Book.class);
				query.setParameter(0, typeID);
				List result = query.list();
				return result;
			}
		});
		return list;
	}

	@Override
	public List<Book> findByPublisherID(Integer publisherID) {
		return (List<Book>)getHibernateTemplate()
				.find("from Book as b where b.publisherID=?", publisherID);
	}

	@Override
	public List<Book> findAllOrderByPublishTime() {
		return (List<Book>)getHibernateTemplate().find("from Book b order by b.publishTime desc");
	}

	@Override
	public List<Book> findAllOrderByClickCount() {
		return (List<Book>)getHibernateTemplate().find("from Book b order by b.clickCount");
	}

	@Override
	public List<Book> findAllOrderByDiscount() {
		return (List<Book>)getHibernateTemplate().find("from Book b order by b.discount");
	}

	@Override
	public List<Book> fuzzyfindByName(String bookname) {
		return (List<Book>)getHibernateTemplate()
				.find("from Book as b where b.bookName = ? ", bookname);
	}

	@Override
	public List<Book> fuzzyfindByAuthor(String authorname) {
		return (List<Book>)getHibernateTemplate()
				.find("from Book as b where b.author = ? ", authorname);
	}

	@Override
	public List<Book> fuzzyfindByPublisher(Integer id) {
		return (List<Book>)getHibernateTemplate()
				.find("from Book as b where b.publisherID = ?", id);
	}

	@Override
	public List<Book> findAllOrderByTotalSell() {
		return (List<Book>)getHibernateTemplate().find("from Book b order by b.totalSell desc");
	}

}
