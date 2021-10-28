package com.cameldev.mypage.domain;

public class StarVO {
	
	private int memberno;
	private String n_type;
	private String title;
	private String name;
	private String datetime;
	private String noticeno;
	
	
	public String getNoticeno() {
		return noticeno;
	}
	public void setNoticeno(String noticeno) {
		this.noticeno = noticeno;
	}
	public int getMemberno() {
		return memberno;
	}
	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}
	public String getN_type() {
		return n_type;
	}
	public void setN_type(String n_type) {
		this.n_type = n_type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDatetime() {
		return datetime;
	}
	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}
	
	
	@Override
	public String toString() {
		return "StarVO [memberno=" + memberno + ", n_type=" + n_type + ", title=" + title + ", name=" + name
				+ ", datetime=" + datetime + ", noticeno=" + noticeno + "]";
	}
	
	

	
}
