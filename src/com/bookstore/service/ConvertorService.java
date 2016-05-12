package com.bookstore.service;

import java.util.List;

import com.bookstore.domain.BuyItem;
import com.bookstore.util.DivOrder;
import com.bookstore.util.TrCartItem;
import com.bookstore.util.DivBook;
import com.bookstore.domain.Book;
public interface ConvertorService {
	List<TrCartItem> buyItemListToTrCartList(List<BuyItem> buyItemList);
	TrCartItem buyItemToTrCartItem(BuyItem buyItem);
	TrCartItem buyItemIDToTrCartItem(Integer buyItemID);
	
	DivOrder buyItemListAddToDivOrder(List<BuyItem> buyItemList, Integer orderId);
	DivOrder buyItemIDListAddToDivOrder(List<Integer> buyItemIDList, Integer orderId);
	List<BuyItem> getBuyItemList(Integer orderID);
	
	List<DivBook> bookIDToDivBook(List<Book> bookList);
}
