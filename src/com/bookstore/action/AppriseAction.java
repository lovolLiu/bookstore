package com.bookstore.action;

import java.util.List;
import java.util.Map;

import com.bookstore.domain.Apprise;
import com.bookstore.service.AppriseService;
import com.bookstore.service.ConvertorService;
import com.bookstore.util.LiApprise;
import com.opensymphony.xwork2.ActionContext;

/**
 * @author Chang Su
 * @description 评价添加Action实现
 * @modify
 * @modifyDate
 */
public class AppriseAction {
	AppriseService appriseService;
	ConvertorService convertorService;
	
	Integer userID;
	Integer bookID;
	Integer score;
	String content;
	String result;
	
	List<LiApprise> liAppriseList;
	
	public String addApprise(){
		Map session = ActionContext.getContext().getSession();
		Integer userID = (Integer) session.get("userID");
		appriseService.addApprise(userID, bookID, score, content);
		this.result = "success";
		return "success";
	}
	
	public String showAppriseList(){
		List<Apprise> appriseList = appriseService.showAppriseByBookID(bookID);
		liAppriseList = convertorService.appriseListToLiApprise(appriseList);
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



	public List<LiApprise> getLiAppriseList() {
		return liAppriseList;
	}



	public void setLiAppriseList(List<LiApprise> liAppriseList) {
		this.liAppriseList = liAppriseList;
	}

	public ConvertorService getConvertorService() {
		return convertorService;
	}

	public void setConvertorService(ConvertorService convertorService) {
		this.convertorService = convertorService;
	}
	
	
}
