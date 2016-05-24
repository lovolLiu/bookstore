package com.bookstore.util;

/**
 * @author Zhiqi Yang
 * @description 购物车列表的tr的数据封装对象. -------别看此对象里面有Cart，我们的Order的每一行其实用的也是这个(#_#)-----
 * @modifyDate 
 */
public class TrCartItem {
	
	Integer buyItemID;
	Integer bookID;
	String imageUrl;
	String bookName;
	String authorName;
	String price;
	String buyItemPrice;
	Integer num;
	
	public Integer getBuyItemID() {
		return buyItemID;
	}
	public void setBuyItemID(Integer buyItemID) {
		this.buyItemID = buyItemID;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}

	public String getAuthorName() {
		return authorName;
	}
	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
	public Integer getBookID() {
		return bookID;
	}
	public void setBookID(Integer bookID) {
		this.bookID = bookID;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getBuyItemPrice() {
		return buyItemPrice;
	}
	public void setBuyItemPrice(String buyItemPrice) {
		this.buyItemPrice = buyItemPrice;
	}

	
	
	
}
