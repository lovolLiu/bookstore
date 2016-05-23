package com.bookstore.action;

import com.bookstore.service.AppriseService;

/**
 * @author Chang Su
 * @description 评价添加Action实现
 * @modify
 * @modifyDate
 */
public class AppriseAction {
	AppriseService appriseService;
	
	Integer userID = 1;
	Integer bookID;
	Integer score;
	String content;
	String result;
	
	public String addApprise(){
		appriseService.addApprise(userID, bookID, score, content);
		this.result = "success";
		return "success";
	}

	public AppriseService getAppriseService() {
		return appriseService;
	}

	public void setAppriseService(AppriseService appriseService) {
		this.appriseService = appriseService;
	}

	public Integer getUserID() {
		return userID;
	}

	public void setUserID(Integer userID) {
		this.userID = userID;
	}

	public Integer getBookID() {
		return bookID;
	}

	public void setBookID(Integer bookID) {
		this.bookID = bookID;
	}

	public Integer getScore() {
		return score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	
}
