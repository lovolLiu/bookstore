package com.bookstore.service;

import java.util.List;

import com.bookstore.domain.BuyItem;
import com.bookstore.util.TrCartItem;

public interface ConvertorService {
	List<TrCartItem> buyItemListToTrCartList(List<BuyItem> buyItemList);
	TrCartItem buyItemToTrCartItem(BuyItem buyItem);
	TrCartItem buyItemIDToTrCartItem(Integer buyItemID);
}
