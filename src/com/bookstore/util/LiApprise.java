package com.bookstore.util;

import java.sql.Timestamp;

public class LiApprise {
	String userName;
	Integer userID;
	Integer appriseID;
	String text;
	Integer score;
	Timestamp appriseTime;
	Integer bookID;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Integer getUserID() {
		return userID;
	}
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	public Integer getAppriseID() {
		return appriseID;
	}
	public void setAppriseID(Integer appriseID) {
		this.appriseID = appriseID;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public Integer getScore() {
		return score;
	}
	public void setScore(Integer score) {
		this.score = score;
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
	
	
}
