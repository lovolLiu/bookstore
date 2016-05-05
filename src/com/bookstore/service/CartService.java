package com.bookstore.service;
import java.util.List;
import com.bookstore.domain.BuyItem;

public interface CartService {
	boolean addCartItem(int userID,int buyItemID);
	boolean changeNumOfCartItem(int buyItemID, int num);
	List<BuyItem> getCartItemList(int UserID);
	boolean deleteCartItem(int userID,int buyItemID);
}
