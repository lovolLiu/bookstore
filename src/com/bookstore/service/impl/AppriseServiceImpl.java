package com.bookstore.service.impl;

import java.sql.Timestamp;
import java.util.List;

import com.bookstore.dao.AppriseDAO;
import com.bookstore.dao.BuyItemDAO;
import com.bookstore.dao.OrderDAO;
import com.bookstore.domain.Apprise;
import com.bookstore.domain.BuyItem;
import com.bookstore.domain.Order;
import com.bookstore.service.AppriseService;

/**
 * @author Chang Su, Jhon/Jan Doe
 * @description apprise Service 实现
 * @modify
 * @modifyDate
 */
public class AppriseServiceImpl implements AppriseService{

	AppriseDAO appriseDao;
	BuyItemDAO buyItemDao;
	OrderDAO orderDao;
	
	@Override
	public void addApprise(int userID, int bookid, int score, String content) {// not written by Chang Su From line 27 to line 36
		Apprise apprise = new Apprise();
		
		apprise.setAppriseTime(new Timestamp(System.currentTimeMillis()));
		apprise.setBookID(bookid);
		apprise.setScore(score);
		apprise.setText(content);
		apprise.setUserID(userID);
		
		appriseDao.save(apprise);
		
		List<Order> orderList = orderDao.findByUserIDandStats(1, userID);	//找到已付款的订单列表
		for(int i = 0; i < orderList.size(); i++){	//对每一个订单
			List<BuyItem> buyItemList = buyItemDao.findNotApprise(orderList.get(i).getOrderID());	//找到订单中没有评价的图书列表
			for(BuyItem buyItem: buyItemList){
				if(buyItem.getBookID() == bookid){	//如果图书等于当前评价的图书
					buyItem.setHasApprise(true);
					buyItemDao.update(buyItem);
				}
			}
		}
	}

	public AppriseDAO getAppriseDao() {
		return appriseDao;
	}

	public void setAppriseDao(AppriseDAO appriseDao) {
		this.appriseDao = appriseDao;
	}

	public BuyItemDAO getBuyItemDao() {
		return buyItemDao;
	}

	public void setBuyItemDao(BuyItemDAO buyItemDao) {
		this.buyItemDao = buyItemDao;
	}

	public OrderDAO getOrderDao() {
		return orderDao;
	}

	public void setOrderDao(OrderDAO orderDao) {
		this.orderDao = orderDao;
	}


	
}
