package com.bookstore.domain;

public class Picture {
	private Integer pictureID;
	private String url;
	
	private Integer bookID;

	public Integer getPictureID() {
		return pictureID;
	}

	public void setPictureID(Integer pictureID) {
		this.pictureID = pictureID;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getBookID() {
		return bookID;
	}

	public void setBookID(Integer bookID) {
		this.bookID = bookID;
	}
	

	
	
}
