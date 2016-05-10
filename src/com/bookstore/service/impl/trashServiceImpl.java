package com.bookstore.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.bookstore.dao.AddressDAO;
import com.bookstore.dao.BookDAO;
import com.bookstore.dao.BuyItemDAO;
import com.bookstore.dao.OrderDAO;
import com.bookstore.dao.PictureDAO;
import com.bookstore.domain.Address;
import com.bookstore.domain.BuyItem;
import com.bookstore.domain.Order;
import com.bookstore.service.trashService;
import com.bookstore.util.DivOrder;
import com.bookstore.util.TrCartItem;

/**
 * @author Chang Su
 * @description 订单显示相关Service实现
 * @modify
 * @modifyDate
 */
public class trashServiceImpl implements trashService{

	AddressDAO addressDAO;
	OrderDAO orderDAO;
	BuyItemDAO buyItemDAO;
	
	@Override
	public List<BuyItem> getBuyItemList(Integer orderID) {
		List<BuyItem> buyItemList = buyItemDAO.findByOrderID(orderID);
		return buyItemList;
	}

	@Override
	public DivOrder buyItemListAddToDivOrder(List<BuyItem> buyItemList, Integer orderId) {
		ConvertorServiceImpl buyItemToCartItem = new ConvertorServiceImpl();
		List<TrCartItem> trCartItemList = buyItemToCartItem.buyItemListToTrCartList(buyItemList);
		
		DivOrder divOrder = new DivOrder();
		Order order = orderDAO.findById(orderId);
		Integer addressId = order.getAddressID();
		Address address = addressDAO.findByID(addressId);
		divOrder.setOrderId(orderId);
		divOrder.setAddress(address.getAddress());
		divOrder.setConsignee(address.getPerson());
		divOrder.setDealTime(order.getBuyTime());
		int stats = order.getStats();
		if(stats == 1) {
			divOrder.setOrderStats("已付款");
		}else if(stats == 2) {
			divOrder.setOrderStats("已取消");
		}else if(stats == 0) { 
			divOrder.setOrderStats("未付款");
		}
		divOrder.setTel(address.getTel());
		Double totalPrice = 0.0;
		for(BuyItem buyItem: buyItemList){
			int num = buyItem.getBuyNum();
			double currentPrice = buyItem.getCurrentPrice();
			totalPrice += num * currentPrice;
		}
		divOrder.setTotalPrice(totalPrice);
		divOrder.setOrderItemList(trCartItemList);
		return divOrder;
	}

	@Override
	public DivOrder buyItemIDListAddToDivOrder(List<Integer> buyItemIDList, Integer orderId) {
		ConvertorServiceImpl buyItemToCartItem = new ConvertorServiceImpl();
		List<TrCartItem> trCartItemList = new ArrayList<TrCartItem>();
		Double totalPrice = 0.0;
		for(Integer buyItemId : buyItemIDList) {
			BuyItem buyItem = buyItemDAO.findByID(buyItemId);
			int num = buyItem.getBuyNum();
			double currentPrice = buyItem.getCurrentPrice();
			totalPrice += num * currentPrice;
			TrCartItem trCartItem = buyItemToCartItem.buyItemIDToTrCartItem(buyItemId);
			trCartItemList.add(trCartItem);
		}
		
		DivOrder divOrder = new DivOrder();
		Order order = orderDAO.findById(orderId);
		Integer addressId = order.getAddressID();
		Address address = addressDAO.findByID(addressId);
		divOrder.setOrderId(orderId);
		divOrder.setAddress(address.getAddress());
		divOrder.setConsignee(address.getPerson());
		divOrder.setDealTime(order.getBuyTime());
		int stats = order.getStats();
		if(stats == 1) {
			divOrder.setOrderStats("已付款");
		}else if(stats == 2) {
			divOrder.setOrderStats("已取消");
		}else if(stats == 0) { 
			divOrder.setOrderStats("未付款");
		}
		divOrder.setTel(address.getTel());
		divOrder.setTotalPrice(totalPrice);
		divOrder.setOrderItemList(trCartItemList);
		return divOrder;
	}

	public AddressDAO getAddressDAO() {
		return addressDAO;
	}

	public void setAddressDAO(AddressDAO addressDAO) {
		this.addressDAO = addressDAO;
	}

	public OrderDAO getOrderDAO() {
		return orderDAO;
	}

	public void setOrderDAO(OrderDAO orderDAO) {
		this.orderDAO = orderDAO;
	}

	public BuyItemDAO getBuyItemDAO() {
		return buyItemDAO;
	}

	public void setBuyItemDAO(BuyItemDAO buyItemDAO) {
		this.buyItemDAO = buyItemDAO;
	}

	
}
