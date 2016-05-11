package com.bookstore.service;

import java.util.List;

import com.bookstore.domain.BuyItem;
import com.bookstore.util.DivOrder;
import com.bookstore.util.TrCartItem;

public interface ConvertorService {
	List<TrCartItem> buyItemListToTrCartList(List<BuyItem> buyItemList);
	TrCartItem buyItemToTrCartItem(BuyItem buyItem);
	TrCartItem buyItemIDToTrCartItem(Integer buyItemID);
	
	DivOrder buyItemListAddToDivOrder(List<BuyItem> buyItemList, Integer orderId);
	DivOrder buyItemIDListAddToDivOrder(List<Integer> buyItemIDList, Integer orderId);
	List<BuyItem> getBuyItemList(Integer orderID);
}
