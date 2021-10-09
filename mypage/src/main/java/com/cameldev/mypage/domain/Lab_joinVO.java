package com.cameldev.mypage.domain;

public class Lab_joinVO {

	private int memberno;
	private String lab;
	private String content;
	private String state;
	
	public int getMemberno() {
		return memberno;
	}
	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}
	public String getLab() {
		return lab;
	}
	public void setLab(String lab) {
		this.lab = lab;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	@Override
	public String toString() {
		return "Lab_joinVO [memberno=" + memberno + ", lab=" + lab + ", content=" + content + ", state=" + state + "]";
	}
}
