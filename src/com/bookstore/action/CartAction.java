
package com.bookstore.action;

import java.util.List;
import java.util.Map;

import com.bookstore.domain.BuyItem;
import com.bookstore.service.CartService;
import com.bookstore.service.ConvertorService;
import com.bookstore.util.TrCartItem;
import com.opensymphony.xwork2.ActionContext;

/**
 * @author Zhiqi Yang
 * @description 购物车的列表，以及增删改     From: cart.sjp ---- To: cart.jsp
 * @modify
 * @modifyDate 
 */
public class CartAction {
	//From cart.jsp --deleteBuyItem()
	Integer buyItemID;
	Integer num;
	
	//To cart.jsp -- ordinary variable
	List<TrCartItem> trCartList;
	Double totalPrice;
	
	//To cart.jap -- json variable
	boolean isSuccess;
	
	//IOC Service
	CartService cartService;
	ConvertorService convertorService;
	
	
	/*in: userID
	* out: trCartList
	*      totalPrice -- should be canceled
	*/
	public String showBuyItemList(){    
//		Map session = ActionContext.getContext().getSession();
//		Integer userID = (Integer) session.get("userID");
		Integer userID = 1;
		
		List<BuyItem> buyItemList = cartService.getCartItemList(userID);
		trCartList = convertorService.buyItemListToTrCartList(buyItemList);
		totalPrice = 0.0;
		for(TrCartItem trCartItem: trCartList){
			totalPrice += trCartItem.getBuyItemPrice();
		}
		return "success";
	}
	
	public String deleteBuyItem(){
		
		Integer userID = 1;
		cartService.deleteCartItem(userID, buyItemID);
		isSuccess = true;
		return "success";
	}
	
	/*in:   buyItemID
	 *      num
	 * out: isSuccess
	*/
	public String updateBuyItem(){
		
		Integer userID = 1;
		cartService.changeNumOfCartItem(buyItemID, num);
		isSuccess = true;
		return "success";
	}

	//getter and setter
	public Integer getBuyItemID() {
		return buyItemID;
	}

	public void setBuyItemID(Integer buyItemID) {
		this.buyItemID = buyItemID;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public List<TrCartItem> getTrCartList() {
		return trCartList;
	}

	public void setTrCartList(List<TrCartItem> trCartList) {
		this.trCartList = trCartList;
	}

	public Double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public CartService getCartService() {
		return cartService;
	}

	public void setCartService(CartService cartService) {
		this.cartService = cartService;
	}

	public ConvertorService getConvertorService() {
		return convertorService;
	}

	public void setConvertorService(ConvertorService convertorService) {
		this.convertorService = convertorService;
	}
	
	
}
