package com.cameldev.mypage.domain;

import java.sql.Date;

public class ThesisDTO {
	private String thesisno;
	private int memberno;
	private String title;
	private Date datetime;
	private String content;
	public String getThesisno() {
		return thesisno;
	}
	public void setThesisno(String thesisno) {
		this.thesisno = thesisno;
	}
	public int getMemberno() {
		return memberno;
	}
	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getDatetime() {
		return datetime;
	}
	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
	

}
