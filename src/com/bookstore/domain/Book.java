package com.bookstore.domain;

import java.sql.Timestamp;

public class Book {
	private Integer bookID;
	private String bookName;
	private String author;
	private double price;
	private String description;
	private Integer discount;
	private Timestamp publishTime;
	private Integer clickCount;
	private Integer restNum;
	private Integer totalSell;
	private Integer pageNum;
	private Integer publisherID;
	
	public Integer getBookID() {
		return bookID;
	}
	public void setBookID(Integer bookID) {
		this.bookID = bookID;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Integer getDiscount() {
		return discount;
	}
	public void setDiscount(Integer discount) {
		this.discount = discount;
	}
	public Timestamp getPublishTime() {
		return publishTime;
	}
	public void setPublishTime(Timestamp publishTime) {
		this.publishTime = publishTime;
	}
	public Integer getClickCount() {
		return clickCount;
	}
	public void setClickCount(Integer clickCount) {
		this.clickCount = clickCount;
	}
	public Integer getRestNum() {
		return restNum;
	}
	public void setRestNum(Integer restNum) {
		this.restNum = restNum;
	}
	public Integer getTotalSell() {
		return totalSell;
	}
	public void setTotalSell(Integer totalSell) {
		this.totalSell = totalSell;
	}
	public Integer getPageNum() {
		return pageNum;
	}
	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}
	
}
