package com.bookstore.util;
import java.sql.Timestamp;
import java.util.List;

public class DivBook {
	// book 类
	Integer bookID;
	String bookName;
	String author;
	double bookPrice;
	Integer discount;
	String description;
	Integer restNum;
	Integer totalSell;
	String size;
	Integer pageNum;
	
	Timestamp publisherTime;
	
	//picture类
	Integer pictureID;
	String URL;
	
	//publisher  类
	Integer publisherID;
	String publisherName;
	
	public double getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(double bookPrice) {
		this.bookPrice = bookPrice;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	
	public Integer getPictureID() {
		return pictureID;
	}
	public void setPictureID(Integer pictureID) {
		this.pictureID = pictureID;
	}
	public String getURL() {
		return URL;
	}
	public void setURL(String uRL) {
		URL = uRL;
	}
	public Integer getBookID() {
		return bookID;
	}
	public void setBookID(Integer bookID) {
		this.bookID = bookID;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
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
	public Integer getDiscount() {
		return discount;
	}
	public void setDiscount(Integer discount) {
		this.discount = discount;
	}
	public Timestamp getPublisherTime() {
		return publisherTime;
	}
	public void setPublisherTime(Timestamp publisherTime) {
		this.publisherTime = publisherTime;
	}
	public Integer getPublisherID() {
		return publisherID;
	}
	public void setPublisherID(Integer publisherID) {
		this.publisherID = publisherID;
	}
	public String getPublisherName() {
		return publisherName;
	}
	public void setPublisherName(String publisherName) {
		this.publisherName = publisherName;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public Integer getPageNum() {
		return pageNum;
	}
	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}
	
}
