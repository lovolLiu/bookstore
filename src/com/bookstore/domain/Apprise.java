package com.bookstore.domain;

import java.sql.Timestamp;

public class Apprise {
	private Integer appriseID;
	private Integer score;
	private String text;
	private Timestamp appriseTime;
	private Integer bookID;
	private Integer userID;
	
	public Integer getAppriseID() {
		return appriseID;
	}
	public void setAppriseID(Integer appriseID) {
		this.appriseID = appriseID;
	}
	public Integer getScore() {
		return score;
	}
	public void setScore(Integer score) {
		this.score = score;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public Timestamp getAppriseTime() {
		return appriseTime;
	}
	public void setAppriseTime(Timestamp appriseTime) {
		this.appriseTime = appriseTime;
	}
	public Integer getBookID() {
		return bookID;
	}
	public void setBookID(Integer bookID) {
		this.bookID = bookID;
	}
	public Integer getUserID() {
		return userID;
	}
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	
}
