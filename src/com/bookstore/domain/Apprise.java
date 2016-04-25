package com.bookstore.domain;

import java.sql.Timestamp;

public class Apprise {
	private Integer appriseID;
	private Integer score;
	private String text;
	private Timestamp appriseTime;
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
}
