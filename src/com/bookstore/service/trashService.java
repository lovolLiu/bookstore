package com.bookstore.service;

import java.util.List;

import com.bookstore.domain.BuyItem;
import com.bookstore.util.DivOrder;

public interface trashService {
	DivOrder buyItemListAddToDivOrder(List<BuyItem> buyItemList, Integer orderId);
	DivOrder buyItemIDListAddToDivOrder(List<Integer> buyItemIDList, Integer orderId);
	List<BuyItem> getBuyItemList(Integer orderID);
}
