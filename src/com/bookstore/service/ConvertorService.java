package com.bookstore.service;

import java.util.List;

import com.bookstore.domain.Apprise;
import com.bookstore.domain.BuyItem;
import com.bookstore.util.DivOrder;
import com.bookstore.util.LiApprise;
import com.bookstore.util.TrCartItem;
import com.bookstore.util.DivBook;
import com.bookstore.domain.Book;
public interface ConvertorService {
	Double calculateTotalPrice(List<TrCartItem> trCartItemList);
	List<TrCartItem> buyItemListToTrCartList(List<BuyItem> buyItemList);
	List<TrCartItem> buyItemIDListToTrCartList(List<Integer> buyItemIDList);
	TrCartItem buyItemToTrCartItem(BuyItem buyItem);
	TrCartItem buyItemIDToTrCartItem(Integer buyItemID);
	DivOrder orderIDToDivOrder(Integer orderID);
	
	DivOrder buyItemListAddToDivOrder(List<BuyItem> buyItemList, Integer orderId);
	DivOrder buyItemIDListAddToDivOrder(List<Integer> buyItemIDList, Integer orderId);
	List<BuyItem> getBuyItemList(Integer orderID);
	
	List<DivBook> bookIDToDivBook(List<Book> bookList);
	
	List<LiApprise> appriseListToLiApprise(List<Apprise> appriseList); 
	LiApprise appriseIDToLiApprise(Integer appriseID);
	LiApprise appriseToLiApprise(Apprise apprise);
}
