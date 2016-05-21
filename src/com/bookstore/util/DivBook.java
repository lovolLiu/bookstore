package com.bookstore.util;
import java.sql.Timestamp;
import java.util.List;

public class DivBook {
	double bookPrice;
	String bookName;
	Integer bookID;
	Integer pictureID;
	String description;
	String URL;
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
	
}
