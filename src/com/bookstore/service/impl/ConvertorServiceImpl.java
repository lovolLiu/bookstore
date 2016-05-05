package com.bookstore.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.bookstore.dao.BookDAO;
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
	
	public List<TrCartItem> buyItemListToTrCartList(List<BuyItem> buyItemList){
		List<TrCartItem> trCartItemList = new ArrayList<TrCartItem>();
		for(BuyItem buyItem : buyItemList){
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
			trCartItemList.add(trCartItem);
		}
		return trCartItemList;
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
	
	
}
