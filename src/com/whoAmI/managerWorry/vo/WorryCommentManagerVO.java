package com.whoAmI.managerWorry.vo;

public class WorryCommentManagerVO {

	private int worryCommentManagerNumber;
	private String worryCommentManagerContent;
	private String managerNumberDate;
	private int worryNumber;
	private int userNumberExpert;
	
	public WorryCommentManagerVO() {;}
	
	public int getWorryCommentManagerNumber() {
		return worryCommentManagerNumber;
	}
	public void setWorryCommentManagerNumber(int worryCommentManagerNumber) {
		this.worryCommentManagerNumber = worryCommentManagerNumber;
	}
	public String getWorryCommentManagerContent() {
		return worryCommentManagerContent;
	}
	public void setWorryCommentManagerContent(String worryCommentManagerContent) {
		this.worryCommentManagerContent = worryCommentManagerContent;
	}
	public String getManagerNumberDate() {
		return managerNumberDate;
	}
	public void setManagerNumberDate(String managerNumberDate) {
		this.managerNumberDate = managerNumberDate;
	}
	public int getWorryNumber() {
		return worryNumber;
	}
	public void setWorryNumber(int worryNumber) {
		this.worryNumber = worryNumber;
	}

	public int getUserNumberExpert() {
		return userNumberExpert;
	}

	public void setUserNumberExpert(int userNumberExpert) {
		this.userNumberExpert = userNumberExpert;
	}

	
	
}
