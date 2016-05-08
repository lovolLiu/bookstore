package com.bookstore.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.bookstore.dao.BookDAO;
import com.bookstore.dao.BuyItemDAO;
import com.bookstore.dao.PictureDAO;
import com.bookstore.domain.Book;
import com.bookstore.domain.BuyItem;
import com.bookstore.domain.Picture;
import com.bookstore.service.ConvertorService;
import com.bookstore.util.TrCartItem;

/**
 * @author Zhiqi Yang
 * @description 一些常用的jsp与action之间的数据结构转换函数
 * @modify
 * @modifyDate 
 */
public class ConvertorServiceImpl implements ConvertorService{
	
	//IOC Dao
	BookDAO bookDAO;
	PictureDAO pictureDAO;
	BuyItemDAO buyItemDAO;
	
	public List<TrCartItem> buyItemListToTrCartList(List<BuyItem> buyItemList){
		List<TrCartItem> trCartItemList = new ArrayList<TrCartItem>();
		for(BuyItem buyItem : buyItemList){
			trCartItemList.add(buyItemToTrCartItem(buyItem));
		}
		return trCartItemList;
	}
	
	
	@Override
	public TrCartItem buyItemToTrCartItem(BuyItem buyItem) {
		TrCartItem trCartItem = new TrCartItem();
		Integer bookID = buyItem.getBookID();
		Book book = bookDAO.findByID(bookID);
		trCartItem.setBookName(book.getBookName());
		trCartItem.setBuyItemID(buyItem.getBuyItemID());
		List<Picture> pictureList = pictureDAO.findByBookID(book.getBookID());
		String pictureUrl;
		if(pictureList.isEmpty()) 
			pictureUrl = "not have pictrue";
		else
			pictureUrl = pictureList.get(0).getUrl();
		trCartItem.setImageUrl(pictureUrl);
		trCartItem.setNum(buyItem.getBuyNum());
		trCartItem.setPrice(buyItem.getCurrentPrice());
		trCartItem.setBuyItemPrice(trCartItem.getPrice() * trCartItem.getNum());
		return trCartItem;
	}

	@Override
	public TrCartItem buyItemIDToTrCartItem(Integer buyItemID) {
		BuyItem buyItem = buyItemDAO.findByID(buyItemID);
		return buyItemToTrCartItem(buyItem);
	}
	
	public BookDAO getBookDAO() {
		return bookDAO;
	}

	public void setBookDAO(BookDAO bookDAO) {
		this.bookDAO = bookDAO;
	}

	public PictureDAO getPictureDAO() {
		return pictureDAO;
	}

	public void setPictureDAO(PictureDAO pictureDAO) {
		this.pictureDAO = pictureDAO;
	}


	public BuyItemDAO getBuyItemDAO() {
		return buyItemDAO;
	}


	public void setBuyItemDAO(BuyItemDAO buyItemDAO) {
		this.buyItemDAO = buyItemDAO;
	}





	
	
}
